import React, { useEffect, useState } from 'react';
import SideNavbar from './SideNavbar';
import { useNavigate } from 'react-router-dom';

function ExploreHashtags() {
    const [hashtags, setHashtags] = useState([]);
    const navigate = useNavigate();

    useEffect(() => {
        const fetchHashtags = async () => {
            try {
                const response = await fetch('http://localhost:3000/explorehashtags', {
                    method: 'GET',
                    credentials: 'include',
                });

                if (response.ok) {
                    const data = await response.json();
                    console.log(data);
                    setHashtags(data);
                } else {
                    console.error('Error fetching hashtags:', response.statusText);
                }
            } catch (error) {
                console.error('Error fetching hashtags:', error);
            }
        };

        fetchHashtags();
    }, []);

    const handleFollow = (hashtagId) => {
        console.log(`Followed hashtag with ID: ${hashtagId}`);
        const followHashtag = async () => {
            try {
                const response = await fetch('http://localhost:3000/followhashtag', {
                    method: 'POST',
                    credentials: 'include',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({ hashtagId }),
                });

                if (response.ok) {
                    console.log('Successfully followed hashtag');
                } else {
                    console.error('Error following hashtag:', response.statusText);
                }
            } catch (error) {
                console.error('Error following hashtag:', error);
            }
        };

        followHashtag();
    };

    const handleViewPosts = (hashtagId) => {
        console.log(`Viewed posts for hashtag with ID: ${hashtagId}`);
        navigate(`/postdisplaywithhashtag/${hashtagId}`);
    };

    return (
        <div className="flex flex-col lg:flex-row">
            <SideNavbar className="fixed lg:static top-0 left-0 lg:h-full w-full lg:w-64 bg-gray-800 text-white" />
            <div className="lg:ml-10 p-4 lg:p-6 flex-1 text-center mt-16 lg:mt-0">
                <h2 className="text-xl lg:text-2xl font-semibold mb-4 lg:mb-6">Explore Hashtags</h2>
                <ul className="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-4">
                    {hashtags.map((hashtag) => (
                        <li
                            key={hashtag.hashtag_id}
                            className="bg-gray-100 p-3 lg:p-4 rounded-lg shadow-sm flex flex-col sm:flex-row items-center justify-between"
                        >
                            <span className="text-md lg:text-lg font-medium text-gray-700">
                                {hashtag.hashtag_name}
                            </span>
                            <div className="flex mt-3 sm:mt-0 space-x-2">
                                <button
                                    onClick={() => handleFollow(hashtag.hashtag_id)}
                                    className="bg-blue-500 text-white px-2 py-1 rounded-full hover:bg-blue-600 transition-colors text-sm lg:text-base"
                                >
                                    Follow
                                </button>
                                <button
                                    onClick={() => handleViewPosts(hashtag.hashtag_id)}
                                    className="bg-neutral-500 text-white px-2 py-1 rounded-full hover:bg-blue-600 transition-colors text-sm lg:text-base"
                                >
                                    View Posts
                                </button>
                            </div>
                        </li>
                    ))}
                </ul>
            </div>
        </div>
    );
}

export default ExploreHashtags;
