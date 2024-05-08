use administracao;

-- TESTE

-- CREATE PROCEDURE consultarClientes()
-- BEGIN
--     SELECT * FROM cliente;
-- END

-- CALL consultarClientes();
-- DROP PROCEDURE IF EXISTS consultarClientes;

-- CREATE PROCEDURE consultarClientes()
-- BEGIN
--     SELECT * FROM cliente;
-- END;

-- call consultarClientes();



CREATE PROCEDURE inserirProduto(
    IN _cod_prod SMALLINT(6), 
    IN _unid_prod CHAR(3),
    IN _desc_prod VARCHAR(20),
    IN _val_unit DECIMAL(9,2)
)
BEGIN
    INSERT INTO produto(cod_prod, unid_prod, desc_prod, val_unit) VALUES(_cod_prod, _unid_prod, _desc_prod, _val_unit);
END;

SELECT * FROM produto;

para receber um novo produto basta chamar por CALL e seus valores dentro do método do PROCEDURE
CALL inserirProduto(120, 'kg', 'prego', 0.12);

SELECT * FROM produto;