 SELECT 
	can.cancao AS nome,
	COUNT(hist.cancao_id) AS reproducoes
	FROM SpotifyClone.cancao AS can
	INNER JOIN
	SpotifyClone.historico_reproducao AS hist
	ON can.cancao_id = hist.cancao_id
    INNER JOIN SpotifyClone.usuario AS usuario
    ON usuario.usuario_id = hist.usuario_id
    WHERE usuario.plano_id = 1 OR usuario.plano_id = 4
	GROUP BY can.cancao
	ORDER BY can.cancao ASC;
    