import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate, useLocation } from 'react-router-dom';
import SideNavbar from './SideNavbar';

const ProfilePage = () => {
  const [userData, setUserData] = useState({});
  const [activeSection, setActiveSection] = useState('posts');
  const [posts, setPosts] = useState([]); // Ensure initial state is an array
  const [followers, setFollowers] = useState([]);
  const [following, setFollowing] = useState([]);
  const [hashtags, setHashtags] = useState([]);
  const [showModal, setShowModal] = useState(false);
  const [newPost, setNewPost] = useState({ caption: '', photoUrl: '', videoUrl: '', hashtags: '', location: '' });
  const [isOwnProfile, setIsOwnProfile] = useState(false);
  const [editMode, setEditMode] = useState(false);
  const [updatedUsername, setUpdatedUsername] = useState(''); // Set initial state to an empty string
  const [updatedBio, setUpdatedBio] = useState(''); // Set initial state to an empty string
  const [errorMessage, setErrorMessage] = useState(''); // Initialize errorMessage state
  const navigate = useNavigate();
  const location = useLocation();

  useEffect(() => {
    const userId = location.state?.userId || null;
    const url = userId ? `http://localhost:3000/getUserInfo?userId=${userId}` : 'http://localhost:3000/getUserInfo';
    axios.get(url, { withCredentials: true })
      .then(response => {
        console.log("Fetched user data:", response.data); 
        if (response.data && response.data.length > 0) {
          setUserData(response.data[0]);
          const loggedInUserId = Number(localStorage.getItem('user_id'));
          setIsOwnProfile(!userId || response.data[0].user_id === loggedInUserId);
          setUpdatedUsername(response.data[0].user_name || ''); // Ensure value is not undefined
          setUpdatedBio(response.data[0].bio || ''); // Ensure value is not undefined
        } else {
          console.error('No user data found');
        }
      })
      .catch(error => {
        console.error('Error fetching user data:', error);
      });

    if (activeSection === 'posts') {
      fetchPosts(userId);
    } else if (activeSection === 'followers') {
      fetchFollowers(userId);
    } else if (activeSection === 'hashtags') {
      fetchHashtags(userId);
    }
  }, [location.state, activeSection]);

  const fetchPosts = (userId) => {
    const url = userId ? `http://localhost:3000/userposts?userId=${userId}` : 'http://localhost:3000/userposts';
    axios.get(url, { withCredentials: true })
      .then(response => {
        console.log("Fetched user posts:", response.data);
        const sortedPosts = response.data.sort((a, b) => new Date(b.created_at) - new Date(a.created_at));
        setPosts(sortedPosts); // Ensure data is an array and sorted by creation date
      })
      .catch(error => {
        console.error('Error fetching posts:', error);
      });
  };

  const handlePostClick = (postId) => {
    navigate(`/postdetails/${postId}`);
  };

  const handleUserClick = (userId) => {
    navigate('/profile', {
      state: { userId }
    });
  };

  const handleUpdateProfile = async (e) => {
    e.preventDefault();
    setErrorMessage(''); // Clear any previous error message
    try {
      const response = await axios.post('http://localhost:3000/updateProfile', {
        userId: userData.user_id,
        username: updatedUsername,
        bio: updatedBio
      }, { withCredentials: true });

      if (response.status === 200) {
        console.log('Profile updated successfully:', response.data);
        setUserData({ ...userData, user_name: updatedUsername, bio: updatedBio }); // Update user_name
        setEditMode(false);
      } else {
        console.error('Failed to update profile:', response.data);
        setErrorMessage(response.data); // Set error message
      }
    } catch (error) {
      console.error('Error updating profile:', error);
      setErrorMessage(error.response?.data || 'Error updating profile'); // Set error message
    }
  };

  const fetchFollowers = (userId) => {
    const urlFollowers = userId ? `http://localhost:3000/showFollowers?userId=${userId}` : 'http://localhost:3000/showFollowers';
    const urlFollowing = userId ? `http://localhost:3000/showFollowees?userId=${userId}` : 'http://localhost:3000/showFollowees';

    axios.get(urlFollowers, { withCredentials: true })
      .then(response => {
        setFollowers(response.data);
      })
      .catch(error => {
        console.error('Error fetching followers:', error);
      });

    axios.get(urlFollowing, { withCredentials: true })
      .then(response => {
        setFollowing(response.data);
      })
      .catch(error => {
        console.error('Error fetching followees:', error);
      });
  };

  const fetchHashtags = (userId) => {
    const urlHashtag = userId ? `http://localhost:3000/followedHashtags?userId=${userId}` : 'http://localhost:3000/followedHashtags';
    axios.get(urlHashtag, { withCredentials: true })
      .then(response => {
        setHashtags(response.data); // Ensure data is an array
      })
      .catch(error => {
        console.error('Error fetching hashtags:', error);
      });
  };

  const handleNewPostChange = (e) => {
    const { name, value } = e.target;
    setNewPost((prevPost) => ({ ...prevPost, [name]: value }));
  };

  const handleNewPostSubmit = async (e) => {
    e.preventDefault();
    const postData = {
      ...newPost,
      hashtags: newPost.hashtags.split(',').map(tag => tag.trim()) // Convert comma-separated string to array
    };
    try {
      const response = await axios.post('http://localhost:3000/newPost', postData, { withCredentials: true });
      if (response.status === 200) {
        console.log('Post created successfully:', response.data);
        setShowModal(false);
        setNewPost({ caption: '', photoUrl: '', videoUrl: '', hashtags: '', location: '' }); // Reset the form
        fetchPosts(location.state?.userId || null);
        
      } else {
        console.error('Failed to create post:', response.data);
      }
    } catch (error) {
      console.error('Error creating new post:', error);
    }
  };

  const styles = {
    profilePage: {
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
      paddingTop: '20px',
      paddingBottom: '30px',
      paddingLeft: '300px',
      backgroundColor: '#f0f4f8',
      minHeight: '100vh',
      maxWidth: '1250px',
      margin: '0 auto',
    },
    profileHeader: {
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'space-between',
      marginBottom: '20px',
      backgroundColor: '#ffffff',
      padding: '20px',
      borderRadius: '10px',
      boxShadow: '0 4px 8px rgba(0, 0, 0, 0.1)',
      width: '100%',
      maxWidth: '800px',
    },
    profilePhoto: {
      width: '150px',
      height: '150px',
      borderRadius: '50%',
      objectFit: 'cover',
      marginRight: '30px',
    },
    profileInfo: {
      display: 'flex',
      flexDirection: 'column',
      justifyContent: 'center',
      flex: 1, // Ensure profile info takes available space
    },
    userName: {
      fontWeight: 'bold',
      fontSize: '1.5em', 
    },
    email: {
      margin: '5px 0',
    },
    bio: {
      color: '#6c757d',   
      fontSize: '0.95em',
      marginTop: '5px',
    },
    profileButtons: {
      display: 'flex',
      justifyContent: 'space-around',
      marginBottom: '30px',
    },
    profileButton: {
      margin: '0 30px',
      padding: '10px 20px',
      border: 'none',
      backgroundColor: '#007bff',
      color: 'white',
      borderRadius: '5px',
      cursor: 'pointer',
      transition: 'background-color 0.3s',
      alignSelf: 'center',
    },
    profileButtonHover: {
      backgroundColor: '#0056b3',
    },
    profileButtonActive: {
      backgroundColor: '#0056b3', // Active button color
    },
    profileContent: {
      width: '100%',
      maxWidth: '1000px',
    },
    section: {
      display: 'flex',
      flexDirection: 'column',
      alignItems: 'center',
    },
    item: {
      width: '100%',
      padding: '20px',
      border: '1px solid #ddd',
      borderRadius: '5px',
      marginBottom: '10px',
      backgroundColor: '#f9f9f9',
      cursor: 'pointer',
      display: 'flex',
      flexDirection: 'column',
    },
    caption: {
      fontSize: '1.2em',
      fontWeight: 'normal',
      marginBottom: '10px',
    },
    date: {
      fontSize: '0.8em',
      color: '#6c757d',
      marginTop: 'auto',
    },
    fab: {
      position: 'fixed',
      bottom: '20px',
      right: '20px',
      width: '60px',
      height: '60px',
      borderRadius: '50%',
      backgroundColor: '#007bff',
      color: 'white',
      fontSize: '30px',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      cursor: 'pointer',
      boxShadow: '0 4px 8px rgba(0, 0, 0, 0.2)',
    },
    modal: {
      position: 'fixed',
      top: '0',
      left: '0',
      width: '100%',
      height: '100%',
      backgroundColor: 'rgba(0, 0, 0, 0.5)',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
    },
    modalContent: {
      backgroundColor: 'white',
      padding: '20px',
      borderRadius: '10px',
      width: '90%',
      maxWidth: '500px',
    },
    modalHeader: {
      display: 'flex',
      justifyContent: 'space-between',
      alignItems: 'center',
      marginBottom: '20px',
    },
    modalClose: {
      cursor: 'pointer',
      fontSize: '20px',
    },
    modalForm: {
      display: 'flex',
      flexDirection: 'column',
    },
    modalInput: {
      marginBottom: '10px',
      padding: '10px',
      borderRadius: '5px',
      border: '1px solid #ddd',
    },
    modalButton: {
      padding: '10px 20px',
      border: 'none',
      backgroundColor: '#007bff',
      color: 'white',
      borderRadius: '5px',
      cursor: 'pointer',
      transition: 'background-color 0.3s',
    },
    modalButtonHover: {
      backgroundColor: '#0056b3',
    },
    followersFollowingContainer: {
      display: 'flex',
      justifyContent: 'space-between',
      width: '100%',
      maxWidth: '800px',
    },
    followersColumn: {
      flex: 1,
      marginRight: '10px',
    },
    followingColumn: {
      flex: 1,
      marginLeft: '10px',
    },
    heading: {
      fontWeight: 'bold',
      fontSize: '1.2em',
      marginBottom: '10px',
    },
    postContainer: {
      backgroundColor: 'white',
      borderRadius: '10px',
      boxShadow: '0 4px 8px rgba(0, 0, 0, 0.1)',
      overflow: 'hidden',
      transition: 'transform 0.3s',
      cursor: 'pointer',
    },
    postContainerHover: {
      transform: 'scale(1.05)',
    },
    postHeader: {
      display: 'flex',
      alignItems: 'center',
      padding: '10px',
    },
    postProfileImage: {
      width: '40px',
      height: '40px',
      borderRadius: '50%',
      objectFit: 'cover',
      marginRight: '10px',
    },
    postContent: {
      padding: '10px',
    },
    postImage: {
      width: '100%',
      height: '200px',
      objectFit: 'cover',
    },
    postVideo: {
      width: '100%',
      height: '200px',
    },
    postFooter: {
      display: 'flex',
      justifyContent: 'space-between',
      alignItems: 'center',
      padding: '10px',
    },
    postButton: {
      color: '#007bff',
      cursor: 'pointer',
    },
  };

  return (
    <div>
      <SideNavbar />
    
      <div style={styles.profilePage}>
        <div style={styles.profileHeader}>
          <img
            src={userData.profile_photo_url}
            alt="Profile"
            style={styles.profilePhoto}
          />
          <div style={styles.profileInfo}>
            <h2 style={styles.userName}>{userData.user_name}</h2> {/* Ensure user_name is displayed */}
            <p style={styles.bio}>{userData.bio}</p> {/* Ensure bio is displayed */}
            <p style={styles.email}>{userData.email}</p> {/* Ensure email is displayed */}
          </div>
          {isOwnProfile && (
            <button
              style={styles.profileButton}
              onMouseOver={(e) => (e.target.style.backgroundColor = styles.profileButtonHover.backgroundColor)}
              onMouseOut={(e) => (e.target.style.backgroundColor = styles.profileButton.backgroundColor)}
              onClick={() => setEditMode(true)}
            >
              Update
            </button>
          )}
        </div>
        {editMode && (
          <div style={styles.modal}>
            <div style={styles.modalContent}>
              <div style={styles.modalHeader}>
                <h2>Update Profile</h2>
                <span style={styles.modalClose} onClick={() => setEditMode(false)}>&times;</span>
              </div>
              <form style={styles.modalForm} onSubmit={handleUpdateProfile}>
                {errorMessage && <p style={{ color: 'red' }}>{errorMessage}</p>} {/* Display error message */}
                <div style={{ marginBottom: '10px' }}>
                  <label>Username:</label>
                  <input
                    type="text"
                    value={updatedUsername}
                    onChange={(e) => setUpdatedUsername(e.target.value)}
                    style={styles.modalInput}
                  />
                </div>
                <div style={{ marginBottom: '10px' }}>
                  <label>Bio:</label>
                  <input
                    type="text"
                    value={updatedBio}
                    onChange={(e) => setUpdatedBio(e.target.value)}
                    style={styles.modalInput}
                  />
                </div>
                <div style={{ display: 'flex', justifyContent: 'space-between' }}> {/* Added flex container for buttons */}
                  <button
                    type="submit"
                    style={styles.modalButton}
                    onMouseOver={(e) => (e.target.style.backgroundColor = styles.modalButtonHover.backgroundColor)}
                    onMouseOut={(e) => (e.target.style.backgroundColor = styles.modalButton.backgroundColor)}
                  >
                    Save
                  </button>
                  <button
                    type="button"
                    style={styles.modalButton}
                    onClick={() => setEditMode(false)}
                    onMouseOver={(e) => (e.target.style.backgroundColor = styles.modalButtonHover.backgroundColor)}
                    onMouseOut={(e) => (e.target.style.backgroundColor = styles.modalButton.backgroundColor)}
                  >
                    Cancel
                  </button>
                </div>
              </form>
            </div>
          </div>
        )}
        <div style={styles.profileButtons}>
          <button
            style={{
              ...styles.profileButton,
              ...(activeSection === 'posts' && styles.profileButtonActive),
            }}
            onMouseOver={(e) => (e.target.style.backgroundColor = styles.profileButtonHover.backgroundColor)}
            onMouseOut={(e) => (e.target.style.backgroundColor = styles.profileButton.backgroundColor)}
            onClick={() => setActiveSection('posts')}
          >
            Posts
          </button>
          <button
            style={styles.profileButton}
            onMouseOver={(e) => (e.target.style.backgroundColor = styles.profileButtonHover.backgroundColor)}
            onMouseOut={(e) => (e.target.style.backgroundColor = styles.profileButton.backgroundColor)}
            onClick={() => setActiveSection('followers')}
          >
            Follow
          </button>
          <button
            style={styles.profileButton}
            onMouseOver={(e) => (e.target.style.backgroundColor = styles.profileButtonHover.backgroundColor)}
            onMouseOut={(e) => (e.target.style.backgroundColor = styles.profileButton.backgroundColor)}
            onClick={() => setActiveSection('hashtags')}
          >
            Hashtags
          </button>
        </div>
        <div style={styles.profileContent}>
        {activeSection === 'posts' && (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            {Array.isArray(posts) && posts.map(post => (
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
        {activeSection === 'followers' && (
          <div style={styles.followersFollowingContainer}>
            <div style={styles.followersColumn}>
              <h3 style={styles.heading}>Followers ({followers.length})</h3>
              {Array.isArray(followers) && followers.map(follower => ( // Ensure followers is an array
                <div key={follower.follower_id} style={styles.item} onClick={() => handleUserClick(follower.follower_id)}>
                  <p>{follower.username}</p>
                </div>
              ))}
            </div>
            <div style={styles.followingColumn}>
              <h3 style={styles.heading}>Following ({following.length})</h3>
              {Array.isArray(following) && following.map(follow => ( // Ensure following is an array
                <div key={follow.followee_id} style={styles.item} onClick={() => handleUserClick(follow.followee_id)}>
                  <p>{follow.username}</p>
                </div>
              ))}
            </div>
          </div>
        )}
        {activeSection === 'hashtags' && (
          <div style={styles.section}>
            {Array.isArray(hashtags) && hashtags.map(hashtag => ( // Ensure hashtags is an array
              <div key={hashtag.hashtag_id} style={styles.item}>
                <p>{hashtag.hashtag_name}</p>
              </div>
            ))}
          </div>
        )}
      </div>

      {/* Floating Action Button */}
      {isOwnProfile && (
        <div style={styles.fab} onClick={() => setShowModal(true)}>
          +
        </div>
      )}

      {/* Modal for New Post */}
      {showModal && (
        <div style={styles.modal}>
          <div style={styles.modalContent}>
            <div style={styles.modalHeader}>
              <h2>Create New Post</h2>
              <span style={styles.modalClose} onClick={() => setShowModal(false)}>&times;</span>
            </div>
            <form style={styles.modalForm} onSubmit={handleNewPostSubmit}>
              <input
                type="text"
                name="caption"
                placeholder="Caption"
                value={newPost.caption}
                onChange={handleNewPostChange}
                style={styles.modalInput}
                required
              />
              <input
                type="text"
                name="photoUrl"
                placeholder="Photo URL"
                value={newPost.photoUrl}
                onChange={handleNewPostChange}
                style={styles.modalInput}
              />
              <input
                type="text"
                name="videoUrl"
                placeholder="Video URL"
                value={newPost.videoUrl}
                onChange={handleNewPostChange}
                style={styles.modalInput}
              />
              <input
                type="text"
                name="hashtags"
                placeholder="Hashtags (comma separated)"
                value={newPost.hashtags}
                onChange={handleNewPostChange}
                style={styles.modalInput}
              />
              <input
                type="text"
                name="location"
                placeholder="Location"
                value={newPost.location}
                onChange={handleNewPostChange}
                style={styles.modalInput}
              />
              <button
                type="submit"
                style={styles.modalButton}
                onMouseOver={(e) => (e.target.style.backgroundColor = styles.modalButtonHover.backgroundColor)}
                onMouseOut={(e) => (e.target.style.backgroundColor = styles.modalButton.backgroundColor)}
              >
                Post
              </button>
            </form>
          </div>
        </div>
      )}
    </div>
    </div>
  );
};

export default ProfilePage;
