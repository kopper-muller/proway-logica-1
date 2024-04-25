show schemas; -- consultar todos os bancos de dado
create database if not exists proway; -- criar o banco de dados "proway"
show schemas; -- consultar todos os bds
use proway; -- definir qual bd será utilizado
create table if not exists alunos( -- if not exists é literalmente se já nao existir um banco de dados com esse nome, crie
   codigo INT, -- coluna do tipo inteiro (int significa inteiro)
   nome VARCHAR(40) -- (varchar=texto) coluna do tipo de texto
);
-- apagar os registros
delete from alunos where nome = "bernardo";
delete from alunos where nome = "cintia";

show tables; -- consultar todas as tabelas do bd selecionado
select codigo, nome from alunos; -- consultar os registros da tabelas de alunos

insert into alunos (codigo, nome) value (1234, "bernardo");-- inseir um "nome" e um "codigo" 

-- consultar os registros da tabela de alunos
select codigo, nome from alunos;

insert into alunos (codigo, nome) value (1235, "cintia");
 -- arpesenta a a tabela "alunos"
describe alunos;
-- adiciona a coluna "telefone"
alter table alunos add column telefone varchar(13);
-- consulta os registros da tabela "alunos"
select codigo, nome, telefone from alunos;
-- atualizar o telefone do bernardo
update alunos set telefone = "47 99123-4567" where codigo = 1234;
update alunos set telefone = "47 99765-4321" where codigo = 1235;

alter table alunos add column enderecos varchar (40);

update alunos set enderecos= "Rua Amazônia" where codigo= 1234;

update alunos set enderecos= "Rua Piuaí" where codigo= 1235;

select codigo, nome, telefone, enderecos from alunos;

alter table alunos add column CEP varchar (9)

update alunos set CEP= "89070-203" where codigo= 1234;
update alunos set CEP= "89070-260" where codigo= 1235;

select codigo, nome, telefone, enderecos, CEP from alunos;

alter table alunos add column Numero int(5)

update alunos set numero= "120" where codigo= 1234;
update alunos set numero= "200" where codigo= 1235;

select codigo, nome, telefone, enderecos, CEP, numero from alunos;

alter table alunos add column cidade varchar(20)

update alunos set cidade= "Blumenau" where codigo= 1234;
update alunos set cidade= "Blumenau" where codigo= 1235;

select codigo, nome, telefone, enderecos, CEP, numero, cidade from alunos;

alter table alunos add column estado varchar(2)

update alunos set estado= "SC" where codigo= 1234;
update alunos set estado= "SC" where codigo= 1235;

select codigo, nome, telefone, enderecos, CEP, numero, cidade, estado from alunos;

alter table alunos add column cursos varchar(1000);

describe alunos;

update alunos set cursos= "LO1, LO2, PYTHON1" where codigo= 1234;
update alunos set cursos= "LO1, LO2, JAVASCRIPT, JAVA, NODEJS, ANGULAR, TYPESCRIPT" where codigo= 1235;

select codigo, nome, telefone, enderecos, CEP, numero, cidade, estado, cursos from alunos;





