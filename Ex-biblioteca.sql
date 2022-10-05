create table clientes
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    cpf varchar(14) not null unique,
    telefone varchar(30) not null unique,
    endereco varchar(100) not null
);

create table autores
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    descricao varchar(200) not null
);

create table pedidos
(
    id int not null auto_increment primary key,
    id_cliente int not null,
    constraint fk_pedidos_tem_clientes
    foreign key(id_cliente) references clientes(id)
);

create table livros
(
    id int not null auto_increment primary key,
    nome varchar(100) not null,
    genero varchar(100) not null,
    descricao varchar(200) not null,
    id_pedido int not null,
    id_autor int not null,
    constraint fk_livros_possui_pedido
    foreign key(id_pedido) references pedidos(id),
    constraint fk_livros_possui_autor
    foreign key(id_autor) references autores(id)
);