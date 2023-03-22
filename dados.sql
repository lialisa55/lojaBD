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

insert ALL
    into cliente values (720, 'Ana', 'Rua 17 n19', 'Niterói', '24358310', 'RJ', '12113231/0001-34', '2134')
    into cliente values (870, 'Flávio', 'Av. Pres. Vargas, 10', 'São Paulo', '22763931', 'SP', '22534126/9387-9', '4631')
    into cliente values (110, 'Jorge', 'Rua Caiapó, 13', 'Curitiba', '30078500', 'PR', '14512764/9834-9', null)
    into cliente values (222, 'Lúcia', 'Rua Itabira, 123', 'Belo Horizonte', '22124391', 'MG', '283152123/9348-8', '2985')
    into cliente values (830, 'Maurício', 'Av. Paulista, 1236', 'São Paulo', '3012683', 'SP', '32816985/7465-6', '9343')
    into cliente values (130, 'Edmar', 'Rua da Praia, s/n', 'Salvador', '30079300', 'BA', '23463284/234-9', '7121')
    into cliente values (410, 'Rodolfo', 'Largo da Lapa, 27', 'Rio de Janeiro', '30078900', 'RJ', '12835128/2346-9', '7431')
    into cliente values (20, 'Beth', 'Av. Climério, 45', 'São Paulo', '25679300', 'SP', '32485126/7326-8', '9280')
    into cliente values (157, 'Paulo', 'Trav. Moraes, casa 3', 'Londrina', null, 'PR', '32848223/324-2', '1923')
    into cliente values (180, 'Lívio', 'Av. Beira Mar, 1256', 'Florianópolis', '30077500', 'SC', '12736571/2347-4', '1111')
    into cliente values (260, 'Susana', 'Rua Lopes Mandes, 12', 'Niterói', '30046500', 'RJ', '21763571/232-9', '2530')
    into cliente values (290, 'Renato', 'Rua Meireles, 123', 'São Paulo', '30225900', 'SP', '13276571/1231-4', '1820')
    into cliente values (390, 'Sebastião', 'Rua da Igreja, 10', 'Uberaba', '30438700', 'MG', '32176547/213-3', '9071')
    into cliente values (234, 'José', 'Quadra 3, Bl. 3, sl. 1003', 'Brasília', '22841650', 'DF', '21763576/1232-3', '2931')
SELECT * FROM dual;