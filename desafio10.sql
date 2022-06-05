SELECT
	song_name AS 'nome',
    COUNT(history.song_id) AS 'reproducoes'
    FROM SpotifyClone.songs AS songs
    
    INNER JOIN SpotifyClone.history AS history
    ON history.song_id = songs.song_id
    
    INNER JOIN SpotifyClone.users as users
    ON users.user_id = history.user_id AND users.plan_id IN(1, 3)

GROUP BY song_name
ORDER BY song_name;