SELECT 
(
	SELECT COUNT(cancao_id)
	FROM SpotifyClone.historico_reproducao
	WHERE usuario.usuario_id = historico_reproducao.usuario_id
) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario
WHERE usuario = 'Barbara Liskov';

