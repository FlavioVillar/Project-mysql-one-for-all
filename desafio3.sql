SELECT
u.nome AS usuario,
COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(m.duracao / 60), 2) AS total_minutos
FROM
 SpotifyClone.usuarios AS u
  INNER JOIN SpotifyClone.historico_reproducao AS h ON u.usuario_id = h.usuario_id
  INNER JOIN SpotifyClone.musicas AS m ON h.musica_id = m.musica_id
GROUP BY
u.nome
ORDER BY
u.nome;



