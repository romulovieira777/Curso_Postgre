create table if not exists teste_a (
id serial primary key,
valor varchar(10)
);

create table if not exists teste_b (
id serial primary key,
valor varchar(10)
);

insert into teste_a (valor) values ('teste1');
insert into teste_a (valor) values ('teste2');
insert into teste_a	(valor) values ('teste3');
insert into teste_a (valor) values ('teste4');

insert into teste_b (valor) values ('teste_a');
insert into teste_b (valor) values ('teste_b');
insert into teste_b (valor) values ('teste_c');
insert into teste_b (valor) values ('teste_d');

select tbla.valor, tblb.valor
from teste_a tbla
cross join teste_b tblb;

drop table if exists teste_a;
drop table if exists teste_b;
