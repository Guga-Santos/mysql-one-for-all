SELECT 
	COUNT(history.song_id) AS 'quantidade_musicas_no_historico'
    FROM SpotifyClone.users AS users
    
    INNER JOIN SpotifyClone.history AS history
    ON history.user_id = users.user_id
    AND users.user_name = 'Bill';