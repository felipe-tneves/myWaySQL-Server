CREATE DATABASE SUCOS_VENDAS;

USE SUCOS_VENDAS;


CREATE TABLE [TABELA DE CLIENTES]
(
	[CPF] [VARCHAR](11),
	[NOME] [VARCHAR](100),
	[ENDERECO 1] [VARCHAR] (150),
	[ENDERECO 2] [VARCHAR] (150),
	[BAIRRO] [VARCHAR] (50),
	[CIDADE] [VARCHAR] (50),
	[ESTADO] [VARCHAR] (2),
	[CEP] [VARCHAR] (8),
	[DATA DE NASCIMENTO] [DATE],
	[IDADE] [SMALLINT],
	[SEXO] [VARCHAR] (1),
	[LIMITE DE CREDITO] [MONEY],
	[VOLUME DE COMPRA] [FLOAT],
	[PRIMEIRA COMPRA] [BIT]
)

CREATE TABLE [dbo].[TABELA DE PRODUTOS](
	[CODIGO DO PRODUTO] [varchar](10) NULL,
	[NOME DO PRODUTO] [varchar](50) NULL,
	[EMBALAGEM] [varchar](20) NULL,
	[TAMANHO] [varchar](10) NULL,
	[SABOR] [varchar](20) NULL,
	[PRE?O DE LISTA] [smallmoney] NULL
) ON [PRIMARY]

CREATE TABLE [TABELA DE VENDEDORES](
	[MATRICULA] [varchar](5),
	[NOME] [varchar](100),
	[PERCENTUAL COMISSAO] [float]
)

DROP TABLE [TABELA DE CLIENTES]

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES 
('1040107', 'Light - 350 ml - Mel?ncia', 'Lata', '350 ml', 'Mel?ncia', 4.56)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES 
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 L', 'Laranja', 16.01)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES 
('1000889', 'Sabor da Motanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31)


INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISSAO])
VALUES
('00233', 'Jos? Geraldo da Fonseca', 0.10)

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISSAO])
VALUES
('00235', 'M?rcio Almeida Silva', 0.08)

INSERT INTO [TABELA DE VENDEDORES]
([MATRICULA], [NOME], [PERCENTUAL COMISSAO])
VALUES
('00236', 'Cl?udia Morais', 0.08)


INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES
('544931', 'Frescor do Ver?o - 350 ml - Lim?o', 'PET', '350 ml','Lim?o',3.20)

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES
('1078680', 'Frescor do Ver?o - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18)

UPDATE [TABELA DE PRODUTOS] SET
[EMBALAGEM] = 'Lata',
[PRE?O DE LISTA] = 2.46
WHERE [CODIGO DO PRODUTO] = '544931'

UPDATE [TABELA DE PRODUTOS] SET
[EMBALAGEM] = 'Garrafa'
WHERE [CODIGO DO PRODUTO] = '1078680'

UPDATE [TABELA DE VENDEDORES] SET
[PERCENTUAL COMISSAO] = 0.11
WHERE [MATRICULA] = '00238'

UPDATE [TABELA DE VENDEDORES] SET
[NOME] = 'Jos? Geraldo da Fonseca Junior'
WHERE [MATRICULA] = '00233'

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '1088126'

DELETE FROM [TABELA DE VENDEDORES]
WHERE [MATRICULA] = '00233'

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES
('788975', 'Peda?os de Frutas - 1,5 Listros - Ma?a', 'PET', '1,5 L', 'Ma?a', 18.01)

DELETE FROM [TABELA DE PRODUTOS]
WHERE [CODIGO DO PRODUTO] = '788975'

ALTER TABLE [TABELA DE PRODUTOS]
ALTER COLUMN [CODIGO DO PRODUTO]
VARCHAR(10) NOT NULL

ALTER TABLE [TABELA DE PRODUTOS]
ADD CONSTRAINT PK_PRODUTOS
PRIMARY KEY CLUSTERED ([CODIGO DO PRODUTO])

INSERT INTO [TABELA DE PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [SABOR], [PRE?O DE LISTA])
VALUES
('788975', 'Peda?os de Frutas - 1,5 Listros - Ma?a', 'PET', '1,5 L', 'Ma?a', 18.01)

ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(10) NOT NULL

ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

SELECT *FROM [TABELA DE CLIENTES]
SELECT *FROM [TABELA DE PRODUTOS]
SELECT *FROM [TABELA DE VENDEDORES]

ALTER TABLE [TABELA DE CLIENTES]
ALTER COLUMN [CPF]
VARCHAR(11) NOT NULL

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_CLIENTES
PRIMARY KEY CLUSTERED ([CPF])

INSERT INTO [dbo].[TABELA DE CLIENTES]
           ([CPF]
           ,[NOME]
           ,[ENDERECO 1]
           ,[ENDERECO 2]
           ,[BAIRRO]
           ,[CIDADE]
           ,[ESTADO]
           ,[CEP]
           ,[DATA DE NASCIMENTO]
           ,[IDADE]
           ,[SEXO]
           ,[LIMITE DE CREDITO]
           ,[VOLUME DE COMPRA]
           ,[PRIMEIRA COMPRA])
     VALUES
           ('12345678910'
           ,'jO?O DA SILVA'
           ,'RUA PROJETADA N?10'
           ,''
           ,'CENTRO'
           ,'S?O PAULO'
           ,'SP'
           ,'09950300'
           ,'1990-10-25'
           ,27
           ,'M'
           ,120000.50
           ,1000
           ,1)

DROP TABLE [TABELA DE VENDEDORES]

CREATE TABLE [TABELA DE VENDEDORES]
( [MATRICULA] varchar(5),
[NOME] varchar(100),
[PERCENTUAL COMISS?O] float,
[DATA ADMISS?O] date,
[DE FERIAS] bit)

ALTER TABLE [TABELA DE VENDEDORES]
ALTER COLUMN [MATRICULA]
VARCHAR(5) NOT NULL

ALTER TABLE [TABELA DE VENDEDORES]
ADD CONSTRAINT PK_VENDEDORES
PRIMARY KEY CLUSTERED ([MATRICULA])

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00235','M?rcio Almeida Silva','2014-08-15',0.08,0)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00236','Cl?udia Morais','2013-09-17',0.08,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00237','Roberta Martins','2017-03-18',0.11,1)

INSERT INTO [TABELA DE VENDEDORES]
([MAtRICULA], [NOME], [DATA ADMISS?O], [PERCENTUAL COMISS?O], [DE FERIAS])
VALUES
('00238','Pericles Alves','2016-08-21',0.11,0)