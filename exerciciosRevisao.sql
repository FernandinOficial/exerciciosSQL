/*execicio SQL
*/
-- CREATE DATABASE administracao;

use administracao;

/*
create TABLE cliente
(
cod_cli smallint not null primary key,
nome_cli varchar(40) not null,
endereco varchar(40) null,
cidade varchar(20) null,
cep char(08) null,
uf char(02) null
);*/
/*
create table vendedor
(
cod_vend smallint not null primary key,
nome_vend varchar(40) not null,
sal_fixo decimal(9,2) not null,
faixa_comiss char(01) not null
);*/
/*
create table produto
(
cod_prod smallint not null primary key,
unid_prod char(03) not null,
desc_prod varchar(20) not null,
val_unit decimal(9,2) not null
);*/
/*
create table pedido
(
num_ped smallint not null primary key,
prazo_entr smallint not null,
cd_cli smallint not null
REFERENCES CLIENTE (cod_cli),
cd_vend smallint not null
REFERENCES VENDEDOR (cod_vend)
);*/
/*
create table item_pedido
(
no_ped smallint not null
REFERENCES PEDIDO (num_ped),
cd_prod smallint not null
REFERENCES PRODUTO (cod_prod),
qtd_ped float not null
);*/



-- inserts de clientes

-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(1000, 'Supermercado Carrefour', 'Av. das Americas', 'rio de janeiro', '20000001', 'rj')
-- SELECT * FROM cliente;
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(2000, 'Supermercado Baratao', 'Rua Rolando Lero', 'rio de janeiro', '20000002', 'rj');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(3000, 'Supermercado Arariboia', 'Rua Itaoca', 'niteroi', '20000003', 'rj');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(4000, 'UFF C', 'idade Univers.', 'Niteroi', '20000004', 'rj');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(5000, 'CSN', 'Rua do Aco', 'volta redonda', '20000005', 'rj');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(6000, 'Pegeout', 'Rodovia Pres. Dutra', 'resende', '20000006', 'rj');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(7000, 'Ind. Quimicas Paulistas', 'Rua Tuiuti', 'sao paulo', '11000001', 'sp');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(8000, 'Ford Caminhoes', 'Rua Henry Ford', 'sao paulo', '11000002', 'sp');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(9000, 'Riocel Celulose', 'Rua Gen. Arouca', 'guaiba', '30000001', 'rs');
-- INSERT INTO cliente (cod_cli, nome_cli, endereco, cidade, cep, uf) VALUES(10000, 'Elevadores Sur', 'Rua Planejada', 'guaiba', '30000001', 'rs');
-- SELECT * FROM cliente;

-- inserts de produto

-- INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES(100, 'kg', 'Chapa de Aco', 2.5);
-- INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES(200, 'kg', 'Cimento', 4.5);
-- INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES(300, 'kg', 'parafuso 3.0X10.5 mm', 2);
-- INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES(400, 'm', 'Fio plastico', 0.2);
-- INSERT INTO produto (cod_prod, unid_prod, desc_prod, val_unit) VALUES(500, 'l', 'Solvente PRW', 5);
-- SELECT * FROM produto;

-- inserts de vendedor

-- INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES(11, 'Paulo Alberto', 1500, 'b');
-- INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES(12, 'Ana Cristina', 2100, 'a');
-- INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES(13, 'Cassia Andrade', 900, 'c');
-- INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES(14, 'Armando Pinto', 2500, 'a');
-- INSERT INTO vendedor (cod_vend, nome_vend, sal_fixo, faixa_comiss) VALUES(15, 'Maria Paula', 900, 'c');
-- SELECT * FROM vendedor;

-- inserts de pedido

-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(1111, 10, 1000, 11);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(1112, 5, 1000, 11);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(1113, 30, 1000, 15);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(2111, 15, 3000, 14);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(2112, 18, 3000, 15);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(2113, 3, 3000, 12);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(3111, 13, 4000, 12);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(3112, 7, 4000, 11);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(4111, 7, 6000, 11);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(4112, 7, 6000, 14);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(5111, 10, 8000, 14);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(6111, 30, 9000, 14);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(6112, 60, 9000, 12);
-- INSERT INTO pedido (num_ped, prazo_entr, cd_cli, cd_vend) VALUES(7111, 20, 10000, 15);
-- SELECT * FROM pedido;

-- inserts de item_pedido

    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1111, 100, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1111, 200, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1111, 300, 200);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1112, 400, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1112, 500, 1000);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(1113, 100, 300);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(2111, 100, 500);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(2111, 500, 400);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(2112, 200, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(2112, 300, 200);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(2113, 500, 500);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(3111, 400, 300);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(3112, 100, 400);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(3112, 200, 600);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(4111, 300, 700);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(4112, 500, 1000);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(4112, 500, 500);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(5111, 200, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(5111, 300, 500);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(6111, 400, 100);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(6112, 300, 400);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(6112, 400, 20);
    -- INSERT INTO item_pedido (no_ped, cd_prod, qtd_ped) VALUES(7111, 100, 500);
-- SELECT * FROM item_pedido;

-- #EXERCICIOS

-- -- Ex: 1)
-- SELECT * FROM produto;

-- -- Ex: 2)
-- SELECT * FROM cliente;

-- -- Ex: 3)
-- SELECT * FROM cliente;
-- SELECT * FROM item_pedido;
-- SELECT * FROM pedido;
-- SELECT * FROM produto;
-- SELECT * FROM vendedor;

-- -- Ex: 4)
-- SELECT no_ped, cd_prod, qtd_ped FROM item_pedido WHERE qtd_ped = 500;

-- -- Ex: 5)
-- SELECT cod_cli, nome_cli, cidade FROM cliente WHERE cidade = 'niteroi';

