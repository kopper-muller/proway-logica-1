drop database if exists proway;

create database proway;


use proway;


create table if not exists estados(
	nome varchar(30) not null,
	id int auto_increment,
	primary key (id)
);

insert into estados (nome) values
	("Santa Catarina"),
	("Bahia"),
	("Rio de Janeiro");

select id, nome from estados;

create table if not exists cidades (

	nome varchar(50) not null,
	id int auto_increment,
	id_estado int not null,
	primary key (id),
	foreign key (id_estado) references estados (id)
);

insert into cidades (id_estado, nome) values
((select id from estados where nome = "Santa Catarina"), "Florianópolis");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Santa Catarina"), "penha");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Santa Catarina"), "Blumenau");

insert into cidades (id_estado, nome) values
((select id from estados where nome = "Bahia"), "Salvador");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Bahia"),"chique-chique");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Bahia"), "sauípe");

insert into cidades (id_estado, nome) values
((select id from estados where nome = "Rio de Janeiro"),"Rio de Janeiro");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Rio de Janeiro"),"macaé");
insert into cidades (id_estado, nome) values
((select id from estados where nome = "Rio de Janeiro"),"petrópolis");

select
	estados.nome,
	cidades.nome
	from cidades
inner join estados on (cidades.id_estado = estados.id);



 
