import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

function AuthPage() {
  const [formData, setFormData] = useState({
    user_name: '',
    email: '',
    bio: '',
    password: '',
  });
  const [errorMessage, setErrorMessage] = useState('');
  const navigate = useNavigate();

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData({
      ...formData,
      [name]: value,
    });
  };

  const handleSignup = async (e) => {
    e.preventDefault();
    setErrorMessage('');
    try {
      const response = await fetch('http://localhost:3000/signup', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        credentials: 'include',  // Allows cookies to be sent and received
        body: JSON.stringify({
          user_name: formData.user_name,
          email: formData.email,
          bio: formData.bio,
          password: formData.password,
        }),
      });

      if (response) {
        navigate('/userfeed');
      } else {
        const errorText = await response.text();
        setErrorMessage(`Signup failed: ${errorText}`);
      }
    } catch (error) {
      console.error('Error:', error);
      setErrorMessage('An error occurred. Please try again later.');
    }
  };

  const handleLogin = async (e) => {
    e.preventDefault();
    setErrorMessage('');
    try {
      const response = await fetch('http://localhost:3000/login', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        credentials: 'include',  // Allows cookies to be sent and received
        body: JSON.stringify({
          email: formData.email,
          password: formData.password,
        }),
      });

      if (response.ok) {
        navigate('/userfeed');
      } else {
        const errorText = await response.text();
        setErrorMessage(`Login failed: ${errorText}`);
      }
    } catch (error) {
      console.error('Error:', error);
      setErrorMessage('An error occurred. Please try again later.');
    }
  };

  return (
    <div>
      <h1 className="text-4xl text-center text-black p-10">Welcome to the Social Media App</h1>
      {errorMessage && <div className="text-red-500 text-center">{errorMessage}</div>}

      <div className="w-full bg-zinc-900 text-white p-10">
        <form onSubmit={handleSignup}>
          <input
            name="user_name"
            type="text"
            placeholder="Username"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.user_name}
            onChange={handleInputChange}
            required
          />
          <input
            name="email"
            type="email"
            placeholder="Email"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.email}
            onChange={handleInputChange}
            required
          />
          <input
            name="bio"
            type="text"
            placeholder="Bio"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.bio}
            onChange={handleInputChange}
          />
          <input
            name="password"
            type="password"
            placeholder="Password"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.password}
            onChange={handleInputChange}
            required
          />
          <button
            type="submit"
            className="px-3 py-2 rounded-md outline-none bg-blue-500 border-2 border-gray-500"
          >
            Create Account
          </button>
        </form>
      </div>

      <div className="w-full bg-zinc-900 text-white p-10">
        <form onSubmit={handleLogin}>
          <input
            name="email"
            type="email"
            placeholder="Email"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.email}
            onChange={handleInputChange}
            required
          />
          <input
            name="password"
            type="password"
            placeholder="Password"
            className="px-3 py-2 rounded-md outline-none bg-transparent border-2 border-gray-500 mb-4"
            value={formData.password}
            onChange={handleInputChange}
            required
          />
          <button
            type="submit"
            className="px-3 py-2 rounded-md outline-none bg-blue-500 border-2 border-gray-500"
          >
            Login
          </button>
        </form>
      </div>
    </div>
  );
}

export default AuthPage;
