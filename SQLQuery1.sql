CREATE DATABASE Db_Leonardo98
use Db_Leonardo98
--Exerc�cios de SQL
--1) Desenvolva um script em SQL que mostre um contador at� 100 e pare no n�mero 62
--mostrando o n�mero como resultado;

DECLARE @CONTATOR INT
SET @CONTATOR = 0;

WHILE ( @CONTATOR <= 100)
BEGIN
    PRINT 'Contator ' + CONVERT(VARCHAR,@CONTATOR)
    SET @CONTATOR  = @CONTATOR  + 1
	IF @CONTATOR = 63
	
	BREAK 
END

--2) Crie um script em P/SQL que mostre os n�mero de 1 at� 100 e mostre se o n�mero �
--par ou impar.

DECLARE @NUM INT 
SET @NUM= 1;
WHILE (@NUM <=100)
BEGIN 
	SELECT @NUM,
	CASE WHEN @NUM % 2 = 0 THEN 'PAR'
	ELSE 'IMPAR'
	END
	SET @NUM = @NUM + 1
	END

--3) Desenvolve um script em PL/SQL que apresente o resultado da vari�vel idade se:
--Condi��o Resultado
--Menor que 10 Crian�a
--De 10 at� 17 Jovem
--De 18 at� 60 Adulto
--Acima de 61 Idoso

declare @idade int
set @idade = 25


IF @idade < 10
BEGIN
 PRINT ' Crianca '+ CONVERT(CHAR(10),@idade)
END
ELSE IF @idade between 10 and 17 
BEGIN 
PRINT ' Jovem '+ CONVERT(CHAR(10),@idade)
end 
ELSE IF @idade between 18 and 60
BEGIN
PRINT ' Adulto '+ CONVERT(CHAR(10),@idade)
END 
ELSE 
BEGIN 
PRINT ' Idoso '+ CONVERT(CHAR(10),@idade)
END