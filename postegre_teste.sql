create table if not exists teste (
id serial primary key,
nome varchar(50) not null,
created_at timestamp not null default current_timestamp
);

drop table if exists teste;

create table if not exists teste (
cpf varchar(11) not null,
nome varchar(50) not null,
created_at timestamp not null default current_timestamp,
primary key (cpf)
);

insert into teste (cpf, nome, created_at)
values ('22344566712', 'José Colméia', '2019-07-01 12:0:00');

update teste set nome = 'Pedro Alves' where cpf = '22344566712';

select * from teste;
