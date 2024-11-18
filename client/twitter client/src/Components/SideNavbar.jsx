import React from 'react';
import { FaUser, FaHashtag, FaUserFriends, FaHome, FaSignOutAlt, FaInstagram } from 'react-icons/fa';
import { useNavigate, Link } from 'react-router-dom';

const SideNavbar = () => {
    const navigate = useNavigate();

    const handleInstaTagClick = () => {
        navigate('/userfeed');
    };

    const handleLogout = () => {
        window.location.href = 'http://localhost:5173/';
    };

    return (
        <div className="w-64 bg-blue-500 h-screen p-5 text-white fixed top-0 left-0">
            <h2
                className="text-2xl font-bold mb-6 cursor-pointer flex items-center"
                onClick={handleInstaTagClick}
            >
                <FaInstagram className="text-3xl mr-2" />
                InstaTag
            </h2>
            <nav className="flex flex-col space-y-4">
                <div>
                    <Link to="/userfeed" className="flex items-center p-2 hover:bg-blue-600 rounded">
                        <FaHome className="text-xl mr-2" />
                        <span>Posts</span>
                    </Link>
                    <ul className="ml-6 mt-2 space-y-2">
                        <li>
                            <Link to="/userfeed" className="hover:underline">
                                From Users You Follow
                            </Link>
                        </li>
                        <li>
                            <Link to="/hashfeed" className="hover:underline">
                                From Hashtags You Follow
                            </Link>
                        </li>
                    </ul>
                </div>
                <div>
                    <Link to="/profile" className="flex items-center p-2 hover:bg-blue-600 rounded">
                        <FaUser className="text-xl mr-2" />
                        <span>Profile</span>
                    </Link>
                </div>
                <div>
                    <Link to="/users" className="flex items-center p-2 hover:bg-blue-600 rounded">
                        <FaUserFriends className="text-xl mr-2" />
                        <span>Users</span>
                    </Link>
                </div>
                <div>
                    <Link to="/explorehashtags" className="flex items-center p-2 hover:bg-blue-600 rounded">
                        <FaHashtag className="text-xl mr-2" />
                        <span>Explore Hashtags</span>
                    </Link>
                </div>
            </nav>
            <button
                className="mt-8 bg-red-500 hover:bg-red-600 text-white font-bold py-2 px-4 rounded flex items-center"
                onClick={handleLogout}
            >
                <FaSignOutAlt className="text-xl mr-2" />
                Log Out
            </button>
        </div>
    );
};

export default SideNavbar;
