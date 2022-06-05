SELECT
	artist_name AS 'artista',
    albums.album_name AS 'album',
    COUNT(favorites.artist_id) AS 'seguidores'
    FROM SpotifyClone.artists as artists
    
    INNER JOIN SpotifyClone.albums AS albums
    ON albums.artist_id = artists.artist_id
    
    INNER JOIN SpotifyClone.favorites AS favorites
    ON favorites.artist_id = artists.artist_id
    
    GROUP BY artist_name, albums.album_name
    ORDER BY seguidores DESC, artist_name, albums.album_name 
    ;