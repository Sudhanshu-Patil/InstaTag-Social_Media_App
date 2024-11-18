import React, { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import SideNavbar from './SideNavbar';

export default function PostDisplay() {
  const { postId } = useParams()
  const [postDetails, setPostDetails] = useState(null);
  const [comments, setComments] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [likeCount, setLikesCount] = useState(0);
  const [liked, setLiked] = useState(false);
  const [newComment, setNewComment] = useState('');

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
            } else {
                console.error('Failed to update like status');
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
            } else {
                console.error('Failed to update comment like status');
            }
        } catch (error) {
            console.error('Error updating comment like status:', error);
            setError('Failed to update comment like status');
        }
    }

    const handleCommentSubmit = async () => {
        if (!newComment.trim()) return; // Don't submit empty comments

        try {
            const response = await fetch('http://localhost:3000/addcomment', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ postId: postId, commentText: newComment }),
                credentials: 'include',
            });

            if (response.ok) {
               const updatedComments=await fetch(`http://localhost:3000/commentspostdisplay`, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify({ post_id: postId }),
                    credentials: 'include',
                });
               if(updatedComments.ok){
                   const commentsData = await updatedComments.json();
                   setComments(commentsData);
               }
                setNewComment(''); // Clear the comment box
            } else {
                setError('Failed to add comment');
            }
        } catch (error) {
            console.error('Error adding comment:', error);
            setError('Failed to add comment');
        }
    };

    useEffect(() => {
      const fetchPostDetailsAndComments = async () => {
          try {
              const postDetailsResponse = await fetch(`http://localhost:3000/postdetails`, {
                  method: 'POST',
                  headers: { 'Content-Type': 'application/json' },
                  body: JSON.stringify({ post_id: postId }),
              });
              if (postDetailsResponse.ok) {
                  const postData = await postDetailsResponse.json();
                  setPostDetails(postData[0]);
                  setLikesCount(postData[0].likes_count);
                  setLiked(postData[0].liked_by_user);
              } else {
                  setError('Failed to fetch post details');
              }

              const commentsResponse = await fetch(`http://localhost:3000/commentspostdisplay`, {
                  method: 'POST',
                  headers: { 'Content-Type': 'application/json' },
                  body: JSON.stringify({ post_id: postId }),
                  credentials: 'include',
              });
              if (commentsResponse.ok) {
                  const commentsData = await commentsResponse.json();
                  setComments(commentsData);
              } else {
                  setError('Failed to fetch comments');
              }
          } catch (error) {
              console.error('Error fetching data:', error);
              setError('Failed to fetch data');
          }
          setLoading(false);
      };
      fetchPostDetailsAndComments();
  }, [postId]);

  if (error) return <p>{error}</p>;

  return (
    <div className="flex bg-white-900 text-white min-h-screen">
        <SideNavbar />
        <div className="w-full max-w-xl bg-black p-4 sm:p-6 lg:p-8 ml-0 lg:ml-[23vw] rounded-lg transition-all duration-300">
            {postDetails && (
                <div className="flex flex-col sm:flex-row items-start gap-4 mb-4">
                    {postDetails.user_profile_url ? (
                        <img
                            src={postDetails.user_profile_url}
                            alt={`${postDetails.user_name}'s profile`}
                            className="w-12 h-12 rounded-full object-cover sm:w-16 sm:h-16"
                        />
                    ) : (
                        <div className="w-12 h-12 bg-gray-700 rounded-full sm:w-16 sm:h-16"></div>
                    )}
                    <div className="text-left w-full sm:w-auto">
                        <h3 className="font-extrabold text-lg sm:text-xl">{postDetails.user_name}</h3>
                        <p className="text-gray-500 text-xs sm:text-sm">{new Date(postDetails.created_at).toLocaleString()}</p>
                        <p className="mt-2 text-sm sm:text-base font-light">Post ID: {postId}</p>
                        <h2 className="mt-8 font-light font-serif text-lg sm:text-xl lg:text-2xl">{postDetails.caption}</h2>
                        {postDetails.photo_url && (
                            <img src={postDetails.photo_url} alt="Post" className="w-full h-48 sm:h-64 object-cover rounded-md mt-4 shadow-lg transition-transform hover:scale-105" />
                        )}
                        {postDetails.video_url && (
                            <video src={postDetails.video_url} controls className="w-full h-48 sm:h-64 rounded-md mt-4 shadow-lg transition-transform hover:scale-105" />
                        )}
                    </div>
                </div>
            )}
            <div className="flex items-center gap-4 mt-4 text-sm sm:text-lg">
                <button className={`font-semibold transition duration-200 ${liked ? 'text-red-400' : 'text-blue-400'}`} onClick={handleLikeClick}>
                    {liked ? 'UNLIKE' : 'LIKE'}
                </button>
                <span className="text-gray-400">{likesCount} Likes</span>
                <span className="text-gray-400">{comments.length} Comments</span>
            </div>

           
            <div className="mt-4 flex items-center space-x-2">
            <input
                type="text"
                value={newComment}
                onChange={(e) => setNewComment(e.target.value)}
                placeholder="Write a comment..."
                className="h-[5vh] p-2 rounded-md text-black flex-grow"
                style={{ width: '70%' }}
            />
            <button
                onClick={handleCommentSubmit}
                className="px-4 py-2 h-[5vh] bg-blue-500 text-white font-semibold rounded-md hover:bg-blue-600 transition duration-200"
                style={{ width: '30%' }}
            >
                Comment
            </button>
        </div>



        <div className="border-t border-gray-700 pt-4 mt-4">
        <h4 className="text-lg font-semibold">Comments</h4>
        {comments.length === 0 ? (
            <p className="text-gray-500 text-xs sm:text-sm">No comments yet.</p>
        ) : (
            comments.map((comment) => (
                <div key={comment.comment_id} className="flex items-start gap-4 mt-4">
                    <img
                        src={comment.user_profile_url}
                        alt={`${comment.user_name}'s profile`}
                        className="w-10 h-10 rounded-full sm:w-12 sm:h-12"
                    />
                    <div>
                        <h3 className="font-extrabold text-sm sm:text-base">{comment.user_name}</h3>
                        <p className="text-gray-500 text-xs">{new Date(comment.created_at).toLocaleString()}</p>
                        <p className="mt-2 text-xs sm:text-sm">{comment.comment_text}</p>
                        <div className="flex items-center gap-2 mt-2">
                            <button
                                onClick={() => handleCommentLike(comment.comment_id)}
                                className="text-gray-400 hover:text-red-500 focus:outline-none"
                            >
                                ❤️
                            </button>
                            <span className="text-gray-400 text-xs sm:text-sm">
                                {comment.comment_likes_count} Likes
                            </span>
                        </div>
                    </div>
                </div>
            ))
        )}
    </div>
            
        </div>
    </div>
  );
};
