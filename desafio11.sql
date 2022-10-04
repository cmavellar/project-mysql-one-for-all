SELECT 
    cancao AS nome_musica,
    CASE
        WHEN cancao LIKE '%Bard%' THEN REPLACE(cancao, 'Bard', 'QA')
        WHEN cancao LIKE '%Amar%' THEN REPLACE(cancao, 'Amar', 'Code Review')
        WHEN cancao LIKE '%Pais%' THEN REPLACE(cancao, 'Pais', 'Pull Requests')
        WHEN cancao LIKE '%SOUL%' THEN REPLACE(cancao, 'SOUL', 'CODE')
        WHEN cancao LIKE '%SUPERSTAR%' THEN REPLACE(cancao, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
FROM
    SpotifyClone.cancao
WHERE
  cancao IN (
    'The Bard’s Song',
    'O Medo de Amar é o Medo de Ser Livre',
    'Como Nossos Pais',
    'BREAK MY SOUL',
    'ALIEN SUPERSTAR'
  )
ORDER BY cancao DESC;