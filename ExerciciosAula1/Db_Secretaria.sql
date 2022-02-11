create database db_secretaria;

use db_secretaria;

create table tb_estudantes(

	id bigint auto_increment,
    nome varchar(255) not null,
    data_de_nascimento date not null,
    ra int,
    nota decimal(10,2),
	
    primary key(id)

);

insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Matheus da Silva Oliveira", '2002-05-20', 548353252, 9.7);
insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Larissa Santos", '2000-08-16', 634353456, 9.6);
insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Luiz Gustava", '1998-10-10', 52852752, 8.7);
insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Pedro Henrique Santos", '2001-04-12', 923355252, 5.2);
insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Daniela Souza", '2002-06-17', 548735252, 7.7);
insert into tb_estudantes(nome, data_de_nascimento, ra, nota) value ("Gabriele Souza", '1998-06-12', 54635252, 9.8);

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 5.6 where id = 5;

select * from tb_estudantes;