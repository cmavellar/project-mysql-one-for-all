SELECT art.artista,
album.album,
COUNT(seg.usuario_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS album
ON art.artista_id = album.artista_id
INNER JOIN SpotifyClone.seguindo_artistas AS seg
ON seg.artista_id = album.artista_id
GROUP BY art.artista, album.album
ORDER BY seguidores DESC, 
art.artista ASC,
album.album ASC;