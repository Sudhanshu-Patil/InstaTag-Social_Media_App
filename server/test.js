app.get('/userfeed', async (req, res) => {
    const userId = req.cookies.user_id;

    if (!userId) {
        return res.status(401).send("Unauthorized: No user_id cookie found");
    }

    console.log("Fetching feed for user:", userId);

    try {
        const result = await connection.execute(
            `
            BEGIN
                show_user_feed(:user_id_in, :posts_cursor);
            END;
            `,
            {
                user_id_in: userId,
                posts_cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT }
            }
        );

        // Fetch rows from the cursor
        const resultSet = result.outBinds.posts_cursor;
        const posts = [];
        let row;

        while ((row = await resultSet.getRow())) {
            posts.push({
                post_id: row[0],
                user_id: row[1],
                caption: row[2],
                created_at: row[3],
                photo_url: row[4] || null,
                video_url: row[5] || null
            });
        }

        await resultSet.close();

        console.log("Found posts:", posts);

        if (posts.length === 0) {
            // res.render('feed', { posts });
            res.send("No posts found");

        } else {
            // res.render('feed', { posts });
            res.send(posts);
        }

    } catch (err) {
        console.error("Error fetching user feed:", err);
        res.status(500).send("Error fetching user feed: " + err.message);
    }
});