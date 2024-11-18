-- USERS
INSERT INTO users (username, passkey, bio, email) VALUES ('alice', 'pass123', 'Nature photographer', 'alice@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('bob', 'pass234', 'Travel blogger', 'bob@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('charlie', 'pass345', 'Adventure enthusiast', 'charlie@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('diana', 'pass456', 'Urban explorer', 'diana@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('edward', 'pass567', 'Food critic', 'edward@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('fiona', 'pass678', 'Painter', 'fiona@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('george', 'pass789', 'Wildlife photographer', 'george@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('hannah', 'pass890', 'Street photographer', 'hannah@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('ian', 'pass901', 'Architecture lover', 'ian@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('julia', 'pass012', 'Mountain trekker', 'julia@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('kyle', 'pass1234', 'Car photographer', 'kyle@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('laura', 'pass2345', 'Hidden gem finder', 'laura@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('michael', 'pass3456', 'Desert explorer', 'michael@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('nina', 'pass4567', 'Culture lover', 'nina@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('oliver', 'pass5678', 'Marine biologist', 'oliver@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('paula', 'pass6789', 'Fashion photographer', 'paula@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('quentin', 'pass7890', 'Tech writer', 'quentin@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('rachel', 'pass8901', 'Nature photographer', 'rachel@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('steven', 'pass9012', 'Coastal explorer', 'steven@example.com');
INSERT INTO users (username, passkey, bio, email) VALUES ('tina', 'pass0123', 'Food critic', 'tina@example.com');





-- POSTS
-- Alice's Posts (User ID 1)
INSERT INTO post (user_id, caption) VALUES (1, 'Sunset over the hills');
INSERT INTO post (user_id, caption) VALUES (1, 'The serene morning lake');
INSERT INTO post (user_id, caption) VALUES (1, 'Exploring misty forests');
INSERT INTO post (user_id, caption) VALUES (1, 'Golden hour in the valley');
INSERT INTO post (user_id, caption) VALUES (1, 'Nature at its finest');

-- Bob's Posts (User ID 2)
INSERT INTO post (user_id, caption) VALUES (2, 'Wandering through ancient ruins');
INSERT INTO post (user_id, caption) VALUES (2, 'Desert sunsets');
INSERT INTO post (user_id, caption) VALUES (2, 'Cityscape adventures');
INSERT INTO post (user_id, caption) VALUES (2, 'Ocean blues');
INSERT INTO post (user_id, caption) VALUES (2, 'Hiking trails');

-- Charlie's Posts (User ID 3)
INSERT INTO post (user_id, caption) VALUES (3, 'Exploring the wilds');
INSERT INTO post (user_id, caption) VALUES (3, 'Rock climbing vibes');
INSERT INTO post (user_id, caption) VALUES (3, 'Snowy peaks');
INSERT INTO post (user_id, caption) VALUES (3, 'Adventure awaits');
INSERT INTO post (user_id, caption) VALUES (3, 'River rafting');

-- Diana's Posts (User ID 4)
INSERT INTO post (user_id, caption) VALUES (4, 'City lights at dusk');
INSERT INTO post (user_id, caption) VALUES (4, 'Street vibes');
INSERT INTO post (user_id, caption) VALUES (4, 'Rooftop views');
INSERT INTO post (user_id, caption) VALUES (4, 'Evening strolls');
INSERT INTO post (user_id, caption) VALUES (4, 'Sunrise over the skyline');

-- Edward's Posts (User ID 5)
INSERT INTO post (user_id, caption) VALUES (5, 'Tasting the best pasta');
INSERT INTO post (user_id, caption) VALUES (5, 'A delightful brunch');
INSERT INTO post (user_id, caption) VALUES (5, 'Exploring new cuisines');
INSERT INTO post (user_id, caption) VALUES (5, 'Dessert galore');
INSERT INTO post (user_id, caption) VALUES (5, 'Street food festival');

-- Fiona's Posts (User ID 6)
INSERT INTO post (user_id, caption) VALUES (6, 'Painting the sunset');
INSERT INTO post (user_id, caption) VALUES (6, 'Sketching the countryside');
INSERT INTO post (user_id, caption) VALUES (6, 'Colors of the ocean');
INSERT INTO post (user_id, caption) VALUES (6, 'Mountain landscapes');
INSERT INTO post (user_id, caption) VALUES (6, 'Portraits in nature');

-- George's Posts (User ID 7)
INSERT INTO post (user_id, caption) VALUES (7, 'Catching a wild fox on camera');
INSERT INTO post (user_id, caption) VALUES (7, 'Birds in the early morning');
INSERT INTO post (user_id, caption) VALUES (7, 'The beauty of wildlife');
INSERT INTO post (user_id, caption) VALUES (7, 'Capturing moments in the wild');
INSERT INTO post (user_id, caption) VALUES (7, 'Nature at its most vibrant');

-- Hannah's Posts (User ID 8)
INSERT INTO post (user_id, caption) VALUES (8, 'Street art galore');
INSERT INTO post (user_id, caption) VALUES (8, 'Capturing urban scenes');
INSERT INTO post (user_id, caption) VALUES (8, 'The beauty of graffiti');
INSERT INTO post (user_id, caption) VALUES (8, 'Downtown perspectives');
INSERT INTO post (user_id, caption) VALUES (8, 'City life in motion');

-- Ian's Posts (User ID 9)
INSERT INTO post (user_id, caption) VALUES (9, 'Modern architectural marvels');
INSERT INTO post (user_id, caption) VALUES (9, 'Structures that inspire');
INSERT INTO post (user_id, caption) VALUES (9, 'The grandeur of buildings');
INSERT INTO post (user_id, caption) VALUES (9, 'Timeless architectural beauty');
INSERT INTO post (user_id, caption) VALUES (9, 'Exploring the old and new');

-- Julia's Posts (User ID 10)
INSERT INTO post (user_id, caption) VALUES (10, 'Hiking through the wilderness');
INSERT INTO post (user_id, caption) VALUES (10, 'Scaling mountain heights');
INSERT INTO post (user_id, caption) VALUES (10, 'The thrill of trekking');
INSERT INTO post (user_id, caption) VALUES (10, 'Mountain shadows at dusk');
INSERT INTO post (user_id, caption) VALUES (10, 'Into the forest green');

-- Kyle's Posts (User ID 11)
INSERT INTO post (user_id, caption) VALUES (11, 'Classic cars on display');
INSERT INTO post (user_id, caption) VALUES (11, 'Modern automotive design');
INSERT INTO post (user_id, caption) VALUES (11, 'Cars of the future');
INSERT INTO post (user_id, caption) VALUES (11, 'Vintage beauties');
INSERT INTO post (user_id, caption) VALUES (11, 'The roar of engines');

-- Laura's Posts (User ID 12)
INSERT INTO post (user_id, caption) VALUES (12, 'Exploring hidden streets');
INSERT INTO post (user_id, caption) VALUES (12, 'Quiet alleys of the city');
INSERT INTO post (user_id, caption) VALUES (12, 'Finding serenity in chaos');
INSERT INTO post (user_id, caption) VALUES (12, 'The charm of old towns');
INSERT INTO post (user_id, caption) VALUES (12, 'Tales from quiet corners');

-- Michael's Posts (User ID 13)
INSERT INTO post (user_id, caption) VALUES (13, 'Desert horizons');
INSERT INTO post (user_id, caption) VALUES (13, 'Sand dunes at sunset');
INSERT INTO post (user_id, caption) VALUES (13, 'The quiet of the desert');
INSERT INTO post (user_id, caption) VALUES (13, 'Heat waves and cacti');
INSERT INTO post (user_id, caption) VALUES (13, 'Desert adventures');

-- Nina's Posts (User ID 14)
INSERT INTO post (user_id, caption) VALUES (14, 'Cultural festivals around the world');
INSERT INTO post (user_id, caption) VALUES (14, 'Dancing with locals');
INSERT INTO post (user_id, caption) VALUES (14, 'Traditional costumes and colors');
INSERT INTO post (user_id, caption) VALUES (14, 'Music of different lands');
INSERT INTO post (user_id, caption) VALUES (14, 'Celebrating traditions');

-- Oliver's Posts (User ID 15)
INSERT INTO post (user_id, caption) VALUES (15, 'Diving into the deep blue');
INSERT INTO post (user_id, caption) VALUES (15, 'Coral reefs and marine life');
INSERT INTO post (user_id, caption) VALUES (15, 'Underwater wonders');
INSERT INTO post (user_id, caption) VALUES (15, 'The magic of the ocean');
INSERT INTO post (user_id, caption) VALUES (15, 'Exploring the seabed');

-- Paula's Posts (User ID 16)
INSERT INTO post (user_id, caption) VALUES (16, 'Capturing high fashion');
INSERT INTO post (user_id, caption) VALUES (16, 'Glamour and elegance');
INSERT INTO post (user_id, caption) VALUES (16, 'Fashion week highlights');
INSERT INTO post (user_id, caption) VALUES (16, 'Styles of the season');
INSERT INTO post (user_id, caption) VALUES (16, 'Street style inspirations');

-- Quentin's Posts (User ID 17)
INSERT INTO post (user_id, caption) VALUES (17, 'The latest gadgets');
INSERT INTO post (user_id, caption) VALUES (17, 'Tech reviews and insights');
INSERT INTO post (user_id, caption) VALUES (17, 'Smart home trends');
INSERT INTO post (user_id, caption) VALUES (17, 'The future of technology');
INSERT INTO post (user_id, caption) VALUES (17, 'Gadgets that inspire');

-- Rachel's Posts (User ID 18)
INSERT INTO post (user_id, caption) VALUES (18, 'Wildflower meadows');
INSERT INTO post (user_id, caption) VALUES (18, 'The charm of spring');
INSERT INTO post (user_id, caption) VALUES (18, 'Blooming landscapes');
INSERT INTO post (user_id, caption) VALUES (18, 'Nature in full bloom');
INSERT INTO post (user_id, caption) VALUES (18, 'Colors of the season');

-- Steven's Posts (User ID 19)
INSERT INTO post (user_id, caption) VALUES (19, 'Coastal life');
INSERT INTO post (user_id, caption) VALUES (19, 'Waves hitting the shore');
INSERT INTO post (user_id, caption) VALUES (19, 'The charm of seaside towns');
INSERT INTO post (user_id, caption) VALUES (19, 'Sunrise by the beach');
INSERT INTO post (user_id, caption) VALUES (19, 'Salt in the air');

-- Tina's Posts (User ID 20)
INSERT INTO post (user_id, caption) VALUES (20, 'Exploring the hidden gems of nature');
INSERT INTO post (user_id, caption) VALUES (20, 'A peaceful day by the river');
INSERT INTO post (user_id, caption) VALUES (20, 'Mountain trails and forest paths');
INSERT INTO post (user_id, caption) VALUES (20, 'Capturing the beauty of autumn leaves');
INSERT INTO post (user_id, caption) VALUES (20, 'Sunlit fields and open skies');

-- Photos and Videos for Posts 81-100

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/200', 81, 3.5);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 81, 8.0);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 82, 3.2);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 82, 7.5);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 83, 4.0);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 83, 6.5);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/100', 84, 3.8);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://www.example.com/video4.mp4', 84, 7.2);
INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 85, 4.1);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 85, 6.0);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 86, 3.9);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 86, 8.5);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 87, 4.2);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 87, 7.0);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 88, 3.7);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 88, 6.8);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 89, 3.4);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 89, 7.3);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 90, 4.3);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 90, 8.0);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 91, 3.6);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 91, 6.3);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 92, 4.1);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 92, 7.8);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 93, 3.8);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 93, 7.0);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 94, 4.0);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 94, 6.7);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 95, 3.9);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 95, 7.2);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 96, 4.2);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 96, 6.8);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 97, 4.0);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 97, 7.5);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 98, 3.7);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 98, 8.1);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 99, 3.9);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 99, 6.9);

