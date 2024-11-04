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
      res.cookie.user_id = result.outBinds.user_id_out;
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


  app.get('/userfeed', async (req, res) => {
    const userId = req.cookies.user_id;

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
          console.log(row[6]);
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
            res.send("No posts found");

        } else {
            // res.render('feed', { posts });
            res.send(posts);
        }

    } catch (err) {
        console.error("Error fetching user feed:", err);
        res.status(500).send("Error fetching user feed: " + err.message);
    }
  
});

app.get('/commentspostdisplay', async (req, res) => {
  const postId = req.query.post_id;

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


app.post('/likepost', async (req, res) => {

  const {currUser, postId} = req.body;

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
              user_id_in: currUser,
              likes_count_out: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER },
 
          }
      );

      const updatedLikesCount = result.outBinds.likes_count_out;


      connection.commit();

      console.log("Post liked. Updated likes count:", updatedLikesCount);


      console.log("Post liked");

      res.json({  likesCount: updatedLikesCount });

  } catch (err) {
      console.error("Error liking post:", err);
      res.status(500).send("Error liking post: " + err.message);
  }

});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});
