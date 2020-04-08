/* Fazendo seleção de uma tabela */
select numero, nome, ativo
from banco;

/* Criando uma VIEW */
create or replace view vw_bancos as (
select numero, nome, ativo
from banco
);

/* Seleção da view criada */
select numero, nome, ativo
from vw_bancos;

/* Criando uma VIEW */
create or replace view vw_bancos_2 (banco_numero, banco_nome, banco_ativo) as (
select numero, nome, ativo
from banco
);

/* Seleção da view criada */
select banco_numero, banco_nome, banco_ativo
from vw_bancos_2;

/* Inserindo valores na view criada */
insert into vw_bancos_2 (banco_numero, banco_nome, banco_ativo)
values (51, 'Banco Boa Ideia', true);

/* Seleção dos valores inserido na view criada */
select banco_numero, banco_nome, banco_ativo
from vw_bancos_2
where banco_numero = 51;

/* Seleção dos valores */
select numero, nome, ativo
from banco
where numero = 51;


update vw_bancos_2 set banco_ativo = false where banco_numero = 51;

/* deletando um arquivo */
delete from vw_bancos_2 where banco_numero = 51;

/* Criando uma view temporaria */
create or replace temporary view vw_agencia as (
select nome
from agencia
);

/* Seleção dos valores */
select nome 
from vw_agencia;

/* Criando uma VIEW */
create or replace view vw_bancos_ativos as (
select numero, nome, ativo
from banco
where ativo is true
) with local check option;

/* Inserindo valores na view criada */
insert vw_bancos_ativos (numero, nome, ativo) values (51, 'banco Boa Ideia', false);

/* Criando uma VIEW */
create or replace view vw_bancos_com_a as (
select numero, nome, ativo
from vw_bancos_ativos
where nome like 'aa%' 
);

/* Seleção dos valores */
select numero, nome, ativo
from vw_bancos_com_a;

/* Inserindo valores na view criada */
insert into vw_bancos_com_a (numero, nome, ativo) values (333, 'Alfa Omega', true);
insert into vw_bancos_com_a (numero, nome, ativo) values (331, 'Alfa Gama', true);
insert into vw_bancos_com_a (numero, nome, ativo) values (332, 'Alfa Gama Beta', true);
