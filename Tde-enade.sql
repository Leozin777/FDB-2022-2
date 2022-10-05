-- TDE DDL

create table colaboradores
(
    id int not null auto_increment primary key,
    num_matricula int not null unique,
    nome varchar(100) not null,
    email varchar(50) not null,
    senha varchar(100) not null
);

create table projetos
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(500) not null,
    duracao float not null,
    id_colaborador int not null,
    constraint fk_projeto_tem_colaborador
    foreign key(id_colaborador) references colaboradores(id)
);

create table comentarios
(
    id int not null auto_increment primary key,
    descricao varchar(200) not null,
    id_colaboradorer int not null,
    id_projeto int not null,
    constraint fk_comentario_feito_colaborador
    foreign key(id_colaborador) references colaboradores(id),
    constraint fk_comentario_esta_projeto
    foreign key(id_projeto) references projetos(id)
);

create table 
