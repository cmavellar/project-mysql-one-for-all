SELECT
can.cancao AS cancao,
COUNT(hist.cancao_id) AS reproducoes
FROM 
SpotifyClone.cancao AS can
INNER JOIN
SpotifyClone.historico_reproducao AS hist
ON can.cancao_id = hist.cancao_id
GROUP BY can.cancao
ORDER BY reproducoes DESC, can.cancao ASC
LIMIT 2;
