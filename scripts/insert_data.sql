-- Script para inserção de dados fictícios

-- Inserindo dados na tabela Produtos
INSERT INTO Produtos (nome, preco) VALUES
('Notebook', 3500.00),
('Smartphone', 2000.00),
('Tablet', 1500.00),
('Monitor', 800.00);

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (nome, email) VALUES
('João Silva', 'joao.silva@email.com'),
('Maria Oliveira', 'maria.oliveira@email.com'),
('Carlos Santos', 'carlos.santos@email.com'),
('Ana Costa', 'ana.costa@email.com');

-- Inserindo dados na tabela Regiões
INSERT INTO Regioes (nome) VALUES
('Sudeste'),
('Nordeste'),
('Sul'),
('Centro-Oeste');

-- Inserindo dados na tabela Vendas
INSERT INTO Vendas (produto_id, cliente_id, regiao_id, quantidade, data_venda) VALUES
(1, 1, 1, 2, '2025-04-01'),
(2, 2, 2, 1, '2025-04-02'),
(3, 3, 3, 3, '2025-04-03'),
(4, 4, 4, 1, '2025-04-04');