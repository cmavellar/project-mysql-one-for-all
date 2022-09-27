SELECT DISTINCT usuario.usuario, 
	(SELECT IF(YEAR(his.data_reproducao) >= 2021, 'Usuário ativo', 'Usuário inativo')
		FROM  SpotifyClone.historico_reproducao AS his 
		WHERE his.usuario_id = usuario.usuario_id
		ORDER BY his.data_reproducao DESC
		LIMIT 1) AS status_usuario
FROM SpotifyClone.usuario AS usuario
ORDER BY usuario.usuario;