INSERT INTO photos (photo_url, post_id, photo_size) VALUES ('https://picsum.photos/500/300', 100, 4.1);
INSERT INTO videos (video_url, post_id, video_size) VALUES ('https://avtshare01.rz.tu-ilmenau.de/avt-vqdb-uhd-1/test_1/segments/bigbuck_bunny_8bit_15000kbps_1080p_60.0fps_h264.mp4', 100, 7.4);


-- COMMENTS
-- Comments for Alice's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (1, 2, 'Absolutely beautiful!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (1, 3, 'Wow, stunning view!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (1, 4, 'Wish I was there!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (2, 5, 'This looks so peaceful!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (2, 6, 'I’d love to visit this place.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (2, 7, 'Amazing shot, Alice!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (3, 8, 'Such a magical moment captured!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (3, 9, 'Love the misty vibe here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (3, 10, 'Reminds me of a dream!');

-- Comments for Bob's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (4, 1, 'Golden hour never disappoints!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (4, 2, 'Breathtaking shot!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (4, 3, 'Incredible lighting here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (5, 4, 'Nature at its finest, indeed.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (5, 5, 'Such a serene place!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (5, 6, 'Can’t get enough of this view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (6, 7, 'I’d love to explore these ruins.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (6, 8, 'History comes alive here!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (6, 9, 'There’s so much beauty in old places.');

-- Comments for Charlie's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (7, 10, 'The colors are amazing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (7, 11, 'Desert sunsets are the best.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (7, 12, 'So warm and inviting.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (8, 13, 'Urban adventures are always exciting!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (8, 14, 'Cityscapes never get old.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (8, 15, 'That skyline is epic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (9, 16, 'The ocean looks so inviting!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (9, 17, 'Beautiful capture of the blues!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (9, 18, 'Makes me miss the sea.');

-- Comments for David's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (10, 1, 'Such a great hiking spot!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (10, 2, 'Love those trail vibes.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (10, 3, 'Can’t wait to go there myself.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (11, 4, 'Adventure indeed awaits!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (11, 5, 'Wish I could join you!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (11, 6, 'So much to explore!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (12, 7, 'Rock climbing looks so fun!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (12, 8, 'Impressive skills!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (12, 9, 'Looks challenging but rewarding!');

-- Comments for Emma's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (13, 10, 'Snowy mountains are the best.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (13, 11, 'What a peaceful view!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (13, 12, 'Reminds me of a winter wonderland.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (14, 13, 'Great shot!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (14, 14, 'Looks like an awesome trip!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (14, 15, 'I’ve always wanted to visit there.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (15, 16, 'I’ve always wanted to go rafting!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (15, 17, 'You captured the moment well.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (15, 18, 'Looks like a thrilling adventure.');

-- Comments for Fiona's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (16, 1, 'Such a dreamy landscape.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (16, 2, 'Waterfalls are my favorite!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (16, 3, 'Looks straight out of a fairy tale.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (17, 4, 'Nothing beats a forest hike.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (17, 5, 'Feels so fresh and green.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (17, 6, 'Love those lush trees.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (18, 7, 'The fog adds mystery to the photo!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (18, 8, 'Foggy mornings are the best.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (18, 9, 'Makes the scenery look magical.');

-- Comments for George's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (19, 10, 'A perfect beach day!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (19, 11, 'Looks so sunny and warm.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (19, 12, 'Great shot of the shoreline!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (20, 13, 'This scenery is amazing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (20, 14, 'Can’t get enough of those mountains.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (20, 15, 'Nature in its full glory.');


-- Comments for Helen's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (21, 16, 'The lake looks so calm!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (21, 17, 'Would love to go kayaking here!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (21, 18, 'Perfect spot for a picnic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (22, 19, 'Wow, the trees are so tall!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (22, 20, 'Feels like walking into a forest dream.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (22, 1, 'Nothing beats forest air.');

-- Comments for Ian's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (23, 2, 'Rocky landscapes are beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (23, 3, 'Looks like a great place for bouldering!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (23, 4, 'Rugged but stunning.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (24, 5, 'Nothing like a peaceful evening by the beach.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (24, 6, 'Love the soft colors in the sky!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (24, 7, 'Perfect way to end the day.');

-- Comments for Jack's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (25, 8, 'I can almost hear the waterfall.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (25, 9, 'Waterfalls are so relaxing to watch!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (25, 10, 'Stunning capture of nature.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (26, 11, 'The clouds look so dramatic!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (26, 12, 'Rainy days have a special charm.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (26, 13, 'Love the dark sky in this.');

-- Comments for Karen's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (27, 14, 'Such a vibrant city!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (27, 15, 'Urban life at its best.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (27, 16, 'Love the energy in this photo.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (28, 17, 'Feels like a magical forest.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (28, 18, 'Green everywhere! So peaceful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (28, 19, 'Would love to explore this place.');

-- Comments for Leo's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (29, 20, 'Beautiful architecture!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (29, 1, 'Old buildings have so much character.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (29, 2, 'Love the intricate details.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (30, 3, 'Sunrise shots are the best.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (30, 4, 'The early bird catches the best photos!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (30, 5, 'That golden glow is everything.');

-- Comments for Mia's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (31, 6, 'Such a cozy cabin.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (31, 7, 'Looks like the perfect getaway!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (31, 8, 'I’d love to spend a weekend here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (32, 9, 'Love the snowy landscape!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (32, 10, 'Winter is truly magical.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (32, 11, 'The snow looks so fresh.');

-- Comments for Nora's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (33, 12, 'That sunset is unreal.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (33, 13, 'Cotton candy skies!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (33, 14, 'Feels like a painting.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (34, 15, 'So many stars!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (34, 16, 'Night sky shots are so hard to capture.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (34, 17, 'Stargazing heaven.');

-- Comments for Olivia's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (35, 18, 'Desert landscapes are underrated.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (35, 19, 'Love the warm tones in this.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (35, 20, 'Feels like a scene from a movie.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (36, 1, 'The forest is so dense!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (36, 2, 'Looks like an adventure waiting to happen.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (36, 3, 'Love the depth in this shot.');

-- Comments for Paul's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (37, 4, 'So calm and serene.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (37, 5, 'Would be perfect for meditation.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (37, 6, 'The water looks so still.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (38, 7, 'Such a cool architectural shot!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (38, 8, 'This building has character.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (38, 9, 'Old meets new in this shot.');

-- Comments for Quinn's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (39, 10, 'The field looks endless.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (39, 11, 'Golden hour vibes.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (39, 12, 'Love the natural colors.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (40, 13, 'The fog adds so much to this.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (40, 14, 'Foggy days are so beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (40, 15, 'Feels like a scene from a story.');


-- Comments for Rachel's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (41, 16, 'Love the natural colors of this forest.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (41, 17, 'I need a hike like this.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (41, 18, 'Such a peaceful escape.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (42, 19, 'The clear skies look so refreshing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (42, 20, 'Is this a sunset or sunrise? Beautiful!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (42, 1, 'Love the colors in the sky.');

-- Comments for Samuel's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (43, 2, 'Such a rugged mountain view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (43, 3, 'Love the contrast of the clouds and peaks.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (43, 4, 'Feels so remote and untouched.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (44, 5, 'The water looks so clear.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (44, 6, 'Definitely would want to swim here!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (44, 7, 'Such a serene beach vibe.');

-- Comments for Tara's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (45, 8, 'This mountain landscape is breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (45, 9, 'Such an epic view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (45, 10, 'I need to visit this place.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (46, 11, 'Love the feeling of calm in this.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (46, 12, 'The sea looks so inviting!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (46, 13, 'This makes me want to travel so much.');

-- Comments for Uma's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (47, 14, 'Such a powerful waterfall.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (47, 15, 'The sound of the water must be amazing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (47, 16, 'Can feel the energy from here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (48, 17, 'This forest looks straight out of a fairytale.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (48, 18, 'Such a lush, green haven.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (48, 19, 'I’d love to get lost here.');

-- Comments for Vince's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (49, 20, 'That tower is so unique!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (49, 1, 'Such interesting architecture.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (49, 2, 'The details in the design are amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (50, 3, 'That mountain range looks stunning.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (50, 4, 'Wish I could be hiking there.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (50, 5, 'Love the way the light hits the peaks.');

-- Comments for Wendy's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (51, 6, 'Wow, those cliffs look so steep!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (51, 7, 'What a gorgeous view from the top.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (51, 8, 'Such an amazing panorama.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (52, 9, 'Love the warm colors of this sunset.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (52, 10, 'Golden hour is the best hour.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (52, 11, 'This is breathtaking.');

-- Comments for Xavier's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (53, 12, 'Such a clear, bright day.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (53, 13, 'Those mountains look so majestic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (53, 14, 'The view here is phenomenal.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (54, 15, 'Those trees are so tall!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (54, 16, 'Nature at its finest.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (54, 17, 'Feels like a magical forest.');

-- Comments for Yara's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (55, 18, 'The desert looks so vast.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (55, 19, 'So many different shades of sand.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (55, 20, 'Such a serene and quiet place.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (56, 1, 'The night sky is so clear.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (56, 2, 'Stars look so bright in the desert.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (56, 3, 'It must feel amazing to stargaze here.');

-- Comments for Zack's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (57, 4, 'Such a calm and peaceful lake.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (57, 5, 'The reflections in the water are amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (57, 6, 'This makes me want to visit.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (58, 7, 'That ocean looks so inviting.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (58, 8, 'Perfect waves for surfing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (58, 9, 'Can almost feel the breeze.');

-- Comments for Abby's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (59, 10, 'Such beautiful mountains.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (59, 11, 'Would love to hike this trail.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (59, 12, 'The scenery looks so peaceful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (60, 13, 'That view is beyond amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (60, 14, 'What a perfect spot for a picnic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (60, 15, 'A real hidden gem.');


-- Comments for Alice's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (61, 16, 'That sunset is stunning.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (61, 17, 'The colors in the sky are amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (61, 18, 'I wish I was there to see this!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (62, 19, 'Looks so peaceful and quiet.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (62, 20, 'The mountains in the background are breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (62, 1, 'So serene and calming.');

-- Comments for Brooke's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (63, 2, 'The way the light hits the ocean is beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (63, 3, 'Wish I could be here right now!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (63, 4, 'Such a calming view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (64, 5, 'This forest is so lush.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (64, 6, 'Looks like a perfect hiking spot.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (64, 7, 'Nature at its best.');

-- Comments for Carla's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (65, 8, 'Such an incredible mountain range.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (65, 9, 'I would love to trek this area.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (65, 10, 'So remote and wild.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (66, 11, 'This beach looks so inviting.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (66, 12, 'Perfect spot for some beach activities.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (66, 13, 'The clear water is amazing.');

-- Comments for Daria's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (67, 14, 'This waterfall looks so powerful!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (67, 15, 'The sound must be so calming.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (67, 16, 'Such a beautiful natural wonder.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (68, 17, 'The desert is so vast and beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (68, 18, 'The colors in the sand are amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (68, 19, 'I would love to visit here someday.');

-- Comments for Eve's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (69, 20, 'This bridge looks so majestic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (69, 1, 'What a stunning piece of architecture.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (69, 2, 'Such an impressive structure.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (70, 3, 'This mountain range is breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (70, 4, 'I would love to hike this trail.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (70, 5, 'Such a peaceful atmosphere.');

-- Comments for Fred's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (71, 6, 'This lake looks so calm.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (71, 7, 'Such beautiful reflections in the water.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (71, 8, 'This is so tranquil.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (72, 9, 'The ocean looks so vast and endless.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (72, 10, 'So many shades of blue.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (72, 11, 'This makes me want to visit the beach.');

-- Comments for Gwen's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (73, 12, 'This view is straight out of a dream.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (73, 13, 'The colors are so vibrant.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (73, 14, 'What a stunning view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (74, 15, 'That mountain landscape is breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (74, 16, 'I can imagine how peaceful it is there.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (74, 17, 'Such a serene and quiet place.');

-- Comments for Hank's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (75, 18, 'The cliffs are so steep!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (75, 19, 'The view from the top must be amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (75, 20, 'That’s such a dramatic landscape.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (76, 1, 'The forest looks so magical.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (76, 2, 'A perfect place for a hike.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (76, 3, 'The trees are so lush and green.');

-- Comments for Ian's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (77, 4, 'This mountain looks so imposing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (77, 5, 'What a rugged and wild landscape.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (77, 6, 'Such an impressive view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (78, 7, 'The lake looks so still and peaceful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (78, 8, 'Such perfect reflections in the water.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (78, 9, 'This is a perfect getaway.');

-- Comments for Jack's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (79, 10, 'Such an amazing place to visit.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (79, 11, 'This view is so peaceful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (79, 12, 'The mountains look so majestic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (80, 13, 'The sunset looks beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (80, 14, 'I love the colors in the sky.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (80, 15, 'Such a perfect evening.');

-- Comments for Tina's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (81, 16, 'Such a scenic view, wish I was there.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (81, 17, 'Looks like a perfect place for a vacation.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (81, 18, 'The landscape is so picturesque.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (82, 19, 'This cityscape is breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (82, 20, 'I love the skyline at night.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (82, 1, 'The lights really make it pop.');

-- Comments for Uma's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (83, 2, 'Such a perfect day for a hike.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (83, 3, 'I would love to explore this area.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (83, 4, 'The trail looks amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (84, 5, 'Such a beautiful mountain.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (84, 6, 'The views are incredible.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (84, 7, 'The hike must have been challenging.');

-- Comments for Victor's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (85, 8, 'Such a tranquil lake.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (85, 9, 'Looks like a great spot for a picnic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (85, 10, 'What a peaceful retreat.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (86, 11, 'The sunset is amazing!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (86, 12, 'That’s an incredible view of the horizon.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (86, 13, 'The sky looks so dramatic.');

-- Comments for Wendy's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (87, 14, 'The beach is so serene.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (87, 15, 'Such a relaxing atmosphere.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (87, 16, 'I love the calmness of the water.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (88, 17, 'The forest is magical.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (88, 18, 'It looks like an enchanted forest.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (88, 19, 'So much beauty in nature.');

-- Comments for Xander's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (89, 20, 'What a stunning city view.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (89, 1, 'I love the architecture of this place.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (89, 2, 'So much energy in the city.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (90, 3, 'This mountain trail looks so scenic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (90, 4, 'I can almost feel the fresh air.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (90, 5, 'Such a great hike for nature lovers.');

-- Comments for Yara's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (91, 6, 'This waterfall is incredible!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (91, 7, 'I can hear the roar of the water from here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (91, 8, 'Such a powerful display of nature.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (92, 9, 'This sunset over the beach is gorgeous.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (92, 10, 'The colors in the sky are amazing.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (92, 11, 'I wish I could be there right now.');

-- Comments for Zane's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (93, 12, 'The ocean is so calming.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (93, 13, 'I love the waves crashing against the rocks.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (93, 14, 'Such a serene spot.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (94, 15, 'This city at night is so alive!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (94, 16, 'The lights make everything look so vibrant.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (94, 17, 'I love how the city comes alive at night.');

-- Comments for Ava's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (95, 18, 'This view is breathtaking.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (95, 19, 'It must feel amazing to see this in person.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (95, 20, 'The landscape is so dramatic.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (96, 1, 'The beach is so beautiful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (96, 2, 'Such perfect sand and water.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (96, 3, 'This looks like a paradise.');

-- Comments for Ben's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (97, 4, 'The forest looks so peaceful.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (97, 5, 'I would love to walk down that trail.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (97, 6, 'Such a calming environment.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (98, 7, 'This sunset over the mountain is stunning.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (98, 8, 'The sky looks so surreal.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (98, 9, 'Such a breathtaking sight.');

-- Comments for Cassie's Posts
INSERT INTO comments (post_id, user_id, comment_text) VALUES (99, 10, 'What a beautiful park.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (99, 11, 'Such a green and lush area.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (99, 12, 'I would love to have a picnic here.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (100, 13, 'This view is absolutely stunning!');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (100, 14, 'The landscape is so vast and open.');
INSERT INTO comments (post_id, user_id, comment_text) VALUES (100, 15, 'Such a perfect spot to take in nature.');



INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Nice photo! Looks stunning.', 81, 2);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Love the video, very creative!', 81, 3);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Amazing shot, great lighting!', 82, 4);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This video is hilarious! 😂', 82, 5);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This place looks so peaceful, great capture.', 83, 6);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('The video quality is top-notch!', 83, 7);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Incredible view! I need to visit.', 84, 8);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('That video made my day! So funny.', 84, 9);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Such a vibrant photo, great colors.', 85, 10);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Loved the video! Keep posting.', 85, 11);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This photo is so peaceful, I love it.', 86, 12);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('What a cool video! Super fun.', 86, 13);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This photo is so calming to look at.', 87, 14);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This video is awesome! Great editing.', 87, 15);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Beautiful scenery, great photo!', 88, 16);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Loved the video, so funny and creative!', 88, 17);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Great composition, really enjoyed the view.', 89, 18);
INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Such a cool video, it made me laugh.', 89, 19);

INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This is a gorgeous shot. Very peaceful.', 90, 20);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Love the video, it’s very interesting.', 90, 21);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('What a perfect moment captured in the photo.', 91, 22);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Amazing video, love the creativity.', 91, 23);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This is one of the best photos I’ve seen today!', 92, 24);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Fantastic video, really well made.', 92, 25);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Such a calming photo, really relaxing to look at.', 93, 26);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('The video is so smooth, love the transitions.', 93, 27);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('The photo is so vibrant and lively.', 94, 28);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Amazing video, very fun to watch.', 94, 29);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('The photo looks so picturesque, love it.', 95, 30);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Such a great video, it brought a smile to my face.', 95, 31);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This photo has great lighting, love it.', 96, 32);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Fantastic video! So entertaining.', 96, 33);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This photo is gorgeous, very scenic.', 97, 34);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Great video! Very creative editing.', 97, 35);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Love the colors in this photo, so bright.', 98, 36);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This video is very inspirational, great job.', 98, 37);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('This photo is so well composed, I love the angle.', 99, 38);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Such a funny video, made me laugh so much.', 99, 39);

-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Incredible photo! The view is breathtaking.', 100, 40);
-- INSERT INTO comments (comment_text, post_id, user_id) VALUES ('Loved the video, it was really entertaining.', 100, 41);

-- Extended post_likes entries with varied user_id and post_id combinations
INSERT ALL
    INTO post_likes (user_id, post_id) VALUES (1, 1)
    INTO post_likes (user_id, post_id) VALUES (1, 2)
    INTO post_likes (user_id, post_id) VALUES (1, 3)
    INTO post_likes (user_id, post_id) VALUES (2, 1)
    INTO post_likes (user_id, post_id) VALUES (2, 3)
    INTO post_likes (user_id, post_id) VALUES (2, 4)
    INTO post_likes (user_id, post_id) VALUES (3, 2)
    INTO post_likes (user_id, post_id) VALUES (3, 5)
    INTO post_likes (user_id, post_id) VALUES (3, 6)
    INTO post_likes (user_id, post_id) VALUES (4, 1)
    INTO post_likes (user_id, post_id) VALUES (4, 4)
    INTO post_likes (user_id, post_id) VALUES (4, 5)
    INTO post_likes (user_id, post_id) VALUES (5, 2)
    INTO post_likes (user_id, post_id) VALUES (5, 6)
    INTO post_likes (user_id, post_id) VALUES (5, 7)
    INTO post_likes (user_id, post_id) VALUES (6, 3)
    INTO post_likes (user_id, post_id) VALUES (6, 8)
    INTO post_likes (user_id, post_id) VALUES (6, 9)
    INTO post_likes (user_id, post_id) VALUES (7, 4)
    INTO post_likes (user_id, post_id) VALUES (7, 10)
    INTO post_likes (user_id, post_id) VALUES (7, 11)
    INTO post_likes (user_id, post_id) VALUES (8, 5)
    INTO post_likes (user_id, post_id) VALUES (8, 12)
    INTO post_likes (user_id, post_id) VALUES (8, 13)
    INTO post_likes (user_id, post_id) VALUES (9, 6)
    INTO post_likes (user_id, post_id) VALUES (9, 14)
    INTO post_likes (user_id, post_id) VALUES (9, 15)
    INTO post_likes (user_id, post_id) VALUES (10, 7)
    INTO post_likes (user_id, post_id) VALUES (10, 16)
    INTO post_likes (user_id, post_id) VALUES (10, 17)
    INTO post_likes (user_id, post_id) VALUES (11, 8)
    INTO post_likes (user_id, post_id) VALUES (11, 18)
    INTO post_likes (user_id, post_id) VALUES (11, 19)
    INTO post_likes (user_id, post_id) VALUES (12, 9)
    INTO post_likes (user_id, post_id) VALUES (12, 20)
    INTO post_likes (user_id, post_id) VALUES (12, 21)
    INTO post_likes (user_id, post_id) VALUES (13, 10)
    INTO post_likes (user_id, post_id) VALUES (13, 22)
    INTO post_likes (user_id, post_id) VALUES (13, 23)
    INTO post_likes (user_id, post_id) VALUES (14, 11)
    INTO post_likes (user_id, post_id) VALUES (14, 24)
    INTO post_likes (user_id, post_id) VALUES (14, 25)
    INTO post_likes (user_id, post_id) VALUES (15, 12)
    INTO post_likes (user_id, post_id) VALUES (15, 26)
    INTO post_likes (user_id, post_id) VALUES (15, 27)
    INTO post_likes (user_id, post_id) VALUES (16, 13)
    INTO post_likes (user_id, post_id) VALUES (16, 28)
    INTO post_likes (user_id, post_id) VALUES (16, 29)
    INTO post_likes (user_id, post_id) VALUES (17, 14)
    INTO post_likes (user_id, post_id) VALUES (17, 30)
    INTO post_likes (user_id, post_id) VALUES (17, 31)
    INTO post_likes (user_id, post_id) VALUES (18, 15)
    INTO post_likes (user_id, post_id) VALUES (18, 32)
    INTO post_likes (user_id, post_id) VALUES (18, 33)
    INTO post_likes (user_id, post_id) VALUES (19, 16)
    INTO post_likes (user_id, post_id) VALUES (19, 34)
    INTO post_likes (user_id, post_id) VALUES (19, 35)
    INTO post_likes (user_id, post_id) VALUES (20, 17)
    INTO post_likes (user_id, post_id) VALUES (20, 36)
    INTO post_likes (user_id, post_id) VALUES (20, 37)
SELECT 1 FROM DUAL;-- Insert into comment_likes for 50 comments
INSERT ALL
    INTO comment_likes (user_id, comment_id) VALUES (1, 1)
    INTO comment_likes (user_id, comment_id) VALUES (2, 1)
    INTO comment_likes (user_id, comment_id) VALUES (3, 2)
    INTO comment_likes (user_id, comment_id) VALUES (4, 2)
    INTO comment_likes (user_id, comment_id) VALUES (5, 3)
    INTO comment_likes (user_id, comment_id) VALUES (6, 4)
    INTO comment_likes (user_id, comment_id) VALUES (7, 4)
    INTO comment_likes (user_id, comment_id) VALUES (8, 5)
    INTO comment_likes (user_id, comment_id) VALUES (9, 5)
    INTO comment_likes (user_id, comment_id) VALUES (10, 6)
    INTO comment_likes (user_id, comment_id) VALUES (11, 7)
    INTO comment_likes (user_id, comment_id) VALUES (12, 7)
    INTO comment_likes (user_id, comment_id) VALUES (13, 8)
    INTO comment_likes (user_id, comment_id) VALUES (14, 8)
    INTO comment_likes (user_id, comment_id) VALUES (15, 9)
    INTO comment_likes (user_id, comment_id) VALUES (16, 10)
    INTO comment_likes (user_id, comment_id) VALUES (17, 10)
    INTO comment_likes (user_id, comment_id) VALUES (18, 11)
    INTO comment_likes (user_id, comment_id) VALUES (19, 11)
    INTO comment_likes (user_id, comment_id) VALUES (20, 12)
    INTO comment_likes (user_id, comment_id) VALUES (1, 13)
    INTO comment_likes (user_id, comment_id) VALUES (2, 14)
    INTO comment_likes (user_id, comment_id) VALUES (3, 14)
    INTO comment_likes (user_id, comment_id) VALUES (4, 15)
    INTO comment_likes (user_id, comment_id) VALUES (5, 15)
    INTO comment_likes (user_id, comment_id) VALUES (6, 16)
    INTO comment_likes (user_id, comment_id) VALUES (7, 17)
    INTO comment_likes (user_id, comment_id) VALUES (8, 17)
    INTO comment_likes (user_id, comment_id) VALUES (9, 18)
    INTO comment_likes (user_id, comment_id) VALUES (10, 19)
    INTO comment_likes (user_id, comment_id) VALUES (11, 20)
    INTO comment_likes (user_id, comment_id) VALUES (12, 21)
    INTO comment_likes (user_id, comment_id) VALUES (13, 22)
    INTO comment_likes (user_id, comment_id) VALUES (14, 23)
    INTO comment_likes (user_id, comment_id) VALUES (15, 24)
    INTO comment_likes (user_id, comment_id) VALUES (16, 25)
    INTO comment_likes (user_id, comment_id) VALUES (17, 26)
    INTO comment_likes (user_id, comment_id) VALUES (18, 27)
    INTO comment_likes (user_id, comment_id) VALUES (19, 28)
    INTO comment_likes (user_id, comment_id) VALUES (20, 29)
    INTO comment_likes (user_id, comment_id) VALUES (1, 30)
    INTO comment_likes (user_id, comment_id) VALUES (2, 31)
    INTO comment_likes (user_id, comment_id) VALUES (3, 32)
    INTO comment_likes (user_id, comment_id) VALUES (4, 33)
    INTO comment_likes (user_id, comment_id) VALUES (5, 34)
    INTO comment_likes (user_id, comment_id) VALUES (6, 35)
    INTO comment_likes (user_id, comment_id) VALUES (7, 36)
    INTO comment_likes (user_id, comment_id) VALUES (8, 37)
    INTO comment_likes (user_id, comment_id) VALUES (9, 38)
    INTO comment_likes (user_id, comment_id) VALUES (10, 39)
SELECT 1 FROM DUAL;
-- Insert into follows for 50 follows
INSERT ALL
    INTO follows (follower_id, followee_id) VALUES (1, 2)
    INTO follows (follower_id, followee_id) VALUES (1, 3)
    INTO follows (follower_id, followee_id) VALUES (1, 4)
    INTO follows (follower_id, followee_id) VALUES (1, 5)
    INTO follows (follower_id, followee_id) VALUES (1, 6)
    INTO follows (follower_id, followee_id) VALUES (1, 7)
    INTO follows (follower_id, followee_id) VALUES (2, 3)
    INTO follows (follower_id, followee_id) VALUES (3, 4)
    INTO follows (follower_id, followee_id) VALUES (4, 5)
    INTO follows (follower_id, followee_id) VALUES (5, 6)
    INTO follows (follower_id, followee_id) VALUES (6, 7)
    INTO follows (follower_id, followee_id) VALUES (7, 8)
    INTO follows (follower_id, followee_id) VALUES (8, 9)
    INTO follows (follower_id, followee_id) VALUES (9, 10)
    INTO follows (follower_id, followee_id) VALUES (10, 11)
    INTO follows (follower_id, followee_id) VALUES (11, 12)
    INTO follows (follower_id, followee_id) VALUES (12, 13)
    INTO follows (follower_id, followee_id) VALUES (13, 14)
    INTO follows (follower_id, followee_id) VALUES (14, 15)
    INTO follows (follower_id, followee_id) VALUES (15, 16)
    INTO follows (follower_id, followee_id) VALUES (16, 17)
    INTO follows (follower_id, followee_id) VALUES (17, 18)
    INTO follows (follower_id, followee_id) VALUES (18, 19)
    INTO follows (follower_id, followee_id) VALUES (19, 20)
    INTO follows (follower_id, followee_id) VALUES (20, 1)
    INTO follows (follower_id, followee_id) VALUES (1, 11)
    INTO follows (follower_id, followee_id) VALUES (2, 12)
    INTO follows (follower_id, followee_id) VALUES (3, 13)
    INTO follows (follower_id, followee_id) VALUES (4, 14)
    INTO follows (follower_id, followee_id) VALUES (5, 15)
    INTO follows (follower_id, followee_id) VALUES (6, 16)
    INTO follows (follower_id, followee_id) VALUES (7, 17)
    INTO follows (follower_id, followee_id) VALUES (8, 18)
    INTO follows (follower_id, followee_id) VALUES (9, 19)
    INTO follows (follower_id, followee_id) VALUES (10, 20)
    INTO follows (follower_id, followee_id) VALUES (11, 1)
    INTO follows (follower_id, followee_id) VALUES (12, 2)
    INTO follows (follower_id, followee_id) VALUES (13, 3)
    INTO follows (follower_id, followee_id) VALUES (14, 4)
    INTO follows (follower_id, followee_id) VALUES (15, 5)
    INTO follows (follower_id, followee_id) VALUES (16, 6)
    INTO follows (follower_id, followee_id) VALUES (17, 7)
    INTO follows (follower_id, followee_id) VALUES (18, 8)
    INTO follows (follower_id, followee_id) VALUES (19, 9)
    INTO follows (follower_id, followee_id) VALUES (20, 10)
    INTO follows (follower_id, followee_id) VALUES (1, 12)
    INTO follows (follower_id, followee_id) VALUES (2, 13)
    INTO follows (follower_id, followee_id) VALUES (3, 14)
    INTO follows (follower_id, followee_id) VALUES (4, 15)
    INTO follows (follower_id, followee_id) VALUES (5, 16)
    INTO follows (follower_id, followee_id) VALUES (6, 17)
    INTO follows (follower_id, followee_id) VALUES (7, 18)
    INTO follows (follower_id, followee_id) VALUES (8, 19)
    INTO follows (follower_id, followee_id) VALUES (9, 20)
    INTO follows (follower_id, followee_id) VALUES (10, 1)
SELECT 1 FROM DUAL;
-- Insert into hashtags for 50 hashtags
INSERT INTO hashtags (hashtag_name)
SELECT hashtag_name
FROM (
    SELECT '#travel' AS hashtag_name FROM dual UNION ALL
    SELECT '#photography' FROM dual UNION ALL
    SELECT '#nature' FROM dual UNION ALL
    SELECT '#food' FROM dual UNION ALL
    SELECT '#technology' FROM dual UNION ALL
    SELECT '#art' FROM dual UNION ALL
    SELECT '#sports' FROM dual UNION ALL
    SELECT '#health' FROM dual UNION ALL
    SELECT '#education' FROM dual UNION ALL
    SELECT '#science' FROM dual UNION ALL
    SELECT '#fitness' FROM dual UNION ALL
    SELECT '#lifestyle' FROM dual UNION ALL
    SELECT '#music' FROM dual UNION ALL
    SELECT '#fashion' FROM dual UNION ALL
    SELECT '#beauty' FROM dual UNION ALL
    SELECT '#design' FROM dual UNION ALL
    SELECT '#innovation' FROM dual UNION ALL
    SELECT '#inspiration' FROM dual UNION ALL
    SELECT '#motivation' FROM dual UNION ALL
    SELECT '#quotes' FROM dual UNION ALL
    SELECT '#love' FROM dual UNION ALL
    SELECT '#family' FROM dual UNION ALL
    SELECT '#friends' FROM dual UNION ALL
    SELECT '#fun' FROM dual UNION ALL
    SELECT '#adventure' FROM dual UNION ALL
    SELECT '#history' FROM dual UNION ALL
    SELECT '#culture' FROM dual UNION ALL
    SELECT '#pets' FROM dual UNION ALL
    SELECT '#wildlife' FROM dual UNION ALL
    SELECT '#finance' FROM dual UNION ALL
    SELECT '#economy' FROM dual UNION ALL
    SELECT '#politics' FROM dual UNION ALL
    SELECT '#business' FROM dual UNION ALL
    SELECT '#jobs' FROM dual UNION ALL
    SELECT '#careers' FROM dual UNION ALL
    SELECT '#skills' FROM dual UNION ALL
    SELECT '#books' FROM dual UNION ALL
    SELECT '#writing' FROM dual UNION ALL
    SELECT '#technologynews' FROM dual UNION ALL
    SELECT '#events' FROM dual UNION ALL
    SELECT '#holidays' FROM dual UNION ALL
    SELECT '#party' FROM dual UNION ALL
    SELECT '#memes' FROM dual UNION ALL
    SELECT '#humor' FROM dual UNION ALL
    SELECT '#photography_life' FROM dual UNION ALL
    SELECT '#architecture' FROM dual UNION ALL
    SELECT '#realestate' FROM dual UNION ALL
    SELECT '#cars' FROM dual UNION ALL
    SELECT '#motorcycles' FROM dual UNION ALL
    SELECT '#gaming' FROM dual
)
WHERE NOT EXISTS (
    SELECT 1
    FROM hashtags h
    WHERE h.hashtag_name = hashtag_name
);







INSERT INTO login (user_id) VALUES 
    (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);
-- Insert into location
-- Insert into location for 50 entries
INSERT INTO location (location_name, post_id) VALUES 
    ('New York', 1), ('Paris', 2), ('Tokyo', 3), ('Berlin', 4), ('Sydney', 5),
    ('London', 6), ('Los Angeles', 7), ('Rome', 8), ('Dubai', 9), ('Amsterdam', 10),
    ('San Francisco', 11), ('Moscow', 12), ('Chicago', 13), ('Mumbai', 14), ('Hong Kong', 15),
    ('Toronto', 16), ('Singapore', 17), ('Bangkok', 18), ('Istanbul', 19), ('Mexico City', 20),
    ('Cairo', 21), ('Vienna', 22), ('Seoul', 23), ('Madrid', 24), ('Dublin', 25),
    ('Brussels', 26), ('Lisbon', 27), ('Jakarta', 28), ('Athens', 29), ('Cape Town', 30),
    ('Beijing', 31), ('Miami', 32), ('Kuala Lumpur', 33), ('Stockholm', 34), ('Warsaw', 35),
    ('Budapest', 36), ('Munich', 37), ('Barcelona', 38), ('Helsinki', 39), ('Oslo', 40),
    ('Prague', 41), ('Zurich', 42), ('Nairobi', 43), ('Bogota', 44), ('Lima', 45),
    ('Riyadh', 46), ('Manila', 47), ('Santiago', 48), ('Buenos Aires', 49), ('Kyoto', 50);

-- User 1 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (1, 10);

-- User 2 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (2, 14);

-- User 3 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (3, 16);

-- User 4 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 17);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (4, 18);

-- User 5 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (5, 15);

-- User 6 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (6, 16);

-- User 7 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (7, 17);

-- User 8 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (8, 18);

-- User 9 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 16);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (9, 17);

-- User 10 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 17);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (10, 18);

-- User 11 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (11, 19);

-- User 12 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 16);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 17);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (12, 20);

-- User 13 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 18);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (13, 19);

-- User 14 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 17);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (14, 20);

-- User 15 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (15, 16);

-- User 16 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 13);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (16, 20);

-- User 17 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 16);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 18);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (17, 19);

-- User 18 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 1);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 8);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 15);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (18, 20);

-- User 19 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 7);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 11);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 16);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (19, 18);

-- User 20 follows 10 hashtags
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 2);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 3);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 4);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 5);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 6);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 9);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 10);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 12);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 14);
INSERT INTO hashtag_follow (user_id, hashtag_id) VALUES (20, 17);



-- Post 1 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (1, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (1, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (1, 3);

-- Post 2 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (2, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (2, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (2, 5);

-- Post 3 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (3, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (3, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (3, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (3, 7);

-- Post 4 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (4, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (4, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (4, 9);

-- Post 5 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (5, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (5, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (5, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (5, 12);

-- Post 6 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (6, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (6, 11);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (6, 13);

-- Post 7 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (7, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (7, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (7, 14);

-- Post 8 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (8, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (8, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (8, 15);

-- Post 9 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (9, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (9, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (9, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (9, 16);

-- Post 10 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (10, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (10, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (10, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (10, 17);

-- Post 11 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (11, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (11, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (11, 8);

-- Post 12 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (12, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (12, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (12, 10);

-- Post 13 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (13, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (13, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (13, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (13, 11);

-- Post 14 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (14, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (14, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (14, 12);

-- Post 15 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (15, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (15, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (15, 13);

-- Post 16 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (16, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (16, 14);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (16, 15);

-- Post 17 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (17, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (17, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (17, 5);

-- Post 18 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (18, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (18, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (18, 10);

-- Post 19 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (19, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (19, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (19, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (19, 11);

-- Post 20 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (20, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (20, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (20, 13);

-- Post 21 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (21, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (21, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (21, 12);

-- Post 22 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (22, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (22, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (22, 8);

-- Post 23 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (23, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (23, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (23, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (23, 14);

-- Post 24 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (24, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (24, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (24, 15);

-- Post 25 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (25, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (25, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (25, 13);

-- Post 26 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (26, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (26, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (26, 14);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (26, 15);

-- Post 27 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (27, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (27, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (27, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (27, 10);

-- Post 28 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (28, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (28, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (28, 11);

-- Post 29 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (29, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (29, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (29, 13);

-- Post 30 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (30, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (30, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (30, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (30, 12);

-- Post 31 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (31, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (31, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (31, 15);

-- Post 32 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (32, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (32, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (32, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (32, 12);

-- Post 33 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (33, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (33, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (33, 14);

-- Post 34 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (34, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (34, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (34, 15);

-- Post 35 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (35, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (35, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (35, 12);

-- Post 36 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (36, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (36, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (36, 13);

-- Post 37 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (37, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (37, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (37, 9);

-- Post 38 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (38, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (38, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (38, 14);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (38, 12);

-- Post 39 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (39, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (39, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (39, 11);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (39, 15);

-- Post 40 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (40, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (40, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (40, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (40, 12);

-- Post 41 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (41, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (41, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (41, 13);

-- Post 42 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (42, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (42, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (42, 12);

-- Post 43 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (43, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (43, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (43, 13);

-- Post 44 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (44, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (44, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (44, 9);

-- Post 45 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (45, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (45, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (45, 15);

-- Post 46 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (46, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (46, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (46, 10);

-- Post 47 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (47, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (47, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (47, 8);

-- Post 48 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (48, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (48, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (48, 10);

-- Post 49 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (49, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (49, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (49, 11);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (49, 15);

-- Post 50 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (50, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (50, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (50, 14);

-- Post 51 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (51, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (51, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (51, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (51, 15);

-- Post 52 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (52, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (52, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (52, 10);

-- Post 53 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (53, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (53, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (53, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (53, 13);

-- Post 54 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (54, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (54, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (54, 11);

-- Post 55 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (55, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (55, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (55, 15);

-- Post 56 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (56, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (56, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (56, 13);

-- Post 57 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (57, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (57, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (57, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (57, 8);

-- Post 58 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (58, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (58, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (58, 15);

-- Post 59 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (59, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (59, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (59, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (59, 10);

-- Post 60 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (60, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (60, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (60, 13);

-- Post 61 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (61, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (61, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (61, 10);

-- Post 62 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (62, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (62, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (62, 12);

-- Post 63 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (63, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (63, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (63, 9);

-- Post 64 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (64, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (64, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (64, 11);

-- Post 65 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (65, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (65, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (65, 12);

-- Post 66 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (66, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (66, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (66, 10);

-- Post 67 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (67, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (67, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (67, 14);

-- Post 68 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (68, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (68, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (68, 10);

-- Post 69 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (69, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (69, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (69, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (69, 8);

-- Post 70 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (70, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (70, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (70, 13);

-- Post 71 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (71, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (71, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (71, 8);

-- Post 72 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (72, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (72, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (72, 13);

-- Post 73 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (73, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (73, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (73, 15);

-- Post 74 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (74, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (74, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (74, 12);

-- Post 75 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (75, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (75, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (75, 15);

-- Post 76 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (76, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (76, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (76, 12);

-- Post 77 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (77, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (77, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (77, 15);

-- Post 78 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (78, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (78, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (78, 9);

-- Post 79 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (79, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (79, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (79, 12);

-- Post 80 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (80, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (80, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (80, 9);

-- Post 81 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (81, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (81, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (81, 9);

-- Post 82 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (82, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (82, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (82, 12);

-- Post 83 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (83, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (83, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (83, 13);

-- Post 84 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (84, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (84, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (84, 15);

-- Post 85 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (85, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (85, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (85, 7);

-- Post 86 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (86, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (86, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (86, 10);

-- Post 87 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (87, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (87, 12);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (87, 6);

-- Post 88 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (88, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (88, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (88, 13);

-- Post 89 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (89, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (89, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (89, 8);

-- Post 90 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (90, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (90, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (90, 12);

-- Post 91 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (91, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (91, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (91, 8);

-- Post 92 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (92, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (92, 10);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (92, 12);

-- Post 93 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (93, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (93, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (93, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (93, 15);

-- Post 94 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (94, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (94, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (94, 13);

-- Post 95 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (95, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (95, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (95, 10);

-- Post 96 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (96, 3);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (96, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (96, 9);

-- Post 97 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (97, 2);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (97, 8);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (97, 12);

-- Post 98 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (98, 4);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (98, 6);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (98, 9);

-- Post 99 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (99, 1);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (99, 7);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (99, 12);

-- Post 100 tags
INSERT INTO post_tags (post_id, hashtag_id) VALUES (100, 5);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (100, 9);
INSERT INTO post_tags (post_id, hashtag_id) VALUES (100, 13);
