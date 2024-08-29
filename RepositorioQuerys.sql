Repositório de Querys

DELETE FROM AppGuessGame_aposta;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_aposta';
DELETE FROM AppGuessGame_jogos;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_jogos';
DELETE FROM AppGuessGame_pesos;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_pesos';
DELETE FROM AppGuessGame_pontuacaotime;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_pontuacaotime';
DELETE FROM AppGuessGame_proximos_jogos;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_proximos_jogos';
DELETE FROM AppGuessGame_resultadojogo;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_resultadojogo';
DELETE FROM AppGuessGame_somapontostimecampeonato;
DELETE FROM sqlite_sequence WHERE name='AppGuessGame_somapontostimecampeonato';


1. Criação e Alteração de Tabelas
Criar uma Tabela:

sql
Copiar código
CREATE TABLE nome_da_tabela (
    id INT AUTO_INCREMENT PRIMARY KEY,
    coluna1 VARCHAR(255) NOT NULL,
    coluna2 INT DEFAULT 0,
    coluna3 DATE
);
Alterar a Estrutura de uma Tabela:

Adicionar uma Coluna:

sql
Copiar código
ALTER TABLE nome_da_tabela ADD coluna_nova VARCHAR(100);
Modificar uma Coluna:

sql
Copiar código
ALTER TABLE nome_da_tabela MODIFY COLUMN coluna_existente TEXT;
Renomear uma Coluna:

sql
Copiar código
ALTER TABLE nome_da_tabela CHANGE COLUMN coluna_antiga coluna_nova VARCHAR(100);
Excluir uma Coluna:

sql
Copiar código
ALTER TABLE nome_da_tabela DROP COLUMN coluna_para_remover;
Renomear a Tabela:

sql
Copiar código
RENAME TABLE nome_da_tabela TO novo_nome_da_tabela;
Excluir uma Tabela:

sql
Copiar código
DROP TABLE nome_da_tabela;
2. Manipulação de Dados
Inserir Dados em uma Tabela:

sql
Copiar código
INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES (valor1, valor2);
Inserir Múltiplas Linhas:

sql
Copiar código
INSERT INTO nome_da_tabela (coluna1, coluna2) VALUES (valor1, valor2), (valor3, valor4);
Atualizar Dados em uma Tabela:

sql
Copiar código
UPDATE nome_da_tabela SET coluna1 = valor1, coluna2 = valor2 WHERE condicao;
Excluir Dados de uma Tabela:

sql
Copiar código
DELETE FROM nome_da_tabela WHERE condicao;
Excluir Todos os Dados de uma Tabela:

sql
Copiar código
TRUNCATE TABLE nome_da_tabela;
3. Consultas e Recuperação de Dados
Selecionar Todos os Dados de uma Tabela:

sql
Copiar código
SELECT * FROM nome_da_tabela;
Selecionar Colunas Específicas:

sql
Copiar código
SELECT coluna1, coluna2 FROM nome_da_tabela;
Filtrar Dados com WHERE:

sql
Copiar código
SELECT * FROM nome_da_tabela WHERE coluna = valor;
Usar Operadores Lógicos:

sql
Copiar código
SELECT * FROM nome_da_tabela WHERE coluna1 = valor1 AND coluna2 = valor2;
SELECT * FROM nome_da_tabela WHERE coluna1 = valor1 OR coluna2 = valor2;
SELECT * FROM nome_da_tabela WHERE NOT coluna = valor;
Ordenar Resultados com ORDER BY:

sql
Copiar código
SELECT * FROM nome_da_tabela ORDER BY coluna ASC;  -- Ordem ascendente
SELECT * FROM nome_da_tabela ORDER BY coluna DESC; -- Ordem descendente
Limitar o Número de Resultados:

sql
Copiar código
SELECT * FROM nome_da_tabela LIMIT 10;
Selecionar Dados Únicos:

sql
Copiar código
SELECT DISTINCT coluna FROM nome_da_tabela;
4. Agregação e Funções
Contar o Número de Registros:

sql
Copiar código
SELECT COUNT(*) FROM nome_da_tabela;
Encontrar a Média de uma Coluna:

sql
Copiar código
SELECT AVG(coluna) FROM nome_da_tabela;
Encontrar o Valor Máximo e Mínimo:

sql
Copiar código
SELECT MAX(coluna) FROM nome_da_tabela;
SELECT MIN(coluna) FROM nome_da_tabela;
Somar Valores de uma Coluna:

sql
Copiar código
SELECT SUM(coluna) FROM nome_da_tabela;
Agrupar Dados com GROUP BY:

sql
Copiar código
SELECT coluna, COUNT(*) FROM nome_da_tabela GROUP BY coluna;
Filtrar Grupos com HAVING:

sql
Copiar código
SELECT coluna, COUNT(*) FROM nome_da_tabela GROUP BY coluna HAVING COUNT(*) > 1;
5. Joins e Relacionamentos
Inner Join:

