import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import SideNavbar from './SideNavbar';

const PostDetailsWithComments = () => {
    const { postId } = useParams();
    const [postDetails, setPostDetails] = useState(null);
    const [comments, setComments] = useState([]);
    const [loading, setLoading] = useState(true);
    const [loadingHashtags, setLoadingHashtags] = useState(false);
    const [error, setError] = useState(null);
    const [likesCount, setLikesCount] = useState(0);
    const [liked, setLiked] = useState(false);
    const [newComment, setNewComment] = useState('');
    const [postHashtags, setPostHashtags] = useState([]);

    const handleLikeClick = async () => {
        try {
            const endpoint = liked ? 'http://localhost:3000/unlikepost' : 'http://localhost:3000/likepost';
            const response = await fetch(endpoint, {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ post_id: postId }),
                credentials: 'include',
            });

            if (response.ok) {
                setLiked(!liked);
                setLikesCount(prevCount => prevCount + (liked ? -1 : 1));
            }
        } catch (error) {
            console.error('Error updating like status:', error);
            setError('Failed to update like status');
        }
    };

    const handleCommentLike = async (commentId) => {
        try {
            const response = await fetch('http://localhost:3000/likecomment', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ comment_id: commentId }),
                credentials: 'include',
            });

            if (response.ok) {
                const updatedComments = comments.map((comment) => {
                    if (comment.comment_id === commentId) {
                        return { ...comment, comment_likes_count: comment.comment_likes_count + 1 };
                    }
                    return comment;
                });
                setComments(updatedComments);
            }
        } catch (error) {
            console.error('Error updating comment like status:', error);
            setError('Failed to update comment like status');
        }
    };

    const handleCommentSubmit = async () => {
        if (!newComment.trim()) return;

        try {
            const response = await fetch('http://localhost:3000/addcomment', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ postId: postId, commentText: newComment }),
                credentials: 'include',
            });

            if (response.ok) {
                const updatedCommentsResponse = await fetch('http://localhost:3000/commentspostdisplay', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ post_id: postId }),
                    credentials: 'include',
                });

                if (updatedCommentsResponse.ok) {
                    const commentsData = await updatedCommentsResponse.json();
                    setComments(commentsData);
                }
                setNewComment('');
            }
        } catch (error) {
            console.error('Error adding comment:', error);
            setError('Failed to add comment');
        }
    };

    const handleHashtagClick = async () => {
        setLoadingHashtags(true);
        try {
            const response = await fetch('http://localhost:3000/retrieveHashtagsOfPost', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ post_id: postId }),
            });

            if (response.ok) {
                const data = await response.json();
                setPostHashtags(data);
            }
        } catch (error) {
            console.error('Error fetching post hashtags:', error);
            setError('Error fetching post hashtags');
        }
        setLoadingHashtags(false);
    };

    useEffect(() => {
        const fetchPostDetailsAndComments = async () => {
            setLoading(true);
            try {
                
                const postDetailsResponse = await fetch('http://localhost:3000/postdetails', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ post_id: postId }),
                });
                

                if (postDetailsResponse.ok) {
                    const postData = await postDetailsResponse.json();
                    if (postData.length > 0) {
                        console.log(postData);
                        setPostDetails(postData[0]);
                        setLikesCount(postData[0].likes_count);
                        setLiked(postData[0].liked_by_user);
                    } else {
                        setError('Post not found');
                    }
                }

                const commentsResponse = await fetch('http://localhost:3000/commentspostdisplay', {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ post_id: postId }),
                    credentials: 'include',
                });

                if (commentsResponse.ok) {
                    const commentsData = await commentsResponse.json();
                    setComments(commentsData);
                }
            } catch (error) {
                console.error('Error fetching data:', error);
                setError('Failed to fetch data');
            }
            setLoading(false);
        };

        fetchPostDetailsAndComments();
    }, [postId]);

    if (loading) {
        return (
            <div className="flex min-h-screen bg-gray-100">
                <SideNavbar />
                <div className="flex-1 ml-64 p-5 flex items-center justify-center">
                    <div className="text-gray-600">Loading...</div>
                </div>
            </div>
        );
    }

    if (error) {
        return (
            <div className="flex min-h-screen bg-gray-100">
                <SideNavbar />
                <div className="flex-1 ml-64 p-5 flex items-center justify-center">
                    <div className="text-red-500">{error}</div>
                </div>
            </div>
        );
    }

    return (
        <div className="flex min-h-screen bg-gray-100">
            <SideNavbar />
            <div className="flex-1 ml-64 p-5">
                <div className="max-w-4xl mx-auto">
                    {postDetails && (
                        <div className="bg-white rounded-lg shadow-md overflow-hidden mb-6">
                            <div className="p-5">
                                <div className="flex items-center space-x-3 mb-4">
                                    {postDetails.user_profile_url ? (
                                        <img
                                            src={postDetails.user_profile_url}
                                            alt={`${postDetails.user_name}'s profile`}
                                            className="w-12 h-12 rounded-full object-cover"
                                        />
                                    ) : (
                                        <div className="w-12 h-12 bg-gray-300 rounded-full" />
                                    )}
                                    <div>
                                        <h3 className="text-gray-800 font-semibold">{postDetails.user_name}</h3>
                                        <p className="text-gray-500 text-xs">
                                            {new Date(postDetails.created_at).toLocaleString()}
                                        </p>
                                    </div>
                                </div>

                                <h2 className="text-gray-800 text-lg font-semibold mb-4">{postDetails.caption}</h2>

                                {postDetails.photo_url && (
                                    <img
                                        src={postDetails.photo_url}
                                        alt="Post"
                                        className="w-full h-64 object-cover rounded-md mb-4"
                                    />
                                )}
                                {postDetails.video_url && (
                                    <video controls className="w-full h-64 rounded-md mb-4">
                                        <source src={postDetails.video_url} type="video/mp4" />
                                        Your browser does not support the video tag.
                                    </video>
                                )}

                                <div className="flex items-center justify-between">
                                    <div className="flex items-center space-x-4">
                                        <button
                                            onClick={handleLikeClick}
                                            className={`font-semibold ${
                                                liked ? 'text-red-500' : 'text-blue-500'
                                            } hover:opacity-75`}
                                        >
                                            {liked ? '❤️ Unlike' : '🤍 Like'}
                                        </button>
                                        <span className="text-gray-600">
                                            {likesCount} {likesCount === 1 ? 'Like' : 'Likes'}
                                        </span>
                                    </div>
                                    <button
                                        onClick={handleHashtagClick}
                                        className="text-blue-500 hover:text-blue-600 font-semibold"
                                    >
                                        View Hashtags
                                    </button>
                                </div>

                                {loadingHashtags ? (
                                    <p className="text-gray-500 mt-2">Loading hashtags...</p>
                                ) : (
                                    postHashtags.length > 0 && (
                                        <div className="mt-4 flex flex-wrap gap-2">
                                            {postHashtags.map((hashtag) => (
                                                <span
                                                    key={hashtag.hashtag_id}
                                                    className="bg-blue-100 text-blue-600 px-2 py-1 rounded-full text-sm hover:bg-blue-200 cursor-pointer"
                                                >
                                                    #{hashtag.hashtag_name}
                                                </span>
                                            ))}
                                        </div>
                                    )
                                )}
                            </div>
                        </div>
                    )}

                    <div className="bg-white rounded-lg shadow-md overflow-hidden">
                        <div className="p-5">
                            <div className="mb-4">
                                <div className="flex space-x-2">
                                    <input
                                        type="text"
                                        value={newComment}
                                        onChange={(e) => setNewComment(e.target.value)}
                                        placeholder="Write a comment..."
                                        className="flex-1 p-2 border border-gray-300 rounded-md focus:outline-none focus:border-blue-500"
                                    />
                                    <button
                                        onClick={handleCommentSubmit}
                                        className="px-4 py-2 bg-blue-500 text-white font-semibold rounded-md hover:bg-blue-600 transition duration-200"
                                    >
                                        Post
                                    </button>
                                </div>
                            </div>

                            <div className="space-y-4">
                                {comments.length === 0 ? (
                                    <p className="text-gray-500 text-center">No comments yet. Be the first to comment!</p>
                                ) : (
                                    comments.map((comment) => (
                                        <div key={comment.comment_id} className="border-t pt-4">
                                            <div className="flex items-start space-x-3">
                                                {comment.user_profile_url ? (
                                                    <img
                                                        src={comment.user_profile_url}
                                                        alt={`${comment.user_name}'s profile`}
                                                        className="w-10 h-10 rounded-full object-cover"
                                                    />
                                                ) : (
                                                    <div className="w-10 h-10 bg-gray-300 rounded-full" />
                                                )}
                                                <div className="flex-1">
                                                    <div className="flex items-center justify-between">
                                                        <h4 className="font-semibold text-gray-800">
                                                            {comment.user_name}
                                                        </h4>
                                                        <p className="text-gray-500 text-xs">
                                                            {new Date(comment.created_at).toLocaleString()}
                                                        </p>
                                                    </div>
                                                    <p className="text-gray-600 mt-1">{comment.comment_text}</p>
                                                    <div className="mt-2 flex items-center space-x-2">
                                                        <button
                                                            onClick={() => handleCommentLike(comment.comment_id)}
                                                            className="text-gray-500 hover:text-red-500"
                                                        >
                                                            ❤️
                                                        </button>
                                                        <span className="text-gray-500 text-sm">
                                                            {comment.comment_likes_count} likes
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    ))
                                )}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default PostDetailsWithComments;
