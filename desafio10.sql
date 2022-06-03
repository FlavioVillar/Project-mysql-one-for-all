SELECT
m.nome AS nome,
COUNT(h.musica_id) AS reproducoes

FROM
SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducao AS h ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuarios AS u ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.planos AS p ON p.plano_id = u.plano_id
WHERE
p.nome = 'gratuito'
OR p.nome = 'pessoal'
GROUP BY
h.musica_id 
ORDER BY
nome;