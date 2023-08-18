-- Active: 1692326403103@@localhost@3306@banco
CREATE PROCEDURE proc_cadastro(
    IN nome VARCHAR(255),
    IN email VARCHAR(255),
    IN senha VARCHAR(255)
)
BEGIN

    SELECT * FROM `USUARIO` WHERE email = @email;

    IF NOT FOUND THEN
        INSERT INTO `USUARIO` (user_nome, user_email, user_senha) VALUES 
        (@nome, @email, @senha);
    END IF;

END;