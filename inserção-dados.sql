-- Clientes
INSERT INTO Cliente VALUES (1, 'João da Silva', '4499999999', 'joao@email.com');
INSERT INTO Cliente VALUES (2, 'Maria Oliveira', '4498888888', 'maria@email.com');

-- Veículos
INSERT INTO Veiculo VALUES (1, 'ABC1234', 'Civic', 2015, 1);
INSERT INTO Veiculo VALUES (2, 'XYZ5678', 'Gol', 2018, 2);

-- Funcionários
INSERT INTO Funcionario VALUES (1, 'Carlos Souza', 'Mecânico', 2500.00);
INSERT INTO Funcionario VALUES (2, 'Ana Lima', 'Atendente', 1800.00);

-- Peças
INSERT INTO Peca VALUES (1, 'Filtro de óleo', 30.00, 50);
INSERT INTO Peca VALUES (2, 'Pastilha de freio', 120.00, 20);

-- Serviços
INSERT INTO Servico VALUES (1, 'Troca de óleo', 80.00);
INSERT INTO Servico VALUES (2, 'Troca de freio', 200.00);

-- Ordem de serviço
INSERT INTO Ordem_Servico VALUES (1, '2025-04-01', NULL, 'Aberta', 1, 1);
INSERT INTO Ordem_Servico VALUES (2, '2025-04-02', '2025-04-03', 'Concluída', 2, 1);

-- OS_Pecas
INSERT INTO OS_Pecas VALUES (1, 1, 1);
INSERT INTO OS_Pecas VALUES (2, 2, 2);

-- OS_Servicos
INSERT INTO OS_Servicos VALUES (1, 1);
INSERT INTO OS_Servicos VALUES (2, 2);
