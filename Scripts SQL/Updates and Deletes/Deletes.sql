DELETE FROM sensor
WHERE id = 4;

DELETE FROM veiculo
WHERE placa = 'LAQ1099';

DELETE FROM veiculo
where fk_cliente_id = 8

DELETE FROM reserva
WHERE fk_cliente_id = 7 and fk_vagas_id = 1 and hora_entrada = '18:30:00';

DELETE FROM cartao
WHERE nome_impresso = 'João Silva' and numero = '5471259221787113';

DELETE FROM cartao
WHERE fk_cliente_id = 8 and nome_impresso = 'Ricardo Marks' and numero = '5144371014887054'