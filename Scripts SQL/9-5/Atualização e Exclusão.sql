DELETE FROM paga
WHERE valor = 50;

DELETE FROM veiculo
WHERE placa_veiculo = 'AVC-2134';

DELETE FROM paga
WHERE valor = 126;

DELETE FROM sensor
WHERE id_sensor = 4;

DELETE FROM cartao
WHERE nome_impresso = 'João Silva';

DELETE FROM cartao
WHERE nome_impresso = 'Felicia';

UPDATE reserva_vaga
SET hora_entrada = '19:20:00'
WHERE hora_entrada = '17:30:00';

UPDATE veiculo
SET fk_categoria_veiculo_categoria_veiculo_pk = 'B'
WHERE placa_veiculo = 'LAQ1099';

UPDATE veiculo
SET placa_veiculo = 'AVC-2134'
WHERE placa_veiculo = 'LAQ1099';

UPDATE PESSOA
SET telefone = '27998988565'
WHERE nome = 'Thiago';

UPDATE cartao
SET nome_impresso = 'Thiago MUdado'
WHERE nome_impresso = 'Carlos D Andrade';

UPDATE PESSOA
SET telefone = '45848454'
WHERE nome = 'David';
