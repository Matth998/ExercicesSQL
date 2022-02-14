create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

	id bigint auto_increment,
    classe varchar(255),
    características varchar(255),
    
    primary key (id)
    
);

create table tb_personagem(

	id bigint auto_increment,
    nome varchar(255),
    velocidade decimal(10,2),
    defesa decimal(10,2),
    ataque decimal(10,2),
    id_classe bigint,
    
    primary key(id),
    foreign key (id_classe) references tb_classe(id)

);

insert into tb_classe(classe, características) value ("Arqueiro", "Combate a distância com arco e flecha (às vezes com vários tipos de flechas como fogo, gelo, prata, etc)");
insert into tb_classe(classe, características) value ("Barbaro", "Combate corporal com espadas, machados e maças, geralmente de duas mãos.");
insert into tb_classe(classe, características) value ("Paladino", "Combate corporal com espadas, machados, lanças, maças e escudos. Também podem ter magias sagradas que causam dano a distância.");
insert into tb_classe(classe, características) value ("Clérigo", "Foco principal em dar suporte aos membros do grupo. Ganha experiência compartilhada.");
insert into tb_classe(classe, características) value ("Assassino", "Combate corporal com adagas, katares, punhais e outras armas de punho");
insert into tb_classe(classe, características) value ("Mago", "Combate a distância com magias de variados elementos (fogo, gelo, terra, raios, sombra, etc).");
insert into tb_classe(classe, características) value ("Cavaleiro", "Combate corporal com espadas, lanças, machados, maças e escudos");

select * from tb_classe;

insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Fuse Hand", 312, 453, 376, 3);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Udephyx", 365, 212, 458, 6);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Swetelove", 245, 545, 312, 7);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Beistina", 356, 299, 476, 1);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Norngestaet", 432, 411, 475, 2);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Cleo Candlestorm", 378, 325, 364, 4);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Florin", 543, 215, 521, 5);
insert into tb_personagem(nome, velocidade, defesa, ataque, id_classe) value ("Xoggaran", 546, 343, 655, 6);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where ataque < 2000;
select nome from tb_personagem where nome like 'C%';
select velocidade from tb_personagem inner join tb_classe on tb_personagem.id_classe = tb_classe.id;
select * from tb_personagem as id_classe inner join tb_classe as classe on id_classe = classe like 'Mago%';

select * from tb_personagem;