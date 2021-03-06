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


DROP TABLE [TABELA DE CLIENTES]