sql
Copiar código
SELECT a.coluna1, b.coluna2
FROM tabela1 a
INNER JOIN tabela2 b ON a.coluna_comum = b.coluna_comum;
Left Join (ou Left Outer Join):

sql
Copiar código
SELECT a.coluna1, b.coluna2
FROM tabela1 a
LEFT JOIN tabela2 b ON a.coluna_comum = b.coluna_comum;
Right Join (ou Right Outer Join):

sql
Copiar código
SELECT a.coluna1, b.coluna2
FROM tabela1 a
RIGHT JOIN tabela2 b ON a.coluna_comum = b.coluna_comum;
Full Outer Join (não suportado diretamente pelo MySQL, mas pode ser simulado):

sql
Copiar código
(SELECT a.coluna1, b.coluna2
FROM tabela1 a
LEFT JOIN tabela2 b ON a.coluna_comum = b.coluna_comum)
UNION
(SELECT a.coluna1, b.coluna2
FROM tabela1 a
RIGHT JOIN tabela2 b ON a.coluna_comum = b.coluna_comum);
Auto Join:

sql
Copiar código
SELECT a.coluna1, b.coluna2
FROM nome_da_tabela a
JOIN nome_da_tabela b ON a.coluna_comum = b.coluna_comum;
6. Subconsultas
Subconsulta em WHERE:

sql
Copiar código
SELECT * FROM nome_da_tabela WHERE coluna IN (SELECT coluna FROM outra_tabela WHERE condicao);
Subconsulta em FROM:

sql
Copiar código
SELECT alias.coluna
FROM (SELECT coluna FROM nome_da_tabela WHERE condicao) AS alias;
Subconsulta em SELECT:

sql
Copiar código
SELECT coluna1, (SELECT MAX(coluna2) FROM outra_tabela WHERE outra_tabela.id = nome_da_tabela.id) AS max_coluna2
FROM nome_da_tabela;
7. Índices e Chaves
Criar um Índice:

sql
Copiar código
CREATE INDEX nome_do_indice ON nome_da_tabela (coluna);
Criar um Índice Único:

sql
Copiar código
CREATE UNIQUE INDEX nome_do_indice ON nome_da_tabela (coluna);
Adicionar uma Chave Primária:

sql
Copiar código
ALTER TABLE nome_da_tabela ADD PRIMARY KEY (coluna);
Adicionar uma Chave Estrangeira:

sql
Copiar código
ALTER TABLE nome_da_tabela ADD CONSTRAINT fk_nome FOREIGN KEY (coluna) REFERENCES outra_tabela(coluna);
Excluir um Índice:

sql
Copiar código
DROP INDEX nome_do_indice ON nome_da_tabela;
Excluir uma Chave Estrangeira:

sql
Copiar código
ALTER TABLE nome_da_tabela DROP FOREIGN KEY fk_nome;
8. Transações
Iniciar uma Transação:

sql
Copiar código
START TRANSACTION;
Confirmar uma Transação:

sql
Copiar código
COMMIT;
Cancelar uma Transação:

sql
Copiar código
ROLLBACK;
9. Criação e Manipulação de Visões
Criar uma Visão:

sql
Copiar código
CREATE VIEW nome_da_visao AS
SELECT coluna1, coluna2 FROM nome_da_tabela WHERE condicao;
Alterar uma Visão:

sql
Copiar código
CREATE OR REPLACE VIEW nome_da_visao AS
SELECT coluna1, coluna2 FROM nome_da_tabela WHERE nova_condicao;
Excluir uma Visão:

sql
Copiar código
DROP VIEW nome_da_visao;
10. Outros Comandos Úteis
Copiar uma Tabela (Estrutura e Dados):

sql
Copiar código
CREATE TABLE nova_tabela AS SELECT * FROM tabela_existente;
Copiar Apenas a Estrutura da Tabela:

sql
Copiar código
CREATE TABLE nova_tabela LIKE tabela_existente;
Inserir Dados em uma Tabela a Partir de Outra Tabela:

sql
Copiar código
INSERT INTO tabela_destino (coluna1, coluna2)
SELECT coluna1, coluna2 FROM tabela_origem WHERE condicao;
Exportar Dados para um Arquivo:

sql
Copiar código
SELECT * INTO OUTFILE '/caminho/para/arquivo.csv' 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
FROM nome_da_tabela;
Importar Dados de um Arquivo:

sql
Copiar código
LOAD DATA INFILE '/caminho/para/arquivo.csv' 
INTO TABLE nome_da_tabela 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n';

Trasformar os numeros de serie de una coluna em data atual (deu uma diferença de dois dias a mais, logo abaixo tem outra query para resolver isso)
Data de referência (01/01/1900)
UPDATE mainApp_aposta
SET data_convertida = strftime('%Y-%m-%d', '1900-01-01', '+' || data || ' days');

Trasformar os numeros de serie de una coluna em data atual
Data de referência (01/01/1900) + número de dias - 2
UPDATE AppGuessGame_jogos
 SET data = strftime('%Y-%m-%d', '1900-01-01', '+' || (data - 2) || ' days');
