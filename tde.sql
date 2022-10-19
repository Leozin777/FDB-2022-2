--TDE DDL

create table colaboradores
(
    id int not null auto_increment primary key,
    num_matricula int not null unique,
    nome varchar(100) not null,
    email varchar(50) not null,
    senha varchar(100) not null,
    id_coordenador int,
    constraint coordenadores_fk_colaboradores
    foreign key(id_coordenador) references colaboradores(id)
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

create table projetos_tem_colaboradores
(
    id int auto_increment primary key,
    id_projeto int not null,
    id_colaborador int not null,
    constraint projetos_fk_projetos_tem_colaboradores
    foreign key(id_projeto) references projetos(id),
    constraint colaboradores_fk_projetos_tem_colaboradores
    foreign key(id_colaborador) references colaboradores(id)
);


create table projetos_comentarios
(
    id int not null auto_increment primary key,
    descricao varchar(200) not null,
    data_hora datetime not null, 
    id_colaboradorer int not null,
    id_projeto int not null,
    constraint fk_comentario_feito_colaborador
    foreign key(id_colaborador) references colaboradores(id),
    constraint comentarios_fk_projetos
    foreign key(id_projeto) references projetos(id)
);

create table departamentos
(
    id int auto_increment primary key,
    nome varchar(100) not null
);

create table projetos_melhoria_processos
(
    id int auto_increment primary key,
    resultado_esperado varchar(100) not null,
    id_projeto int not null,
    id_departamento int not null,
    constraint projetos_fk_projetos_melhoria_processo
    foreign key(id_projeto) references projetos(id),
    constraint departamentos_fk_projetos_melhoria_processo
    foreign key(id_departamento) references departamento
);

create table projetos_sociais 
(
    id int auto_increment primary key,
    publico_beneficiario varchar(200) not null,
    id_projeto int not null,
    constraint projetos_fk_projetos_sociais
    foreign key(id_projeto) references projetos(id)
);

ALTER table fornecedores
add COLUMN data_ultima_compra date

