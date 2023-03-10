-- MÓDULO02 - AULA 01

create table professores(
	professor_id SERIAL not null,
	nome varchar(40),
	dominio1 varchar(40),
	dominio2 varchar(40),
	dominio3 varchar(40)
);

insert into professores
(nome, dominio1, dominio2, dominio3)
values
('André', 'Python', 'Data Science', 'Estatística'),
('Renata', 'Estatística', 'Data Science', 'Machine Learning'),
('Larissa', 'Python', 'SQL', 'Deep Learning'),
('Rafael', 'Power BI', 'Tableau', 'Microestrategy')

select * from professores


-----------------------------------------------------------------------------------

-- MÓDULO02 - AULA 02


--Criar uma tabela nomeada como funcionarios que deve conter:
--funcionario_id (integer)
--nome
--departamento
--cargo
--senioridade
--salario (numeric)

create table funcionarios(
	funcionario_id SERIAL not null,
	nome varchar(40),
	departamento varchar(40),
	cargo varchar(40),
	senioridade varchar(40),
	salario numeric(8,2)
	)

--DROP TABLE funcionarios
--Criar uma tabela nomeada como vendas que deve conter:

create table vendas(
	pedido_id integer,
	produto_id integer,
	nome_produto varchar(40),
	quantidade integer,
	valor_unidade numeric(16,2)
	)

--DROP TABLE vendas
	
INSERT INTO funcionarios VALUES
	(1,'João Paulo','RH','Analista','Junior',2000),
(2,'Lúcia','RH','Analista','Pleno',3000),
(3,'Rosana','RH','Analista','Senior',4000),
(4,'Elisabete','RH','Coordenador','Liderança',5000),
(5,'Amanda','RH','Gerente','Gerência',7000),
(6,'Rafael','Analytics','Analista','Junior',3000),
(7,'Pedro','Analytics','Analista','Pleno',5000),
(8,'Lucas','Analytics','Analista','Pleno',5000),
(9,'Luiz Antônio','Analytics','Analista','Senior',7000),
(10,'Giovanni','Analytics','Analista','Senior',7000),
(11,'Nadia','Analytics','Coordenador','Liderança',9000),
(12,'Carmen','Analytics','Gerente','Gerência',11000),
(13,'Maurício','Dados','Analista','Pleno',5000),
(14,'Bruno Silva','Dados','Analista','Senior',8000),
(15,'Andressa','Dados','Cientista','Junior',5000),
(16,'José de Sousa','Dados','Cientista','Junior',6500),
(17,'Helena','Dados','Cientista','Pleno',7000),
(18,'Bruna','Dados','Cientista','Pleno',7000),
(19,'Bruno Pereira','Dados','Cientista','Pleno',8000),
(20,'Bianca','Dados','Cientista','Senior',11000),
(21,'Murilo','Dados','Coordenador','Liderança',12000),
(22,'Gisele','Dados','Coordenador','Liderança',14000),
(23,'Paulo','Dados','Gerente','Gerência',18000),
(24,'Wesley','Dados','Engenheiro','Junior',6000),
(25,'Vagner','Dados','Engenheiro','Pleno',9000),
(26,'Léticia','Dados','Engenheiro','Pleno',9000),
(27,'Sandro','Dados','Engenheiro','Senior',11000),
(28,'Enzo','Dados','Engenheiro','Senior',12000),
(29,'Lavinia','Dados','Engenheiro','Senior',12000),
(30,'Andrei','Dev','Engenheiro de Software','Junior',4000),
(31,'George','Dev','Engenheiro de Software','Junior',4000),
(32,'Caio','Dev','Engenheiro de Software','Pleno',5000),
(33,'Edna','Dev','Engenheiro de Software','Pleno',5000),
(34,'Debora','Dev','Engenheiro de Software','Pleno',6500),
(35,'Luiza','Dev','Engenheiro de Software','Pleno',6000),
(36,'Pedro Henrique','Dev','Engenheiro de Software','Pleno',6000),
(37,'Willian','Dev','Engenheiro de Software','Senior',7000),
(38,'Viviane','Dev','Engenheiro de Software','Senior',9000),
(39,'Mnnuel','Dev','Coordenador','Liderança',8000),
(40,'Lurdes','Dev','Coordenador','Liderança',9500),
(41,'Hygor','Dev','Gerente','Gerência',10000),
(42,'Ana Paula','Financeiro','Analista','Junior',2000),
(43,'Luciana','Financeiro','Analista','Junior',2000),
(44,'Lorena','Financeiro','Analista','Junior',2500),
(45,'Sara','Financeiro','Analista','Junior',2500),
(46,'Cintia','Financeiro','Analista','Pleno',3000),
(47,'Karina','Financeiro','Analista','Pleno',3000),
(48,'Camila','Financeiro','Analista','Senior',3500),
(49,'Afonso','Financeiro','Coordenador','Liderança',4500),
(50,'Cibele','Financeiro','Gerente','Gerência',5000);

SELECT * FROM funcionarios
LIMIT 3

-- Fazendo Queries

SELECT
	departamento,
	SUM(salario) AS total_salarios
FROM funcionarios 
GROUP BY departamento
ORDER BY departamento

