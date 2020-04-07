select numero, nome
from banco;

select banco_numero, numero, nome
from agencia;

select nome, numero
from cliente;

select banco_numero, agencia_numero, numero, digito, cliente_numero
from conta_corrente;

select id, nome
from tipo_transacao;

select banco_numero, agencia_numero, conta_corrente_numero, conta_corrente_digito, cliente_numero, valor
from cliente_transacoes;

select count(1) from banco; /*contando o número de registros*/

select count(1) from agencia;/*contando o número de registros*/

select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
join agencia on agencia.banco_numero = banco.numero;

select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
left join agencia on agencia.banco_numero = banco.numero;

select agencia.numero, agencia.nome, banco.numero, banco.nome
from agencia
right join banco on banco_numero = agencia.banco_numero;

select banco.numero, banco.nome, agencia.numero, agencia.nome
from banco
full join agencia on agencia.banco_numero = banco.numero;

select banco.nome, 
	   agencia.nome,
       conta_corrente.numero,
       conta_corrente.digito,
       cliente.nome
from banco
join agencia on agencia.banco_numero = banco.numero
join conta_corrente on conta_corrente.banco_numero = agencia.banco_numero
and conta_corrente.agencia_numero = agencia.numero
join cliente on cliente.numero = conta_corrente.cliente_numero;


