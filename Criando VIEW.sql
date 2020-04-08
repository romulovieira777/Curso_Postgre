/* Criando uma tabela */
create table if not exists funcionarios (
id serial,
nome varchar(50),
gerente integer,
primary key (id)
);

/* Inserindo valores na tabela */
insert into funcionarios (nome, gerente) values ('Ancelmo', null);
insert into funcionarios (nome, gerente) values ('Beatriz', 1);
insert into funcionarios (nome, gerente) values ('Ancelmo', null);
insert into funcionarios (nome, gerente) values ('Magno', 1);
insert into funcionarios (nome, gerente) values ('Cremilda', 2);
insert into funcionarios (nome, gerente) values ('Wagner', 4);

/* Seleção dos valores */
select id, nome, gerente
from funcionarios
where gerente is null
union all
select id, nome, gerente
from funcionarios
where id = 999;

/* Criando uma VIEW */
create or replace recursive view vw_dunc (id, gerente, funcionario) as (
select id, gerente, nome
from funcionarios
where gerente is null
union all
select funcionarios.id, funcionarios.gerente, funcionarios.nome
from funcionarios
join vw_func on vw_func.id = funcionarios.gerente
);
