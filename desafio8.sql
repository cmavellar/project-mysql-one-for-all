SELECT artista.artista, 
album.album
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.artista_id = album.artista_id
WHERE artista = 'Elis Regina';