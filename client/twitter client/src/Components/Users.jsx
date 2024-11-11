import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';
import SideNavbar from './SideNavbar';

const Users = () => {
  const [users, setUsers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchUsers = async () => {
      try {
        const response = await axios.get('http://localhost:3000/usersNotFollowed', { withCredentials: true });
        if (Array.isArray(response.data)) {
          setUsers(response.data);
        } else {
          console.error('Error: Expected an array of users');
          setError(new Error('Expected an array of users'));
        }
        setLoading(false);
      } catch (error) {
        console.error('Error fetching users:', error);
        setError(error);
        setLoading(false);
      }
    };

    fetchUsers();
  }, []);

  const handleUserClick = (userId) => {
    navigate('/profile', {
      state: { userId }
    });
  };

  if (loading) {
    return <div>Loading...</div>;
  }

  if (error) {
    return <div>Error: {error.message}</div>;
  }

  if (users.length === 0) {
    return <div>No users found</div>;
  }

  return (
    <div>
      <SideNavbar />
      <div className="ml-64 p-4"> {/* Adjust for the sidebar width */}
        <h1 className="text-2xl font-bold mb-4">Users Not Followed</h1>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {users.map(user => (
            <div key={user.user_id} className="bg-white p-4 rounded shadow hover:shadow-lg transition-shadow cursor-pointer" onClick={() => handleUserClick(user.user_id)}>
              <div className="flex items-center space-x-4">
                <img src={user.profile_photo_url} alt={user.username} className="w-16 h-16 rounded-full" />
                <div>
                  <h2 className="text-xl font-bold">{user.username}</h2>
                  <p>{user.bio}</p>
                  <p>{user.email}</p>
                </div>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};

export default Users;
