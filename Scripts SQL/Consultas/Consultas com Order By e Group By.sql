select * from cliente order by nome ASC ;

select * from endereco order by cep DESC ;

select sessao,count(sessao) from vaga group by sessao order by  sessao asc;

select nome_impresso,count(nome_impresso) from cartao group by nome_impresso order by  nome_impresso desc;

select cep,rua,cidade,endereco.id,nome from endereco,estacionamento where estacionamento.fk_endereco_id = endereco.id group by endereco.id,nome ;

select cliente.nome,fk_VAGAS_id,data,estacionamento.nome,hora_entrada,hora_saida from cliente,reserva,vaga,estacionamento where cliente.id = reserva.fk_cliente_id and reserva.fk_vagas_id = vaga.id 
group by cliente.nome,estacionamento.nome,fk_VAGAS_id,data,hora_entrada,hora_saida  ;