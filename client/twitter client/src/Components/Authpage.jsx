import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';

function AuthPage() {
  const [signupData, setSignupData] = useState({
    user_name: '',
    email: '',
    bio: '',
    password: '',
  });
  const [loginData, setLoginData] = useState({
    email: '',
    password: '',
  });
  const [errorMessage, setErrorMessage] = useState('');
  const navigate = useNavigate();

  const handleSignupInputChange = (e) => {
    const { name, value } = e.target;
    setSignupData({
      ...signupData,
      [name]: value,
    });
  };

  const handleLoginInputChange = (e) => {
    const { name, value } = e.target;
    setLoginData({
      ...loginData,
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
        credentials: 'include',
        body: JSON.stringify(signupData),
      });

      if (response.ok) {
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
        credentials: 'include',
        body: JSON.stringify(loginData),
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
      <header className="text-center p-10 bg-gray-200">  
        <h1 className="text-4xl text-black">
        <img src="https://img.icons8.com/ios/452/instagram-new.png" alt="Instagram Logo" className="w-20 h-20 mx-auto" /> 
          InstaTag - Your Go To Social-App
          </h1>
      </header>
      {errorMessage && <div className="text-red-500 text-center mt-4">{errorMessage}</div>}

      <div className="flex justify-center items-start p-10 bg-gray-100">
        <div className="w-1/2 bg-white text-black p-10 shadow-md rounded-md mr-4">
          <h2 className="text-2xl mb-6 text-center">Sign Up</h2>
          <form onSubmit={handleSignup}>
            <input
              name="user_name"
              type="text"
              placeholder="Username"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={signupData.user_name}
              onChange={handleSignupInputChange}
              required
            />
            <input
              name="email"
              type="email"
              placeholder="Email"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={signupData.email}
              onChange={handleSignupInputChange}
              required
            />
            <input
              name="bio"
              type="text"
              placeholder="Bio"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={signupData.bio}
              onChange={handleSignupInputChange}
            />
            <input
              name="password"
              type="password"
              placeholder="Password"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={signupData.password}
              onChange={handleSignupInputChange}
              required
            />
            <button
              type="submit"
              className="px-3 py-2 rounded-md outline-none bg-blue-500 text-white w-full"
            >
              Create Account
            </button>
          </form>
        </div>

        <div className="w-1/2 bg-white text-black p-10 shadow-md rounded-md ml-4">
          <h2 className="text-2xl mb-6 text-center">Log In</h2>
          <form onSubmit={handleLogin}>
            <input
              name="email"
              type="email"
              placeholder="Email"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={loginData.email}
              onChange={handleLoginInputChange}
              required
            />
            <input
              name="password"
              type="password"
              placeholder="Password"
              className="px-3 py-2 rounded-md outline-none bg-gray-50 border-2 border-gray-300 mb-4 w-full"
              value={loginData.password}
              onChange={handleLoginInputChange}
              required
            />
            <button
              type="submit"
              className="px-3 py-2 rounded-md outline-none bg-blue-500 text-white w-full"
            >
              Login
            </button>
          </form>
        </div>
      </div>
    </div>
  );
}

export default AuthPage;
