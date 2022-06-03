SELECT
COUNT(*) AS quantidade_musicas_no_historico
FROM
SpotifyClone.historico_reproducao AS h
INNER JOIN SpotifyClone.usuarios AS u ON h.usuario_id = u.usuario_id
WHERE
u.nome LIKE 'Bill';