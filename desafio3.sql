SELECT 
	user_name AS 'usuario',
    COUNT(history.song_id) as 'qtde_musicas_ouvidas',
    ROUND(SUM(songs.song_duration)/60 , 2) as 'total_minutos'
FROM SpotifyClone.users AS users
    
    INNER JOIN SpotifyClone.history AS history
    ON users.user_id = history.user_id
    
    INNER JOIN SpotifyClone.songs as songs
    ON history.song_id = songs.song_id
    
    GROUP BY users.user_name
    ORDER BY users.user_name
    ;