--1

create table clientes
(
    id int auto_increment primary key,
    cpf char(14) not null unique,
    nome varchar(80) not null,
    telefone varchar(20) not null,
    endereco varchar(150) not null
);

create table marcas
(
    cod_marca int auto_increment primary key,
    nome varchar(80) not null
);

create table carros 
(
    id int auto_increment primary key,
    cod_marca int not null,
    placa char(7) not null unique,
    modelo varchar(20) not null,
    ano date not null,
    valor float not null,
    constraint carros_fk_marcas
    foreign key(cod_marca) references marcas(cod_marca)
    on delete restrict
    on update cascade
);

create table locacoes
(
    num_aluguel int auto_increment primary key,
    id_cliente int not null,
    id_carro int not null,
    data_aluguel date not null,
    data_devolucao date not null,
    valor float not null,
    constraint locacoes_fk_clientes
    foreign key(id_cliente) references clientes(id)
    on delete restrict
    on update cascade,
    constraint locacoes_fk_carros
    foreign key(id_carro) references carros(id)
    on delete restrict
    on update cascade
);

--Quais carros foram locados no mês de setembro de 2021.
SELECT id_carro from locacoes where data_aluguel like '2021-09%';

--Quais clientes que tem silva no nome.
select * from clientes WHERE nome like '%silva';

--Faça uma atualização para acrescentar 20% nos valores dos aluguéis.
update locacoes set valor = valor * 1.2;