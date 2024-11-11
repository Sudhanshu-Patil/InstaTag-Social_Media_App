const express = require('express');
const app = express();
const cookieParser = require('cookie-parser');
const jwt = require('jsonwebtoken');
const oracledb = require('oracledb');
var cors = require('cors');


app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.set('view engine', 'ejs');
app.use(cookieParser());

//set cors
app.use(cors({
  origin: 'http://localhost:5173',  
  credentials: true,               
}));
const config = {
    user: "system",            
    password: "123",           
    connectString: "localhost:1521/XE"   
  };
  
let connection;

async function main() {
  try {
    connection = await oracledb.getConnection(config);
    console.log('Connection to the database was successful!');
  } catch (err) {
    console.log('Error occurred while connecting to the database: ', err);
    throw err;
  }
}
main();


// isloggedin middleware that checks if the user is logged in
function isLoggedin(req, res, next) {
  if (!req.cookies.token) {
    res.send('You are not logged in');
  } 
  else {
    try {
      let data = jwt.verify(req.cookies.token, 'secretkey');
      req.user = data;
      next(); 
    } catch (error) {
      res.send('Invalid or expired token');
    }
  }
}

app.get('/', (req, res) => {

    res.render('index');
  });

// Signup route
app.post('/signup', async (req, res) => {
    let { user_name, email, bio, password } = req.body; 


    if (!user_name || !email || !password) {
        return res.status(400).send('Missing required fields');
    }
  
    console.log('Received data:', { user_name, email, bio, password });
  
    const bindVars = {
      name_in: user_name,
      email_in: email,
      bio_in: bio,
      password_in: password,
      user_id_out: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT },
    };
  
    try {
      const result = await connection.execute(
        `BEGIN create_new_user(:name_in, :email_in, :bio_in, :password_in, :user_id_out); END;`,
        bindVars
      );
  
      console.log('User Created with User ID:', result.outBinds.user_id_out);
      console.log(result.outBinds.user_id_out);
      res.cookie('user_id', result.outBinds.user_id_out);
      res.send({ message: 'User created', userId: result.outBinds.user_id_out });
    } catch (err) {
      console.error('Error occurred during signup:', err);
      res.status(500).send('Error creating user');
    }
  });
  

// Login route
app.post('/login', async (req, res) => {
    let { email, password } = req.body;
  
    if (!email || !password) {
      return res.status(400).send('Missing required fields');
    }
  
    console.log('Received data:', { email, password });
  
    const bindVars = {
      email_in: email,
      password_in: password,
      user_id_out: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT },
    };
  
    try {
      const result = await connection.execute(
        `BEGIN create_new_login(:email_in, :password_in, :user_id_out); END;`,
        bindVars
      );
  
      console.log('User Logged in with User ID:', result.outBinds.user_id_out);
      console.log(result.outBinds.user_id_out);
      res.cookie('user_id', result.outBinds.user_id_out);
      console.log('User logged in'+result.outBinds.user_id_out);
      res.send({ message: 'success', userId: result.outBinds.user_id_out });

    } 
    catch (err) 
    {
      console.error('Error occurred during login:', err);
      res.status(500).send('Error logging in user');
    }
  });

//get user feed based on followers
app.get('/userfeed', async (req, res) => {
    const userId = req.cookies.user_id || req.query.userId;

    if (!userId) {
        return res.status(401).send("Unauthorized: No user_id cookie found");
    }

    console.log("Fetching feed for user:", userId);

    try {
        const result = await connection.execute(
            `
            BEGIN
                show_user_feed(:user_id_in, :posts_cursor);
            END;
            `,
            {
                user_id_in: userId,
                posts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
            }
        );

        // Fetch rows from the cursor
        const resultSet = result.outBinds.posts_cursor;
        const posts = [];
        let row;

        while ((row = await resultSet.getRow())) {
            posts.push({
                post_id: row[0],
                user_id: row[1],
                caption: row[2],
                created_at: row[3],
                photo_url: row[4] || null,
                video_url: row[5] || null,
                likes_count: row[6],
                user_name: row[7],
                user_profile_url: row[8]  
            });
        }

        await resultSet.close();

        // console.log("Found posts:", posts);

        res.setHeader('Content-Type', 'application/json');


        if (posts.length === 0) {
            // res.render('feed', { posts });
            res.json({ message: "No posts found" });

        } else {
            // res.render('feed', { posts });
            res.send(posts);
        }

    } catch (err) {
        console.error("Error fetching user feed:", err);
        res.status(500).send("Error fetching user feed: " + err.message);
    }
  
});


