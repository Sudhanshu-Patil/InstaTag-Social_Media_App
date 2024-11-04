import { useState } from 'react'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import UserFeed from './Components/UserFeed'
import Authpage from './Components/Authpage'
import Postdisplay from './Components/Postdisplay'
import ProfilePage from './Components/ProfilePage'


function App() {

  return (
  <>
    <Router>
        <Routes>
        <Route path="/" element={<Authpage />} />
        <Route path="/userfeed" element={<UserFeed />} />
        <Route path="/postdisplay" element={<Postdisplay />} />
        <Route path="/profile" element={<ProfilePage />} />

        </Routes>
    </Router>
  </>
      
  )
}

export default App
