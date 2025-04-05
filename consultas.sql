--1. Recuperação simples

SELECT nome, telefone FROM Cliente;

--2. Filtro com WHERE

SELECT * FROM Ordem_Servico WHERE status = 'Aberta';

--3. Atributo derivado: custo total por OS

SELECT os.id_os,
       SUM(p.valor_unitario * op.quantidade) AS total_pecas,
       SUM(s.valor) AS total_servicos,
       SUM(p.valor_unitario * op.quantidade) + SUM(s.valor) AS total_geral
FROM Ordem_Servico os
JOIN OS_Pecas op ON os.id_os = op.id_os
JOIN Peca p ON op.id_peca = p.id_peca
JOIN OS_Servicos oss ON os.id_os = oss.id_os
JOIN Servico s ON oss.id_servico = s.id_servico
GROUP BY os.id_os;

--4. ORDER BY

SELECT nome, salario FROM Funcionario ORDER BY salario DESC;

--5. HAVING (filtrar OS com custo > 200)

SELECT os.id_os,
       SUM(p.valor_unitario * op.quantidade) + SUM(s.valor) AS total
FROM Ordem_Servico os
JOIN OS_Pecas op ON os.id_os = op.id_os
JOIN Peca p ON op.id_peca = p.id_peca
JOIN OS_Servicos oss ON os.id_os = oss.id_os
JOIN Servico s ON oss.id_servico = s.id_servico
GROUP BY os.id_os
HAVING total > 200;

--6. JOIN com múltiplas tabelas: nome do cliente, veículo e serviços realizados

SELECT c.nome AS cliente, v.modelo AS veiculo, s.descricao AS servico
FROM Ordem_Servico os
JOIN Veiculo v ON os.id_veiculo = v.id_veiculo
JOIN Cliente c ON v.id_cliente = c.id_cliente
JOIN OS_Servicos oss ON os.id_os = oss.id_os
JOIN Servico s ON oss.id_servico = s.id_servico;
