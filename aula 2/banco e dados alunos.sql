use proway;
describe lanches;
select codigo, nome, quantidade_consumo, preco_unitario from lanches 

select max(quantidade_consumo)
	from lanches;

select min(quantidade_consumo)
	from lanches; 

-- avg=average=media 
select avg(quantidade_consumo)
	from lanches;

-- consultar a quantidade de registros
select count(codigo)
	from lanches; 
drop table if exists alunos

describe lanches 

create table alunos(
	codigo int auto_increment, 
	nome varchar(40) not null,
	sobrenome varchar(100) not null,
	data_nascimento date ,
	nota1 double,
	nota2 double,
	nota3 double,
	percentual_frequencia double ,
	primary key(codigo)
	);
describe alunos


select insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) value
	("Bernardo", "Da Silva", "2006-01-3", 10.00, 9.09, 9.99, 100);

insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) value
	("Renan", "Ploma", "1997-09-21", 8.0, 4.3, 7.5, 25);

insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) value
	("Guilherme", "Plamo", "2007-02-01", 10, 10, 10, 15.20);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) value
	("Cintia", "Pluma", "1998-03-04", 5.45, 8.00, 7.55, 75);
insert into alunos (nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia) value
	("Genesis", "Plima", "1999-11-16", 8, 8, 7, 80);	
select 
codigo,
	nome, sobrenome, data_nascimento, nota1, nota2, nota3, percentual_frequencia
	from alunos;

-- consultar nome e soma das notas de cada aluno

select
	nome,
	nota1+nota2+nota3
 from alunos;

-- cosultar nome e media das notas de cada aluno

select 
	nome,
	(nota1+nota2+nota3)/3 as "média"
from alunos;

-- consultar o nome completo do aluno
select
	concat( nome, " ", sobrenome) as "nome competo"
from alunos; 

-- ver horário
select now();

-- consultar ano
select year(now())

-- consultar mes
select concat("blumenau, ", day(now()), " de ",  monthname(now()), " de ",  year(now()), ".");

-- ask the name and the age from the students

select nome, year(now())-year(data_nascimento)
from alunos;



