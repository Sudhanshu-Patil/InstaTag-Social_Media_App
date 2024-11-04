import React from 'react';
import { FaUser, FaHashtag, FaUserFriends, FaHome } from 'react-icons/fa';

const SideNavbar = () => {
    return (
        <div className="w-64 bg-blue-500 h-screen p-5 text-white">
            <h2 className="text-2xl font-bold mb-6">AppName</h2>
            <nav className="flex flex-col space-y-4">
                <div>
                    <a href="/posts/following" className="flex items-center p-2 hover:bg-blue-600 rounded">
                        <FaHome className="text-xl mr-2" />
                        <span>Posts</span>
                    </a>
                    <ul className="ml-6 mt-2 space-y-2">
                        <li>
                            <a href="/posts/following/users" className="hover:underline">
                                From Users You Follow
                            </a>
                        </li>
                        <li>
                            <a href="/posts/following/hashtags" className="hover:underline">
                                From Hashtags You Follow
                            </a>
                        </li>
                    </ul>
                </div>

                <a href="/profile" className="flex items-center p-2 hover:bg-blue-600 rounded">
                    <FaUser className="text-xl mr-2" />
                    <span>Your Profile</span>
                </a>

                <a href="/users" className="flex items-center p-2 hover:bg-blue-600 rounded">
                    <FaUserFriends className="text-xl mr-2" />
                    <span>Users</span>
                </a>

                <a href="/explore/hashtags" className="flex items-center p-2 hover:bg-blue-600 rounded">
                    <FaHashtag className="text-xl mr-2" />
                    <span>Explore Hashtags</span>
                </a>
            </nav>
        </div>
    );
};

export default SideNavbar;
