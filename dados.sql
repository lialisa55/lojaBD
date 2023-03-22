create table cliente(
    cod_clie number(4) primary key,
    nome_clie varchar(20) not null,
    endereco varchar(30),
    cidade varchar(15),
    cep char(8),
    uf char(2),
    cnpj char(16),
    ie char(12)
);

create table vendedor(
    cod_ven number(4) primary key,
    nome_ven varchar(20) not null,
    salario_fixo number(10,2),
    comissao char(1)
);

create table produto(
    cod_prod number(4) primary key,
    unidade varchar(3),
    descricao varchar(20),
    val_unit number(8,2)
);

create table pedido(
    num_pedido number(4) primary key,
    pr_entrega number(3) not null,
    cod_clie references cliente,
    cod_ven references vendedor
);

create table item_pedido(
    num_pedido references pedido,
    cod_prod references produto,
    quantidade number(8,2)
);