create database bd_sistema_bancario;

\ l;

\ c bd_sistema_bancario;

create table tabela1 (
	inteiro integer,
	caracteres char,
	caracteresvar varchar,
	truefalse boolean,
	reall real,
	datas date
);

create table tabela2 (
	inteiro integer,
	caracteres char,
	caracteresvar varchar,
	truefalse boolean,
	reall real,
	datas date
);

create table tabela3 (
	inteiro integer,
	caracteres char,
	caracteresvar varchar,
	truefalse boolean,
	reall real,
	datas date
);

create table tabela4 (
	inteiro integer,
	caracteres char,
	caracteresvar varchar,
	truefalse boolean,
	reall real,
	datas date
);

create table tabela5 (
	inteiro integer,
	caracteres char,
	caracteresvar varchar,
	truefalse boolean,
	reall real,
	datas date
);

create table cliente(
	nome_cliente varchar(50),
	cidade_cliente varchar(50),
	endereco_cliente varchar(50)
);

create table conta(
	numero_conta integer,
	nome_agencia varchar(15),
	saldo real
);

create table emprestimo(
	numero_emprestimo integer,
	nome_agencia varchar(15),
	valor real
);

create table agencia(
	nome_agencia varchar(15),
	cidade_agencia varchar(30),
	depositos integer
);

drop table tabela1;

drop table tabela2;

drop table tabela3;

drop table tabela4;

drop table tabela5;

alter table
	cliente rename to tbl_cliente;

alter table
	tbl_cliente
add
	column idade integer;

alter table
	tbl_cliente
add
	column cpf integer;

alter table
	conta rename to tbl_conta;

alter table
	emprestimo rename to tbl_emprestimo;

alter table
	agencia rename to tbl_agencia;

alter table
	tbl_agencia rename column cidade_agencia to endereco_agencia;

create schema Eduardo;
