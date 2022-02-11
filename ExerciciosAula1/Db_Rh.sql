create database db_rh;

use db_rh;

create table tb_funcionarios(

	id bigint auto_increment,
    nome varchar(255) not null,
    data_de_nascimento date not null,
    data_de_contratacao date not null,
    salario decimal(10,2) not null,
    
    primary key (id)

);

INSERT INTO tb_funcionarios(nome, data_de_nascimento, data_de_contratacao, salario) VALUE ("Matheus da Silva Oliveira", '2002-05-20', '2021-11-20', 3000.78);
insert into tb_funcionarios(nome, data_de_nascimento, data_de_contratacao, salario) value ("Josefa Rosilene da Silva", '1976-08-06', '2011-08-02', 4052.32);
insert into tb_funcionarios(nome, data_de_nascimento, data_de_contratacao, salario) value ("Jonatan Alves Silva", '2001-04-20', '2021-11-19', 2100.78);
insert into tb_funcionarios(nome, data_de_nascimento, data_de_contratacao, salario) value ("Raquel Santos Lima", '2003-03-17', '2021-11-17', 3030.78);
insert into tb_funcionarios(nome, data_de_nascimento, data_de_contratacao, salario) value ("Jorge Leal", '1998-02-03', '2021-11-20', 1120.78);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set salario = 1507.54 where id = 5;

select * from tb_funcionarios;


