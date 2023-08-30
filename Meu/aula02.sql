create database bd_sistema_bancario;
\c bd_sistema_bancario;
create table tabela01(codigo integer);
create table tabela02(conta integer);
create table tabela03(agencia integer);
create table tabela04(nome char);
create table tabela05(valor float);
CREATE TABLE cliente(NOME_CLIENTE varchar(50), CIDADE_CLIENTE varchar(50),ENDERECO_CLIENTE varchar(50));
CREATE TABLE conta(NUMERO_CONTA integer, NOME_AGENCIA varchar(15),SALDO real);
CREATE TABLE emprestimo(NUMERO_EMPRESTIMO integer, NOME_AGENCIA varchar(15),VALOR real);
CREATE TABLE agencia(NOME_AGENCIA varchar(15),CIDADE_AGENCIA varchar(30), DEPOSITOS real);
DROP TABLE TABELA01;
DROP TABLE TABELA02;
DROP TABLE TABELA03;
DROP TABLE TABELA04;
DROP TABLE TABELA05;

ALTER TABLE cliente ADD COLUMN idade integer;
ALTER TABLE cliente RENAME COLUMN idade TO idades;
ALTER TABLE cliente ADD COLUMN cpf integer;
ALTER TABLE cliente RENAME to tbl_cliente;

ALTER TABLE conta RENAME to tbl_conta;

ALTER TABLE emprestimo RENAME to tbl_emprestimo;


ALTER TABLE agencia RENAME COLUMN cidade_agencia to endereco_agencia;
ALTER TABLE agencia RENAME to tbl_agencia;

create schema heclair;
