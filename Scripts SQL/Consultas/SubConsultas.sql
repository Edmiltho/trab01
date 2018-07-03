
select * from estacionamento where fk_endereco_id = (select id from endereco where cep = '29101913');

select * from vaga where fk_estacionamento_id = (select id from endereco where cep = '29101913');

select * from endereco where cep = (select cep from endereco where cep = '29101913');
