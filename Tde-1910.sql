create table categorias
(
    id int auto_increment primary key,
    nome varchar(50) not null
)

create table fornecedores
(
    id int auto_increment primary key,
    nome varchar(50) not null
)

create table produtos
(
    id int auto_increment primary key,
    id_categoria int not null,
    descricao varchar(300) not null,
    data_cadastro date not null,
    valor_unitario int not null,
    constraint produto_fk_produto_tem_categorias
    foreign key(id_categoria) references categorias(id)
)

create table pedidos
(
    id int auto_increment primary key,
    id_fornecedor int,
    id_produto int,
    valor_unitario int not null,
    data_pedido date not null,
    constraint pedido_fk_pedido_tem_fornecedor
    foreign key(id_fornecedor) references fornecedores(id),
    constraint pedido_fk_pedido_possui_produto
    foreign key(id_produto) references produtos(id)
)
