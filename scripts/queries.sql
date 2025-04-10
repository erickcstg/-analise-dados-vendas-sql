-- Receita total gerada pelas vendas
SELECT 
    SUM(COALESCE(p.preco, 0) * COALESCE(v.quantidade, 0)) AS receita_total
FROM 
    Vendas v
JOIN 
    Produtos p ON v.produto_id = p.id;

-- Produto mais vendido (em quantidade)
SELECT TOP 1 -- Substituindo LIMIT por TOP para SQL Server
    p.nome AS produto,
    SUM(COALESCE(v.quantidade, 0)) AS total_vendido
FROM 
    Vendas v
JOIN 
    Produtos p ON v.produto_id = p.id
GROUP BY 
    p.nome
ORDER BY 
    total_vendido DESC;

-- Vendas por região
SELECT 
    r.nome AS regiao,
    COUNT(v.id) AS total_vendas,
    SUM(COALESCE(p.preco, 0) * COALESCE(v.quantidade, 0)) AS receita_por_regiao
FROM 
    Vendas v
JOIN 
    Regioes r ON v.regiao_id = r.id
JOIN 
    Produtos p ON v.produto_id = p.id
GROUP BY 
    r.nome
ORDER BY 
    receita_por_regiao DESC;

-- Clientes que mais compraram (em valor)
SELECT TOP 5 -- Substituindo LIMIT por TOP para SQL Server
    c.nome AS cliente,
    SUM(COALESCE(p.preco, 0) * COALESCE(v.quantidade, 0)) AS total_gasto
FROM 
    Vendas v
JOIN 
    Clientes c ON v.cliente_id = c.id
JOIN 
    Produtos p ON v.produto_id = p.id
GROUP BY 
    c.nome
ORDER BY 
    total_gasto DESC;