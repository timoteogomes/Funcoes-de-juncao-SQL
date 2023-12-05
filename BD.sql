// Consulta de todos os dados da tabela transacoes
SELECT ID_Transacao, Data, Valor, Tipo
FROM transacoes;

//Renomear colunas usando a cláusula AS
SELECT ID_Transacao AS ID, Data AS Data_Transacao, Valor AS Valor_Transacao, Tipo AS Tipo_Transacao
FROM transacoes;

//Consulta de transações com valor superior a 100
SELECT ID_Transacao, Data, Valor, Tipo
FROM transacoes WHERE Valor > 100;

//Ordenar transações por valor em ordem crescente
SELECT ID_Transacao, Data, Valor, Tipo
FROM transacoes ORDER BY Valor ASC;

//Utilizar funções SQL AVG, MAX, MIN e COUNT na tabela transacoes
SELECT AVG(Valor) AS Valor_Medio, MAX(Valor) AS Valor_Maximo, MIN(Valor) AS Valor_Minimo, COUNT(*) AS Total_Transacoes FROM transacoes;

//Agrupar transações por produto e calcular a média de valor de cada produto
SELECT Produto, AVG(Valor) AS Media_Valor_Produto
FROM transacoes GROUP BY Produto;

//Consulta por categoria de produto, com quantidade total vendida, valor total das vendas e média de valor por transação
SELECT Categoria, COUNT(*) AS Quantidade_Total,
       SUM(Valor) AS Valor_Total_Vendas,
       AVG(Valor) AS Media_Valor_Transacao
FROM transacoes GROUP BY Categoria;