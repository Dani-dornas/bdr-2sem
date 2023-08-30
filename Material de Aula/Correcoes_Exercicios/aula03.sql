create database bd_aula03;
\c bd_aula03
create domain chk_categoria text check (value='DRAMA' or value='COMEDIA');
create domain chk_status text check (value='DISPONIVEL' or value='ALUGADO');

create table tbl_cliente (codigo_cliente integer PRIMARY KEY, nome text not null, 
cidade text, endereco text);

create table tbl_titulo (codigo_titulo integer primary key, titulo text not null, 
descricao text, categoria chk_categoria);

create table tbl_livros (cod_livro integer PRIMARY KEY, 
codigo_titulo integer REFERENCES tbl_titulo(codigo_titulo), status chk_status 
DEFAULT 'DISPONIVEL');

create table tbl_emprestimo (numero_emprestimo integer PRIMARY KEY, 
codigo_cliente integer REFERENCES tbl_cliente(codigo_cliente), 
codigo_livro integer REFERENCES tbl_livros(cod_livro));
