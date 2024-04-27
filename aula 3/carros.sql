"marquinhos você é meu herói"

drop database if exists LojaProway;
create database LojaProway;
use LojaProway;

create table cores(
	id int auto_increment,
	nome varchar(50) not null,
	primary key (id)
); 
insert into cores (nome) value
("cinza"),
("vermelho"),
("azul"),
("preto"),
("branco");
select id, nome from cores;

create table cliente(
	id int auto_increment,
	nome varchar (40) not null,
	cpf varchar(14) not null,
	primary key (id)
);

insert into cliente (nome, cpf) values
("Bárbara Francisca Sabrina Mendes", "670.034.030-64"),
("Ryan Vicente Theo Rezende", "672.662.311-91"),
("Marina Antonella Bernardes", "428.961.843-09"),
("Severino Vinicius Emanuel Oliveira", "690.558.028-75"),
("Roberto Gabriel Cauê Pinto", "986.080.733-74");	

describe cliente

create table marcas(
	id int auto_increment,
	nome varchar(30) not null,
	primary key (id)
);

insert into marcas (nome) values
("Volkswagen"),
("Volvo"),
("Fiat"),
("Hyundai "),
("Audi"),
("BMW"),
("Peugeout"),
("Ford");
select id, nome from marcas;

create table linhas(
	id int auto_increment,
	nome varchar(30) not null,
	primary key(id)
);
insert into linhas (nome) values
("Sedan"),
("Hatch"),
("SUV"),
("Sport"),
("Pickup"),
("Wagon");

select id, nome from linhas;

create table carros (
	id int auto_increment,
	id_marca int not null,
	modelo varchar(100),
	primary key (id),
	foreign key (id_marca) references marcas (id)
);

insert into carros (id_marca, modelo) values
	(1, "polo"),
	(1, "golf"),
	(1, "gol"),
	(1, "fusca"),
	(2, "XC40"),
	(2, "XC60"),
	(3, "palio"),
	(3, "uno");

select id, nome from marcas;
select id, id_marca, modelo from carros;

create table versoes(
	id int auto_increment, -- primary key
	id_carro int not null, -- foreign key
	id_linha int not null, -- foreign key
	ano int not null,
	preco double not null,
	
	foreign key (id_carro) references carros (id),
	foreign key (id_linha) references linhas (id), 
	primary key (id)
);

insert into  versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo= "Polo"),
	(select id from linhas where nome = "hatch"),
	2023,
	105399.99
);

select * from versoes


insert into  versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo= "Polo"),
	(select id from linhas where nome = "sedan"),
	2022,
	95970.00
);

insert into  versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo= "XC40"),
	(select id from linhas where nome = "SUV"),
	2024,
	329000.00
);

insert into  versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo= "XC60"),
	(select id from linhas where nome = "SUV"),
	2020,
	420000.00
);

insert into  versoes (id_carro, id_linha, ano, preco) values
(
	(select id from carros where modelo= "Fusca"),
	(select id from linhas where nome = "Hatch"),
	1977,
	29999.99
);
select * from versoes

select
	*
	from versoes
inner join linhas on (versoes.id_linha = linhas.id);

select * from versoes 
	









