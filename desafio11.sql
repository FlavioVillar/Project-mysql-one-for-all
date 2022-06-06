SELECT
    m.nome AS nome_musica,
    CASE
        WHEN m.nome  LIKE '%Streets' THEN REPLACE(m.nome , 'Streets', 'Code Review')
        WHEN m.nome  LIKE '%Her Own' THEN REPLACE(m.nome , 'Her Own', 'Trybe')
        WHEN m.nome  LIKE '%Inner Fire' THEN REPLACE(m.nome , 'Inner Fire', 'Project')
        WHEN m.nome  LIKE '%Silly' THEN REPLACE(m.nome , 'Silly', 'Nice')
        WHEN m.nome  LIKE '%Circus' THEN REPLACE(m.nome , 'Circus', 'Pull Request')
    END AS novo_nome
FROM
    SpotifyClone.musicas AS m
WHERE
    musica_id IN (18, 3, 4, 15, 6)
ORDER BY
    m.nome;

 

