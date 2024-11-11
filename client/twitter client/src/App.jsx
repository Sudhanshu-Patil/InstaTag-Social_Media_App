import React from 'react';
import { useState } from 'react'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import UserFeed from './Components/UserFeed'
import Users from './Components/Users';
import Authpage from './Components/Authpage'
import Postdisplay from './Components/Postdisplay'
import PostDetailsWithComments from './Components/PostDetailsWithComments'
import ExploreHashtags from './Components/ExploreHashtags';
import PostDisplaywithhashtag from './Components/PostDisplaywithhashtag';
import HashFeed from './Components/HashFeed';
import ProfilePage from './Components/ProfilePage';


function App() {

  return (
  <>
    <Router>
        <Routes>
        <Route path="/" element={<Authpage />} />
        <Route path="/userfeed" element={<UserFeed />} />
        <Route path='/hashfeed' element={<HashFeed/>}/>
        <Route path="/postdetails/:postId" element={<PostDetailsWithComments />} />
        <Route path="/explorehashtags" element={<ExploreHashtags/>}/>
        <Route path="/postdisplaywithhashtag/:hashtagId" element={<PostDisplaywithhashtag/>}/>
        <Route path="/profile" element={<ProfilePage />} />
        <Route path="/users" element={<Users />} />
        </Routes>
    </Router>
  </>
      
  )
}

export default App
