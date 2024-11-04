import React, { useEffect, useState } from 'react';
import { useLocation } from 'react-router-dom';
import Heart from "react-animated-heart";
import Cookies from 'js-cookie';



export default function PostDisplay() {
  const location = useLocation();
  const [comments, setComments] = useState([]);
  const [isClick, setClick] = useState(false);

  const {
    postId,
    userId,
    caption,
    createdAt,
    photoUrl,
    videoUrl,
    likesCount,
    userName,
    userProfileUrl,
  } = location.state || {};

  useEffect(() => {
    const fetchComments = async () => {
      try {
        const response = await fetch(`http://localhost:3000/commentspostdisplay?post_id=${postId}`, {
          method: 'GET',
          credentials: 'include',
        });

        if (response.ok) {
          const data = await response.json();
          setComments(data);
        } else {
          console.error('Error fetching comments:', response.statusText);
        }
      } catch (error) {
        console.error('Error fetching comments:', error);
      }
    };

    fetchComments();
  }, [postId]);



  const handleLikePost = async (postId) => {
    
    setClick(!isClick);
    
    try {
        let currUser=Number(Cookies.get('user_id'));
        console.log(currUser);
        console.log(typeof currUser);
      const response = await fetch('http://localhost:3000/likePost', 
                            {
                                method: 'POST',
                                headers: {
                                'Content-Type': 'application/json',
                                },
                                body: JSON.stringify({ postId,currUser }),
                                credentials: 'include'
                            });

        if (response.ok) {
            console.log('Post liked');
            }
        else {
            console.error('Error liking post:', response.statusText);
        }
      }
    
    catch (error) {
      console.error('Error liking post:', error);
    }

  };



  return (
    <div className="flex justify-center bg-gray-900 text-white min-h-screen" >
      <div className="w-full max-w-xl bg-black p-4 rounded-lg">
        {/* Main Post */}
        <div className="flex items-start gap-4 mb-4">
          {/* Profile Picture */}
          {userProfileUrl ? (
            <img
              src={userProfileUrl}
              alt={`${userName}'s profile`}
              className="w-12 h-12 rounded-full object-cover"
            />
          ) : (
            <div className="w-12 h-12 bg-gray-700 rounded-full"></div>
          )}
          <div>
            <h3 className="font-extrabold">{userName}</h3>
            <p className="text-gray-500 text-sm">{new Date(createdAt).toLocaleString()}</p>
            <p className="mt-2 text-lg">Post ID: {postId}</p>
            {/* Display the caption */}
            <h2 className="mt-8 font-light font-serif">{caption}</h2>

            {/* Optional Media Content */}
            {photoUrl && (
              <img src={photoUrl} alt="Post" className="w-full h-64 object-cover rounded-md mt-4 shadow-sm" />
            )}
            {videoUrl && (
              <video src={videoUrl} controls className="w-full h-64 rounded-md mt-4 shadow-sm" />
            )}
          </div>
        </div>

        {/* Like Count */}
        <div className="flex items-center gap-2 mt-4">
        
            <Heart isClick={isClick} onClick={() =>handleLikePost(postId) } />       
          <span className="text-gray-400 text-sm">{likesCount} Likes</span>
          <span className="text-gray-400 text-sm">{comments.length} Comments</span>
        </div>

        {/* Comments Section */}
        <div className="border-t border-gray-700 pt-4 mt-4">
          <h4 className="text-lg font-semibold">Comments</h4>
          {comments.length === 0 ? (
            <p className="text-gray-500 text-sm">No comments yet.</p>
          ) : (
            comments.map((comment) => (
              <div key={comment.comment_id} className="flex items-start gap-4 mt-4">
                {/* Commenter's Profile Picture Placeholder */}
               
                <img src={comment.user_profile_url} alt={`${comment.user_name}'s profile`} className="w-10 h-10 rounded-full " />
                
                <div>
                  <h3 className="font-extrabold">{comment.user_name}</h3>
                  <p className="text-gray-500 text-xs">{new Date(comment.created_at).toLocaleString()}</p>
                  <p className="mt-2">{comment.comment_text}</p>
                  <div className="flex items-center gap-2 mt-2">
                    {/* Like Button */}
                    <button
                      onClick={() => handleLikeComment(comment.comment_id)}
                      className="text-gray-400 hover:text-red-500 focus:outline-none"
                    >
                      ❤️
                    </button>
                    <span className="text-gray-400 text-sm">{comment.comment_likes_count} Likes</span>
                  </div>
                </div>
              </div>
            ))
          )}
        </div>
      </div>
    </div>
  );
}
