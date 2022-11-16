create table tipo_socio
(
    cod int auto_increment primary key,
    nome varchar(30) not null unique,
    descricao varchar(300) not null
);

create table socios
(
    num int auto_increment primary key,
    cod_tipo_socio int not null,
    nome varchar(80) not null,
    endereco varchar(300) not null,
    constraint socios_fk_tipo_socio
    foreign key(cod_tipo_socio) references tipo_socio(cod)
    on delete restrict
    on update cascade
);

create table servicos
(
    cod int auto_increment primary key,
    descricao varchar(300),
    valor float not null
);

create table pedidos
(
    cod int auto_increment primary key,
    num_socio int not null,
    cod_servico int not null,
    valor_total float not null,
    mes_ref date not null,
    constraint pedidos_fk_socios
    foreign key(num_socio) references socios(num)
    on delete restrict
    on update cascade,
    constraint pedidos_fk_servicos
    foreign key(cod_servico) references servicos(cod)
    on delete restrict
    on update cascade
);

--Listar os serviços onde o valor pago é maior que 500.
SELECT * from servicos where valor_total >500

--Listar os pedidos onde o mês de referência é janeiro de 2020.
SELECT * from pedidos where mes_ref >='2020-01-01' and mes_ref <='2020-01-31' 

--Listar os sócios que moram na rua que tem o nome Barão do Rio Branco.
SELECT * from socios where endereco='Barão do Rio Branco'