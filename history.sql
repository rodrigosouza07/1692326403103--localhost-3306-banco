/* 2023-08-17 22:40:53 [11 ms] */ 
CREATE PROCEDURE proc_cadastro()
BEGIN

END;
/* 2023-08-17 22:44:08 [5 ms] */ 
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
/* 2023-08-17 22:48:33 [3 ms] */ 
DROP PROCEDURE proc_cadastro;
/* 2023-08-17 22:48:36 [4 ms] */ 
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_cadastro`(
    IN nome VARCHAR(255),
    IN email VARCHAR(255),
    IN senha VARCHAR(255)
)
BEGIN

    IF NOT FOUND THEN
        INSERT INTO `USUARIO` (user_nome, user_email, user_senha) VALUES 
        (@nome, @email, @senha);
    END IF;

END;
/* 2023-08-17 22:52:55 [13 ms] */ 
DROP TABLE `USUARIO`;
/* 2023-08-17 22:54:17 [55 ms] */ 
CREATE TABLE USUARIO(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_nome VARCHAR(80) NOT NULL,
    user_email VARCHAR(80) NOT NULL,
    user_senha VARCHAR(80) NOT NULL
);
/* 2023-08-17 23:01:10 [5 ms] */ 
USE BANCO;
/* 2023-08-17 23:01:14 [10 ms] */ 
CREATE TABLE USUARIO(
    user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_nome VARCHAR(80) NOT NULL,
    user_email VARCHAR(80) NOT NULL,
    user_senha VARCHAR(80) NOT NULL
);
/* 2023-08-17 23:01:20 [2 ms] */ 
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_cadastro`(
    IN nome VARCHAR(255),
    IN email VARCHAR(255),
    IN senha VARCHAR(255)
)
BEGIN

    IF NOT FOUND THEN
        INSERT INTO `USUARIO` (user_nome, user_email, user_senha) VALUES 
        (@nome, @email, @senha);
    END IF;

END;
/* 2023-08-17 23:02:49 [3 ms] */ 
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_cadastro`(

    IN nome VARCHAR(255),
    IN email VARCHAR(255),
    IN senha VARCHAR(255)
)
BEGIN

    IF NOT FOUND THEN
        INSERT INTO `USUARIO` (user_id, user_nome, user_email, user_senha) VALUES 
        (@id, @nome, @email, @senha);
    END IF;

END;
