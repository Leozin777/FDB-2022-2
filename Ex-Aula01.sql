--exercicio 1
create table professores
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    CPF varchar(14) unique
);

create table disciplinas
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    id_professor int not null,
    constraint disciplina_tem_professores
    foreign key(id_professor) references professores(id)
);

create table softwares
(
    id int not null auto_increment primary key,
    nome varchar(100) not null
);

create table disciplinas_tem_software
(
    id int not null auto_increment primary key,
    id_disciplina int not null,
    id_software int not null,
    constraint fk_disciplina_disciplinas_software_tem_software
    foreign key(id_disciplina) references disciplinas(id),
    constraint fk_software_discplinas_tem_disciplina
    foreign key(id_software) references softwares(id)
);

--exercicio 2

create table alunos
(
    id int not null auto_increment primary key,
    nome varchar(100) not null
);

create table departamentos
(
    id int not null auto_increment primary key,
    nome varchar(100)
);

create table cursos
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    id_depto int not null,
    constraint fk_curso_tem_departamento
    foreign key(id_depto) references departamentos(id)
);

create table professores
(
    id int not null auto_increment primary key,
    nome varchar(100) not null
);

create table disciplinas
(
    id int not null auto_increment primary key,
    nome varchar(100),
    id_professor int not null,
    constraint fk_disciplina_tem_professores
    foreign key(id_professor) references professores(id)
);

create table matricula 
(
    id int not null auto_increment primary key,
    data_matricula date not null,
    id_disciplina int not null,
    id_aluno int not null,
    constraint fk_matricula_tem_disciplina
    foreign key(id_disciplina) references disciplinas(id),
    constraint fk_matricula_tem_professor
    foreign key(id_aluno) references alunos(id)
);