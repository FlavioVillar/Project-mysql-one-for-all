SELECT 
a.nome AS artista,
al.nome AS album,
COUNT(s.artista_id) AS seguidores

FROM 
SpotifyClone.seguindo_artistas AS s
INNER JOIN SpotifyClone.artistas AS a ON a.artista_id = s.artista_id
INNER JOIN SpotifyClone.albuns AS al ON al.artista_id = a.artista_id
GROUP BY
al.nome, s.artista_id, a.nome
ORDER BY
seguidores DESC, artista ASC, album ASC;

