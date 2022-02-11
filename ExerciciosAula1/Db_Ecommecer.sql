create database db_ecommecer;

use db_ecommecer;

create table tb_marcas(

	id bigint auto_increment,
    nome varchar(255) not null,
    ativo boolean not null,

	primary key(id)
);

insert into tb_marcas(nome, ativo) value ("Nike", true);
insert into tb_marcas(nome, ativo) value ("Adidas", true);
insert into tb_marcas(nome, ativo) value ("Fatal Surf", true);
insert into tb_marcas(nome, ativo) value ("Gap", true);
insert into tb_marcas(nome, ativo) value ("Dc", true);

create table tb_produtos(

	id bigint auto_increment,
    nome varchar(255) not null,
    valor decimal(10,2) not null,
    marca_id bigint not null,
    
    primary key (id),
    foreign key (id) references tb_marcas(id)

);

insert into tb_produtos(nome, valor, marca_id) value ("Camisa", 65.99, 1);
insert into tb_produtos(nome, valor, marca_id) value ("Tenis", 254.99, 2);
insert into tb_produtos(nome, valor, marca_id) value ("Camisa", 43.99, 3);
insert into tb_produtos(nome, valor, marca_id) value ("Blusa de frio", 152.99, 4);
insert into tb_produtos(nome, valor, marca_id) value ("Tenis", 165.99, 1);

select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;

update tb_produtos set nome = "Calça", valor = 87.99 where id = 2;

select * from tb_produtos;
