SELECT usuario.usuario,
COUNT(hist.cancao_id) AS qt_de_musicas_ouvidas,
ROUND((SUM(can.duracao_segundos)/ 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_reproducao AS hist
ON usuario.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.cancao AS can
ON can.cancao_id = hist.cancao_id
GROUP BY usuario.usuario
ORDER BY usuario.usuario;