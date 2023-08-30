create database bd_aula03;

\ c bd_aula03;

create table tbl_cliente (
	codigo_cliente integer primary key,
	Nome varchar not null,
	Cidade varchar,
	Endereco varchar
);

create table tbl_titulo (
	codigo_titulo integer primary key,
	titulo varchar Not null,
	descricao varchar,
	categoria text
);

create table tbl_emprestimo (
	numero_cliente integer primary key,
	codigo_cliente integer,
	codigo_livro integer
);

create table tbl_livros (
	cod_livro integer primary key,
	codigo_titulo integer,
	status text
);

create domain categoria_tipo text check (
	value = 'drama'
	or value = 'comedia'
);

ALTER TABLE
	tbl_titulo
ALTER COLUMN
	categoria
set
	data type categoria_tipo;

create domain status_chk text check (
	value = 'disponivel'
	or value = 'indisponivel'
);

ALTER TABLE
	tbl_livros
alter column
	status
set
	data type status_chk;

ALTER TABLE
	tbl_livros
ADD
	CONSTRAINT FKlivro_titulo FOREIGN KEY (codigo_titulo) REFERENCES tbl_titulo (codigo_titulo);

ALTER TABLE
	tbl_emprestimo
ADD
	CONSTRAINT FKemprestimo_livro FOREIGN KEY (codigo_livro) REFERENCES tbl_livros (cod_livro);

ALTER TABLE
	tbl_emprestimo
ADD
	CONSTRAINT FKemprestimo_cliente FOREIGN KEY (codigo_cliente) REFERENCES tbl_cliente (codigo_cliente);