//get user feed based on hashtags (pending)
app.get('/userfeedByHashtags', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching feed for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              retrieve_posts_by_followed_hashtags(:user_id_in,:posts_cursor);
          END;
          `,
          {
              user_id_in: userId,
              posts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      // Fetch rows from the cursor
      const resultSet = result.outBinds.posts_cursor;
      const posts = [];
      let row;

      while ((row = await resultSet.getRow())) {
          posts.push({
              post_id: row[0],
              user_id: row[1],
              caption: row[2],
              created_at: row[3],
              photo_url: row[4] || null,
              video_url: row[5] || null,
              likes_count: row[6],
              user_name: row[7],
              user_profile_url: row[8]  
          });
      }

      connection.commit();

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (posts.length === 0) {
          //jsoinfy
          res.json({ message: "No posts found" });
      } else {
          res.send(posts);
      }

  } catch (err) {
      console.error("Error fetching user feed:", err);
      res.status(500).send("Error fetching user feed: " + err.message);
  }

});


app.post('/postdetails', async (req, res) => {

    const postId = req.body.post_id;
    console.log(postId);
    
    if (!postId) {
        return res.send("Missing required fields");
    }
    
    console.log("Fetching post details for post:", postId);
    
    try {
        const result = await connection.execute(
            `
            BEGIN
                show_post_details(:post_id_in, :post_cursor);
            END;
            `,
            {
                post_id_in: postId,
                post_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
            }
        );
    
        const resultSet = result.outBinds.post_cursor;
        const postDetails = [];
        let row;
    
        while ((row = await resultSet.getRow())) {
            postDetails.push({
                post_id: row[0],
                user_id: row[1],
                caption: row[2],
                created_at: row[3],
                photo_url: row[4] || null,
                video_url: row[5] || null,
                likes_count: row[6],
                user_name: row[7],
                user_profile_url: row[8]  
            });
        }
    
        await resultSet.close();
    
        res.setHeader('Content-Type', 'application/json');
    
        if (postDetails.length === 0) {
            console.log("No post details found");
            return res.json({ message: "No post details found" }); 
    
        } else {
            res.send(postDetails);
        }
    
    } catch (err) {
        console.error("Error fetching post details:", err);
        res.status(500).send("Error fetching post details: " + err.message);
    }

});


//get all comments for a post with commentlikes and user info who commented 
app.post('/commentspostdisplay', async (req, res) => {
  const postId = req.body.post_id;

  if (!postId) {
      return res.status(400).send("Missing required fields");
  }

  console.log("Fetching comments for post:", postId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_comments_for_post (:post_id_in, :comments_cursor);
          END;
          `,
          {
              post_id_in: postId,
              comments_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      // Fetch rows from the cursor
      const resultSet = result.outBinds.comments_cursor;
      const comments = [];
      let row;

      while ((row = await resultSet.getRow())) {
          comments.push({
              comment_id: row[0],
              comment_text: row[1],
              created_at: row[2],
              user_id: row[3],
              user_name: row[4],
              user_profile_url: row[5],
              comment_likes_count: row[6]            
              
          });
      }

      await resultSet.close();


      res.setHeader('Content-Type', 'application/json');

      if (comments.length === 0) {
          res.send("No comments found");

      } else {
          res.send(comments);
      }

  } catch (err) {
      console.error("Error fetching comments for post:", err);
      res.status(500).send("Error fetching comments for post: " + err.message);
  }
}
);

