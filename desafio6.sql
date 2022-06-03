SELECT
MIN(f.valor) AS faturamento_minimo,
MAX(f.valor) AS faturamento_maximo,
ROUND(AVG(f.valor), 2) AS faturamento_medio,
SUM(f.valor) AS faturamento_total
FROM
SpotifyClone.planos AS f
INNER JOIN SpotifyClone.usuarios AS u ON f.plano_id = u.plano_id;