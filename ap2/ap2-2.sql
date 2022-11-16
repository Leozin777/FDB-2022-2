create table pesquisadores
(
    cod_pesquisador int auto_increment primary key,
    nome varchar(50) not null
);

create table artigos
(
    cod_artigos int auto_increment primary key,
    cod_pesquisador int not null,
    cod_periodico int not null,
    titulo varchar(50) not null,
    pag_inicial int not null,
    pag_final int not null,
    titulo_periodico varchar(50),
    editora varchar(50) not null,
    constraint artigos_fk_pesquisadores
    foreign key(cod_pesquisador) references pesquisadores(cod_pesquisador)
    on delete restrict
    on update cascade
);

--listar o artigo com código 1234
SELECT * from artigos WHERE cod_artigos = 1234

--listar os artigos da editora Saraiva.
SELECT * from artigos WHERE editora = 'Saraiva'

--Listar os pesquisadores onde o nome inicia com João.
select * from pesquisadores WHERE nome like 'joão%'