SELECT
	departamento,
	senioridade,
	ROUND(AVG(salario),2) AS media_salarios
FROM funcionarios 
GROUP BY departamento, senioridade
ORDER BY departamento, senioridade

SELECT
	departamento,
	SUM(salario) AS total_salarios,
	COUNT(salario) AS qntde_funcionarios,
	ROUND(SUM(salario)/COUNT(salario),2) AS salario_medio
FROM funcionarios 
GROUP BY departamento
ORDER BY departamento

SELECT --tinha algo com CAST aqui
	departamento,
	SUM(salario) AS total_salarios,
	COUNT(salario) AS qntde_funcionarios,
	ROUND(SUM(salario)/COUNT(salario),2) AS salario_medio
FROM funcionarios 
GROUP BY departamento
ORDER BY departamento

-- INSERT tabela vendas


INSERT INTO vendas VALUES
	(1,1,'Arroz',1,22.50),
(1,2,'Feijão',1,8.90),
(1,3,'Óleo',2,7.50),
(1,4,'Sal',1,4.20),
(1,5,'Macarrão',2,4.50),
(2,6,'Cerveja',36,2.5),
(2,7,'Refrigerante',4,9.80),
(2,8,'Carne',2,45.00),
(2,9,'Linguiça',2,15.80),
(3,1,'Arroz',1,22.50),
(3,2,'Feijão',1,8.90),
(3,5,'Macarrão',4,4.50),
(3,10,'Molho',6,2.20),
(3,7,'Refrigerante',2,9.80),
(3,11,'Leite',12,4.60),
(4,11,'Leite',6,4.60),
(4,12,'Fralda',1,62.50),
(4,7,'Refrigerante',2,9.80),
(4,13,'Sorvete',1,25.50),
(4,5,'Macarrão',1,4.50),
(5,1,'Arroz',2,22.50),
(5,2,'Feijão',2,8.90),
(5,4,'Sal',1,4.20),
(5,14,'Açúcar',1,3.90),
(5,15,'Café',2,8.90),
(5,11,'Leite',12,4.60),
(5,16,'Bolacha',4,2.40),
(6,17,'Morango',1,6.20),
(6,18,'Banana',1,4.99),
(6,11,'Leite',4,4.60),
(6,14,'Açúcar',1,3.90),
(6,1,'Arroz',1,22.50),
(6,2,'Feijão',1,8.90),
(7,19,'Lasanha',1,8.70),
(7,10,'Molho',4,2.20),
(7,20,'Presunto',3,8.70),
(7,21,'Mussarela',3,7.30),
(7,7,'Refrigerante',1,9.80),
(7,13,'Sorvete',1,25.50),
(8,5,'Macarrão',3,4.50),
(8,3,'Óleo',1,7.50),
(8,4,'Sal',1,4.20),
(8,7,'Refrigerante',2,9.80),
(8,10,'Molho',2,2.20),
(9,1,'Arroz',1,22.50),
(9,2,'Feijão',1,8.90),
(9,3,'Óleo',1,7.50),
(9,13,'Sorvete',2,25.50),
(10,5,'Macarrão',2,4.50),
(10,10,'Molho',4,2.20),
(10,7,'Refrigerante',2,9.80),
(10,6,'Cerveja',12,2.5),
(10,8,'Carne',1,45.00),
(10,4,'Sal',1,4.20);

SELECT * FROM vendas

---- PERGUNTAS

-- Qual o valor total de cada uma das compras?

SELECT 
	pedido_id,
	sum(quantidade*valor_unidade) AS valor_total
FROM vendas
GROUP BY pedido_id
ORDER BY pedido_id

-- Qual o produto mais vendido em quantidade?

SELECT 
	produto_id,
	nome_produto,
	sum(quantidade) AS qtd_total
FROM vendas
GROUP BY produto_id, nome_produto
ORDER BY qtd_total desc

-- Qual o produto que mais vendeu em valor?

SELECT 
	produto_id,
	nome_produto,
	round(sum(quantidade*valor_unidade),2) AS qtd_total
FROM vendas
GROUP BY produto_id, nome_produto
ORDER BY qtd_total desc

-- Calcule quantos produtos distintos tem por pedido? (vendas)

SELECT * FROM vendas
WHERE pedido_id = 1

SELECT
	pedido_id,
	COUNT(DISTINCT(produto_id)) AS produtos_distintos
FROM vendas
GROUP BY pedido_id 
ORDER BY pedido_id 

-- Calcule o total de salarios por departamento, apenas com senioridade lideranla e gerencia

SELECT * FROM funcionarios

SELECT
	departamento,
	senioridade,
	sum(salario) AS total_salario
FROM funcionarios
WHERE senioridade = 'Liderança' OR senioridade = 'Gerência'
GROUP BY departamento, senioridade

-- Calcule quantos funcionarios tem por departamento

SELECT
	departamento,
	count(funcionario_id) AS numero_funcionarios
FROM funcionarios
GROUP BY departamento

-- Calculo quantos funcionarios tem por senioridade

SELECT
	senioridade,
	count(funcionario_id) AS numero_funcionarios
FROM funcionarios
GROUP BY senioridade