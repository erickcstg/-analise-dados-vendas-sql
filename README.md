# analise-dados-vendas-sql
Projeto de análise de dados de vendas utilizando SQL. Inclui criação de tabelas, inserção de dados fictícios e consultas para insights como receita total, produtos mais vendidos e vendas por região.


## Scripts

### 1. Criação das Tabelas
O arquivo `create_tables.sql` contém os comandos SQL para criar as tabelas necessárias:
- **Produtos**: Informações sobre os produtos vendidos.
- **Clientes**: Dados dos clientes.
- **Regiões**: Regiões onde as vendas ocorreram.
- **Vendas**: Registro das vendas realizadas.

### 2. Inserção de Dados
O arquivo `insert_data.sql` insere dados fictícios nas tabelas para testes e análises.

### 3. Consultas SQL
O arquivo `queries.sql` contém consultas para:
- Calcular a receita total gerada pelas vendas.
- Identificar o produto mais vendido.
- Analisar vendas por região.
- Listar os clientes que mais compraram.

## Como Usar

1. **Configurar o Banco de Dados**:
   - Execute o script `create_tables.sql` para criar as tabelas.
   - Execute o script `insert_data.sql` para popular as tabelas com dados fictícios.

2. **Executar Consultas**:
   - Use o script `queries.sql` para gerar insights a partir dos dados.

## Pré-requisitos

- Um banco de dados SQL (MySQL, SQL Server, etc.).
- Um cliente SQL, como MySQL Workbench, DBeaver ou outro.

## Exemplos de Consultas

### Receita Total
```sql
SELECT 
    SUM(p.preco * v.quantidade) AS receita_total
FROM 
    Vendas v
JOIN 
    Produtos p ON v.produto_id = p.id;    SELECT 
        p.nome AS produto,
        SUM(v.quantidade) AS total_vendido
    FROM 
        Vendas v
    JOIN 
        Produtos p ON v.produto_id = p.id
    GROUP BY 
        p.nome
    ORDER BY 
        total_vendido DESC
    LIMIT 1;