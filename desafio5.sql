SELECT song_name AS 'cancao',
COUNT(history.song_id) AS 'reproducoes' 
FROM SpotifyClone.songs AS songs

INNER JOIN SpotifyClone.history AS history
ON history.song_id = songs.song_id

GROUP BY songs.song_name
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2
;
