UPDATE cliente
SET telefone = '45848454'
WHERE nome = 'David' and cpf = '48961067095' ;

UPDATE cartao
SET nome_impresso = 'Thiago'
WHERE fk_cliente_id = 8 ;

UPDATE veiculo
SET placa = 'AVC-2134', fk_categoria_veiculo_id = 4
WHERE placa = 'LAQ1099';

UPDATE reserva
SET hora_entrada = '15:00:00', hora_saida = '17:30:00'
WHERE fk_cliente_id = '6' and data = '2017-09-05';

UPDATE reserva
SET hora_entrada = '11:00:00', hora_saida = '17:30:00', data = '2017-09-06'
WHERE fk_cliente_id = '6' and data = '2017-09-05';

UPDATE cliente
SET telefone = '11126574855', email = 'tad_sfg@gmail.com', saldo = 50.00, nome = 'Thiago Alves'
WHERE nome = 'Thiago' and cpf = '73948820040' ;