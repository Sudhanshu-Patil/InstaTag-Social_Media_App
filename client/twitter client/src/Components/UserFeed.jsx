import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import SideNavbar from './SideNavbar'; // Import the SideNavbar component

const UserFeed = () => {
  const [posts, setPosts] = useState([]);
  const [errorMessage, setErrorMessage] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    const fetchPosts = async () => {
      try {
        const response = await axios.get('http://localhost:3000/userfeed', { withCredentials: true });
        setPosts(response.data);
      } catch (error) {
        console.error('Error fetching user feed:', error);
        setErrorMessage('An error occurred. Please try again later.');
      }
    };

    fetchPosts();
  }, []);

  const handlePostClick = (postId) => {
  
    console.log(postId);
    navigate(`/postdetails/${postId}`);
  };

  return (
    <div className="flex min-h-screen bg-gray-100">
      <SideNavbar /> {/* Add the SideNavbar here */}
      
      <div className="flex-1 p-5 ml-64">
        <h1 className="text-3xl font-bold text-center mb-6 text-gray-800">Your Feed</h1>
        {errorMessage && <p className="text-red-500 text-center">{errorMessage}</p>}

        {posts.length === 0 && !errorMessage ? (
          <p className="text-gray-600 text-center">No posts found in your feed. Try following some users!</p>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {posts.map((post) => (
              <div
                key={post.post_id}
                className="bg-white rounded-lg shadow-md overflow-hidden transform transition duration-300 hover:scale-105"
                onClick={() => handlePostClick(post.post_id)}
              >
                <div className="p-5 flex items-center space-x-3">
                  {post.user_profile_url ? (
                    <img
                      src={post.user_profile_url}
                      alt="User Profile"
                      className="w-10 h-10 rounded-full object-cover"
                    />
                  ) : (
                    <div className="w-10 h-10 rounded-full bg-gray-300" />
                  )}
                  <div>
                    <p className="text-gray-800 font-semibold">{post.user_name}</p>
                    <p className="text-gray-500 text-xs">Post ID: {post.post_id}</p>
                    <p className="text-gray-500 text-xs">User ID: {post.user_id}</p>
                  </div>
                </div>

                <div className="p-5">
                  <h2 className="text-lg font-semibold text-gray-800 mb-2">{post.caption}</h2>
                  <p className="text-gray-400 text-sm mb-4">
                    Posted on: {new Date(post.created_at).toLocaleString()}
                  </p>
                </div>

                {post.photo_url && (
                  <img
                    src={post.photo_url}
                    alt="Post"
                    className="w-full h-48 object-cover"
                  />
                )}

                {post.video_url && (
                  <video controls className="w-full h-48">
                    <source src={post.video_url} type="video/mp4" />
                    Your browser does not support the video tag.
                  </video>
                )}

                <div className="p-5 flex justify-between items-center">
                  <span className="text-gray-600 text-sm">
                    ❤️ {post.likes_count} Likes
                  </span>
                  <button className="text-blue-500 hover:text-blue-600 font-semibold">Like</button>
                  <button className="text-blue-500 hover:text-blue-600 font-semibold">Comment</button>
                  <button className="text-blue-500 hover:text-blue-600 font-semibold">Share</button>
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}

export default UserFeed;
