--comentário

/*bloco 
de
comentário*/

/*padroes de nomes:

snake_case (usa esse aq e ja eras) mais utilizada em sql
camelCase Usado em js = ts
PascalCase Outras lps 

SQL não é uma LP
mas PL/SQL

*/

--1 cliente tem endereço e um endereço pertence a um cliente

/*
cliente(id int primary, nome char(100));
enderecos(id, logradouro, numero, bairro, cidade, estado, id_cliente FK);
/*

--CREATE TABLE
/*
create table <nome_da_tabela>
(
    atributo | dominio | restrição de vazio | chave
);
*/

create table clientes
(
    id int not null primary key,
    nome varchar(100) not null,
    CPF varchar(14) unique,
    limite_credito float default 0
);

create table enderecos
(
    id int not null primary key,
    logradouro varchar(100) not null,
    numero int default 0,
    bairro varchar(100),
    cidade varchar(100),
    estado varchar(2),
    id_cliente int not null,
    constraint clientes_tem_enderecos
    foreign key(id_cliente) references clientes(id)
);


