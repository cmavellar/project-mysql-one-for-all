SELECT
FORMAT(MIN(plano.valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(plano.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(plano.valor_plano), 2) AS faturamento_medio,
FORMAT(SUM(plano.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.plano AS plano
ON usuario.plano_id = plano.plano_id;