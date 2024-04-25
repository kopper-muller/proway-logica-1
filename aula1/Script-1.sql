use proway;
create table if not exists lanches(
  codigo INT,
  nome VARCHAR(50), 
  quantidade_consumo INT 
);

show tables; 
select codigo, nome, quantidade_consumo from lanches;
insert into lanches (codigo, nome, quantidade_consumo) value (1, "pão de queijo", 5);
insert into lanches (codigo, nome, quantidade_consumo) value (2, "fatia de pão", 2);
insert into lanches (codigo, nome, quantidade_consumo) value (3, "patê de linguiça", 8);
insert into lanches (codigo, nome, quantidade_consumo) value (4, "uva", 20);
insert into lanches (codigo, nome, quantidade_consumo) value (5, "bolo de chocolate", 2);
insert into lanches (codigo, nome, quantidade_consumo) value (6, "suco", 2);
select codigo, nome, quantidade_consumo from lanches;

alter table lanches add column preco_unitario DOUBLE;

describe lanches;

update lanches set preco_unitario= 2.5 where codigo= 1 or codigo= 3;
update lanches set preco_unitario= 1 where codigo= 2;
update lanches set preco_unitario= 0.25 where codigo= 4;
update lanches set preco_unitario= 5 where codigo= 5; 
update lanches set preco_unitario= 2 where codigo= 6;

 select 
	codigo, 
	nome, 
	quantidade_consumo as "quantidade consumida",
	preco_unitario as "preço unitário",
	preco_unitario*quantidade_consumo as "valor total"		
from lanches;