-- -- Ex: 6)
-- SELECT * FROM produto WHERE (unid_prod = 'kg') and (val_unit > 2);

-- -- Ex: 7)
-- SELECT * FROM cliente WHERE cidade = 'sao paulo' or cep between '20000005' and '20000010';

-- -- Ex: 8)
-- SELECT * FROM pedido WHERE (prazo_entr < 15);

-- -- Ex: 9)
-- SELECT cod_prod, desc_prod FROM produto WHERE (val_unit between 0.10 and 4);

-- -- Ex: 10)
-- SELECT * FROM produto WHERE (unid_prod like 'k%');

-- -- Ex: 11)
-- SELECT * FROM vendedor WHERE (nome_vend NOT LIKE 'a%');

-- -- Ex: 12)
-- SELECT * FROM vendedor WHERE faixa_comiss = 'a' OR faixa_comiss = 'b';

-- -- Ex: 13)
-- SELECT * FROM cliente WHERE endereco = null;

-- -- Ex: 14)
-- SELECT * FROM vendedor ORDER BY sal_fixo asc;

-- -- Ex: 15)
-- SELECT nome_cli, cidade, uf FROM cliente ORDER BY uf, cidade desc;

-- -- Ex: 16)
-- SELECT desc_prod, val_unit FROM produto WHERE (unid_prod = 'kg') ORDER BY val_unit asc;

-- -- Ex: 17)
-- SELECT cod_vend, nome_vend, sal_fixo*1.75 FROM vendedor WHERE faixa_comiss = 'C' ORDER BY nome_vend;

-- -- Ex: 18)
-- SELECT cod_vend, nome_vend, min(sal_fixo) FROM vendedor = SELECT cod_vend, nome_vend, max(sal_fixo) FROM vendedor; 

-- -- Ex: 19)
-- SELECT sum(qtd_ped) FROM item_pedido WHERE (cd_prod = 200); 

-- -- Ex: 20)
-- SELECT avg(sal_fixo) FROM vendedor;

-- Ex: 21)
SELECT count(cod_vend) FROM vendedor WHERE (sal_fixo > 2000);

-- Ex: 22)
-- Não seria ao contrário ? quais empresas existem em nossa cidade ou UF?
SELECT * FROM cliente WHERE (uf = 'sp');

-- Ex: 23)
SELECT no_ped, count(no_ped) FROM item_pedido GROUP BY no_ped;

-- Ex: 24)
SELECT no_ped FROM item_pedido GROUP BY no_ped
HAVING COUNT(*) > 1;

-- Ex: 25)
SELECT c.nome_cli, c.cod_cli, p.num_ped
FROM cliente c JOIN pedido p 
ON c.cod_cli = p.num_ped;
-- foi escrito nenhum dado no terminal fazendo um SELECT da tabela cliente como C 
-- e pedido como P

-- Ex: 26)
-- codigo cliente | nome cliente | Unidade Federativa | numero do pedido | prazo de entrega
-- SELECT DISTINCT c.cod_cli, c.nome_cli, c.uf, p.num_ped, p.prazo_entr
-- FROM cliente c JOIN pedido p  
-- ON c.cod_cli = p.cd_cli WHERE (prazo_entr > 15) and (c.uf = 'sp' or c.uf = 'rj')

-- Ex: 27)
-- SELECT c.cod_cli, c.nome_cli, p.num_ped, p.prazo_entr
-- FROM cliente c JOIN pedido p 
-- ON c.cod_cli = p.cd_cli ORDER BY p.prazo_entr DESC;
-- nao funcionou com este codigo, porem esta da forma mais aproximada e correta possivel, talvez erro na sintaxe

-- Ex: 28)
-- SELECT DISTINCT v.cod_vend, v.nome_vend, p.num_ped, p.prazo_entr
-- FROM vendedor v JOIN pedido p
-- ON v.cod_vend = p.cd_vend 
-- WHERE (prazo_entr > 15) and (sal_fixo >= 1000) ORDER BY v.nome_vend;

-- SELECT * from produto

-- Ex: 29)

-- Ex: 30)
SELECT DISTINCT c.cod_cli, c.nome_cli, c.uf, pr.desc_prod, p.prazo_entr
FROM cliente c 

JOIN pedido p ON c.cod_cli = p.cd_cli
JOIN item_pedido ipe ON p.num_ped = ipe.no_ped
JOIN produto pr ON ipe.cd_prod = pr.cod_prod

WHERE (pr.desc_prod = 'chapa de aco')
and (c.uf = 'rj')
and (p.prazo_entr > 15) ORDER BY c.nome_cli;

-- tem que ser executado com 3 JOINs e sendo 4 TABLEs
-- -- -- item_pedido
-- -- -- cliente
-- -- -- produto
-- -- -- pedido

-- Ex: 31)
-- SELECT v.nome_vend, 
-- FROM 

-- JOIN
-- JOIN
-- JOIN 


-- Ex: 32)
-- Ex: 33)
-- Ex: 34)
-- Ex: 35)
-- Ex: 36)
-- Ex: 37)
-- Ex: 38)
-- Ex: 39)
-- Ex: 40)
-- Ex: 41)
-- Ex: 42)
-- Ex: 43)
-- Ex: 44)
-- Ex: 45)
-- Ex: 46)
-- CREATE VIEW ProdutosKg AS
-- SELECT *
-- FROM produto
-- WHERE unid_prod = 'kg';

-- Ex: 47)
CREATE VIEW SalarioAnual AS
SELECT cod_vend, nome_vend, sal_fixo FROM vendedor;

-- Ex: 48)
-- Ex: 49)
-- Ex: 50)
-- Ex: 51)
-- Ex: 52)
-- Ex: 53)

