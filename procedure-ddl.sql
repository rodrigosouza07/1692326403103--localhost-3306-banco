
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

END