//like a post 
app.post('/likepost', async (req, res) => {

  const postId = req.body.post_id;
  const currUser = req.cookies.user_id || req.query.userId;

  console.log( "user is ", currUser);
  console.log( "post is ", postId);

  if (!postId || !currUser) {
      return res.status(400).send("Missing required fields");
  }

  console.log("Liking post:", postId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              like_post(:post_id_in, :user_id_in);
          END;
          `,
          {
              post_id_in: postId,
              user_id_in: currUser 
          }
      );


      connection.commit();

      console.log("Post liked");
      
      res.send({ message: 'success' }).status(200);
  } catch (err) {
      console.error("Error liking post:", err);
      res.status(500).send("Error liking post: " + err.message);
  }

});

app.post('/unlikepost', async (req, res) => {
    
      const postId = req.body.post_id;
      const currUser = req.cookies.user_id || req.query.userId;
    
    //   console.log( "user is ", currUser);
    //   console.log( "post is ", postId);
    
      if (!postId || !currUser) {
        return res.status(400).send("Missing required fields");
      }
    
      console.log("Unliking post:", postId);
    
      try {
        const result = await connection.execute(
             `
             BEGIN
                  unlike_post(:post_id_in, :user_id_in);
             END;
             `,
             {
                  post_id_in: postId,
                  user_id_in: currUser 
             }
        );
    
        connection.commit();
    
        console.log("Post unliked");
        
        res.send({ message: 'success' }).status(200);
      } catch (err) {
        console.error("Error unliking post:", err);
        res.status(500).send("Error unliking post: " + err.message);
      }
});

app.post('/likecomment', async (req, res) => {
  
    const commentId = req.body.comment_id;
    const currUser = req.cookies.user_id || req.query.userId;
  
    console.log( "user is ", currUser);
    console.log( "comment is ", commentId);
  
    if (!commentId || !currUser) {
        return res.status(400).send("Missing required fields");
    }
  
    console.log("Liking comment:", commentId);
  
    try {
        const result = await connection.execute(
            `
            BEGIN
                like_comment(:user_id_in,:comment_id_in);
            END;
            `,
            {
              user_id_in: currUser ,
              comment_id_in: commentId                
            }
        );

        connection.commit();

        console.log("Comment liked");

        res.send({ message: 'success' }).status(200);
  
    } catch (err) {
        console.error("Error liking comment:", err);
        res.status(500).send("Error liking comment: " + err.message);
    }
});

//get all hashtags for a post 
app.post('/retrieveHashtagsOfPost', async (req, res) => {
  const postId = req.body.post_id;

  if (!postId) {
      return res.status(400).send("Missing required fields");
  }

  console.log("Fetching hashtags for post:", postId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_hashtags_for_post(:post_id_in, :hashtags_cursor);
          END;
          `,
          {
              post_id_in: postId,
              hashtags_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.hashtags_cursor;
      const hashtags = [];
      let row;

      while ((row = await resultSet.getRow())) {
          hashtags.push({
              hashtag_id: row[0],
              hashtag_name: row[1]
          });
      }
      
      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (hashtags.length === 0) {
          res.send("No hashtags found");

      } else {
          res.send(hashtags);
      }

  } catch (err) {
      console.error("Error fetching hashtags for post:", err);
      res.status(500).send("Error fetching hashtags for post: " + err.message);
  }
});

app.post('/addComment', async (req, res) => {
    const userId = req.cookies.user_id || req.query.userId;
    const {postId,commentText} = req.body;
  
    if (!userId || !postId || !commentText) {
        return res.status(400).send("Missing required fields");
    }
  
    console.log("Adding comment for post:", postId);
  
    try {
        const result = await connection.execute(
            `
            BEGIN
                add_comment_to_post(:post_id_in, :user_id_in, :comment_text_in);
            END;
            `,
            {
                post_id_in: postId,
                user_id_in: userId,
                comment_text_in: commentText
            }
        );
  
        connection.commit();
  
        console.log("Comment added");
  
        res.send({ message: 'success' }).status(200);
    } catch (err) {
        console.error("Error adding comment:", err);
        res.status(500).send("Error adding comment: " + err.message);
    }
  });



//PROFILE PAGE ROUTES
//GET BASIC USER INFO LIKE {user_id,username,profile_photo_url,bio,created_at,email}
app.get('/getUserInfo', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(400).send("Missing required fields");
  }

  console.log("Fetching user info for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_info(:user_id_in, :user_info_cursor);
          END;
          `,
          {
              user_id_in: userId,
              user_info_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.user_info_cursor;
      const userInfo = [];
      let row;

      while ((row = await resultSet.getRow())) {
          userInfo.push({
              user_id: row[0],
              user_name: row[1],
              profile_photo_url: row[2],
              bio: row[3],
              created_at: row[4],
              email: row[5]
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (userInfo.length === 0) {
          res.send("No user info found");

      } else {
          res.send(userInfo);
      }

  } catch (err) {
      console.error("Error fetching user info:", err);
      res.status(500).send("Error fetching user info: " + err.message);
  }
 
});

//GET USER POSTS
app.get('/userposts', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching posts for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_posts(:user_id_in, :posts_cursor);
          END;
          `,
          {
              user_id_in: userId,
              posts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.posts_cursor;
      const posts = [];
      let row;

      while ((row = await resultSet.getRow())) {
          posts.push({
              post_id: row[0],
              user_id: row[1],
              caption: row[2],
              created_at: row[3],
              photo_url: row[4] || null,
              video_url: row[5] || null,
              likes_count: row[6],
              user_name: row[7],
              user_profile_url: row[8]  
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (posts.length === 0) {
          res.send("No posts found");

      } else {
          res.send(posts);
      }

  } catch (err) {
      console.error("Error fetching user posts:", err);
      res.status(500).send("Error fetching user posts: " + err.message);
  }
});

//show user his followers
app.get('/showFollowers', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching followers for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_followers(:user_id_in, :followers_cursor);
          END;
          `,
          {
              user_id_in: userId,
              followers_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.followers_cursor;
      const followers = [];
      let row;

      while ((row = await resultSet.getRow())) {
          followers.push({
              follower_id: row[0],
              username: row[1],
              profile_photo_url: row[2],
              created_at: row[3],
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (followers.length === 0) {
          res.send("No followers found");

      } else {
          res.send(followers);
      }

  } catch (err) {
      console.error("Error fetching followers:", err);
      res.status(500).send("Error fetching followers: " + err.message);
  }

});

//show user his following
app.get('/showFollowees', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching followees for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_followees(:user_id_in, :followees_cursor);
          END;
          `,
          {
              user_id_in: userId,
              followees_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.followees_cursor;
      const followees = [];
      let row;

      while ((row = await resultSet.getRow())) {
          followees.push({
              followee_id: row[0],
              username: row[1],
              profile_photo_url: row[2],
              created_at: row[3],
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (followees.length === 0) {
          res.send("No followees found");

      } else {
          res.send(followees);
      }

  } catch (err) {
      console.error("Error fetching followees:", err);
      res.status(500).send("Error fetching followees: " + err.message);
  }
});


//show user his liked posts
app.post('/showUserLikedPosts', async (req, res) => 
{
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching liked posts for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_liked_posts(:user_id_in, :likedposts_cursor);
          END;
          `,
          {
              user_id_in: userId,
              likedposts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.likedposts_cursor;
      const likedPosts = [];
      let row;

      while ((row = await resultSet.getRow())) {
          likedPosts.push({
              post_id: row[0],
              caption: row[1],
              created_at: row[2],
              photo_url: row[3] || null,
              video_url: row[4] || null,
              likes_count: row[5],
              user_name: row[6],
              user_profile_url: row[7]

          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (likedPosts.length === 0) {
          res.send("No liked posts found");

      } else {
          res.send(likedPosts);
      }

  } catch (err) {
      console.error("Error fetching liked posts:", err);
      res.status(500).send("Error fetching liked posts: " + err.message);
  }
});

app.get('/followedHashtags', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching followed hashtags for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_followed_hashtags(:user_id_in, :hashtag_cursor);
          END;
          `,
          {
              user_id_in: userId,
              hashtag_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.hashtag_cursor;
      const hashtags = [];
      let row;

      while ((row = await resultSet.getRow())) {
          hashtags.push({
              hashtag_id: row[0],
              hashtag_name: row[1],
              created_at: row[2]
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (hashtags.length === 0) {
          res.send("No hashtags found");

      } else {
          res.send(hashtags);
      }

  } catch (err) {
      console.error("Error fetching followed hashtags:", err);
      res.status(500).send("Error fetching followed hashtags: " + err.message);
  }
});

app.post('/newPost',async (req,res)=>{
    const userId = req.cookies.user_id || req.query.userId;
    const {caption,photoUrl,videoUrl,hashtags,location} = req.body;
    console.log("Fetching post for user:", userId);
  
    try {
        const result = await connection.execute(
            `
            BEGIN
                create_new_post(:user_id_in, :caption_in, :postid_out);
            END;
            `,
            {
                user_id_in: userId,
                caption_in: caption,
                postid_out: { type: oracledb.NUMBER, dir: oracledb.BIND_OUT }
            }
        );
  
        const postId = result.outBinds.postid_out;
      
        if (photoUrl) {
            await connection.execute(
                `
                BEGIN
                    add_photo_to_post(:post_id_in, :photo_url_in);
                END;
                `,
                {
                    post_id_in: postId,
                    photo_url_in: photoUrl
                }
            );
        }
  
        if (videoUrl) {
            await connection.execute(
                `
                BEGIN
                    add_video_to_post(:post_id_in, :video_url_in);
                END;
                `,
                {
                    post_id_in: postId,
                    video_url_in: videoUrl
                }
            );
        }
  
        console.log("Post created with post ID:", postId);
  
        // Insert hashtags for the post
        for (let i = 0; i < hashtags.length; i++) {
            await connection.execute(
                `
                BEGIN
                    add_hashtag_to_post(:post_id_in, :hashtag_name_in);
                END;
                `,
                {
                    post_id_in: postId,
                    hashtag_name_in: hashtags[i]
                }
            );
        }
  
        // Insert location for the post
        if (location) {
            await connection.execute(
                `
                BEGIN
                    add_location_to_post(:post_id_in, :location_in);
                END;
                `,
                {
                    post_id_in: postId,
                    location_in: location
                }
            );
        }
  
        connection.commit();
  
        res.send({ message: 'success', postId }).status(200);
    } catch (err) {
        console.error("Error creating post:", err);
        res.status(500).send("Error creating post: " + err.message);
    }
  
  });
  
//EXPLORE USERS PAGE

//get all users who are not followed by the user(pending)
app.get('/exploreusers',async (req,res)=>{
    const userId = req.cookies.user_id || req.query.userId;
  
    if (!userId) {
        return res.status(401).send("Unauthorized: No user_id cookie found");
    }
  
    console.log("Fetching users for user:", userId);
  
    try {
        const result = await connection.execute(
            `
            BEGIN
                show_user_not_followed_users(:user_id_in, :users_cursor);
            END;
            `,
            {
                user_id_in: userId,
                users_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
            }
        );
  
        const resultSet = result.outBinds.users_cursor;
        const users = [];
        let row;
  
        while ((row = await resultSet.getRow())) {
            users.push({
                user_id: row[0],
                username: row[1],
                profile_photo_url: row[2],
                created_at: row[3]
            });
        }
  
        await resultSet.close();
  
        res.setHeader('Content-Type', 'application/json');
  
        if (users.length === 0) {
            res.send("No users found");
  
        } else {
            res.send(users);
        }
  
    } catch (err) {
        console.error("Error fetching users for user:", err);
        res.status(500).send("Error fetching users for user: " + err.message);
    }
  
  });


// EXPLORE HASHTAGS PAGE
app.get('/explorehashtags', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;

  if (!userId) {
      return res.status(401).send("Unauthorized: No user_id cookie found");
  }

  console.log("Fetching hashtags for user:", userId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              show_user_not_followed_hashtags(:user_id_in, :hashtags_cursor);
          END;
          `,
          {
              user_id_in: userId,
              hashtags_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
          }
      );

      const resultSet = result.outBinds.hashtags_cursor;
      const hashtags = [];
      let row;

      while ((row = await resultSet.getRow())) {
          hashtags.push({
              hashtag_id: row[0],
              hashtag_name: row[1],
              created_at: row[2]
          });
      }

      await resultSet.close();

      res.setHeader('Content-Type', 'application/json');

      if (hashtags.length === 0) {
          res.send("No hashtags found");

      } else {
          res.send(hashtags);
      }

  } catch (err) {
      console.error("Error fetching hashtags for user:", err);
      res.status(500).send("Error fetching hashtags for user: " + err.message);
  }
});


app.post('/followHashtag', async (req, res) => {
  const userId = req.cookies.user_id || req.query.userId;
  const {hashtagId} = req.body;

  if (!userId || !hashtagId) {
      return res.status(400).send("Missing required fields");
  }

  console.log("Following hashtag:", hashtagId);

  try {
      const result = await connection.execute(
          `
          BEGIN
              follow_hashtag(:user_id_in, :hashtag_id_in);
          END;
          `,
          {
              user_id_in: userId,
              hashtag_id_in: hashtagId
          }
      );

      connection.commit();

      console.log("Hashtag followed");

      res.send({ message: 'success' }).status(200);
  } catch (err) {
      console.error("Error following hashtag:", err);
      res.status(500).send("Error following hashtag: " + err.message);
  }
});

app.post('/viewpostsofahashtag', async (req, res) => {  
    const {hashtagId} = req.body;
    
    if ( !hashtagId) {
        return res.status(400).send("Missing required fields");
    }
    
    console.log("Viewing posts for hashtag:", hashtagId);

    try {
        const result = await connection.execute(
            `
            BEGIN
                show_posts_for_hashtag(:hashtag_id_in, :posts_cursor);
            END;
            `,
            {
                hashtag_id_in: hashtagId,
                posts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
            }
        );
    
        const resultSet = result.outBinds.posts_cursor;
        const posts = [];
        let row;
    
        while ((row = await resultSet.getRow())) {
            posts.push({
                post_id: row[0],
                user_id: row[1],
                caption: row[2],
                created_at: row[3],
                photo_url: row[4] || null,
                video_url: row[5] || null,
                likes_count: row[6],
                user_name: row[7],
                user_profile_url: row[8]  
            });
        }
    
        await resultSet.close();
    
        res.setHeader('Content-Type', 'application/json');
    
        if (posts.length === 0) {
            //jsoinify
            res.send(json.stringify({ message: "No posts found" }));    
    
        } else {
            res.send(posts);
        }
    
    } catch (err) {
        console.error("Error fetching posts for hashtag:", err);
        res.status(500).send("Error fetching posts for hashtag: " + err.message);
    }
    
    
});

// Update user profile
app.post('/updateProfile', async (req, res) => {
  const { userId, username, bio } = req.body;

  if (!userId || !username || !bio) {
    return res.status(400).send("Missing required fields");
  }

  try {
    // Check if the username already exists
    const checkUsernameResult = await connection.execute(
      `
      SELECT COUNT(*) AS count
      FROM users
      WHERE username = :username AND user_id != :userId
      `,
      {
        username: username,
        userId: userId
      }
    );

    const usernameCount = checkUsernameResult.rows[0].COUNT;
    if (usernameCount > 0) {
      return res.status(409).send("Username already exists");
    }

    // Call the stored procedure to update the user profile
    await connection.execute(
      `
      BEGIN
        update_user_profile(:user_id_in, :username_in, :bio_in);
      END;
      `,
      {
        user_id_in: userId,
        username_in: username,
        bio_in: bio
      },
      { autoCommit: true }
    );

    res.status(200).send("Profile updated successfully");
  } catch (err) {
    console.error("Error updating profile:", err);
    res.status(500).send("Error updating profile: " + err.message);
  }
});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
