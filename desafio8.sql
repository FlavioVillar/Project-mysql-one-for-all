SELECT
m.nome AS artista,
al.nome AS album

FROM
SpotifyClone.artistas AS m
INNER JOIN SpotifyClone.albuns AS al ON m.artista_id = al.artista_id
WHERE
m.nome = 'Walter Phoenix';
