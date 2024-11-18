import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import SideNavbar from './SideNavbar'; // Import the SideNavbar component

function HashFeed() {
  const [posts, setPosts] = useState([]); // Ensure posts is initialized as an array
  const [errorMessage, setErrorMessage] = useState('');
  const navigate = useNavigate();

  useEffect(() => {
    const fetchPosts = async () => {
      try {
        const response = await fetch('http://localhost:3000/userfeedByHashtags', {
          method: 'GET',
          credentials: 'include',
        });

        if (response.status === 401) {
          setErrorMessage('Unauthorized: No user_id cookie found');
          return;
        }

        if (response.ok) {
          const data = await response.json();
          setPosts(Array.isArray(data) ? data : []); // Ensure it's an array
        } else {
          const errorText = await response.text();
          setErrorMessage(errorText);
        }
      } catch (error) {
        console.error('Error fetching user feed:', error);
        setErrorMessage('An error occurred. Please try again later.');
      }
    };

    fetchPosts();
  }, []);

  const handlePostClick = (postId) => {
    navigate(`/postdetails/${postId}`);
  };

  return (
    <div className="flex min-h-screen bg-gray-100">
      <SideNavbar /> {/* Include the SideNavbar */}
      <div className="flex-1 ml-64 p-5"> {/* Adjust margin-left for content */}
        <h1 className="text-3xl font-bold text-center mb-6 text-gray-800">Your Hashtag Feed</h1>
        {errorMessage && <p className="text-red-500 text-center">{errorMessage}</p>}

        {Array.isArray(posts) && posts.length === 0 && !errorMessage ? (
          <p className="text-gray-600 text-center">No posts found in your feed. Try following some users or using hashtags!</p>
        ) : Array.isArray(posts) ? (
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
        ) : (
          <p className="text-red-500 text-center">Unexpected error: Invalid data format.</p>
        )}
      </div>
    </div>
  );
}

export default HashFeed;
