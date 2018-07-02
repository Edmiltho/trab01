SELECT nome,email,id_pessoa FROM PESSOA ORDER BY nome;
SELECT data,hora_entrada,hora_saida FROM Reserva_vaga ORDER BY data;
SELECT preco_vaga,Estado_vaga,Andar_vaga FROM VAGA ORDER BY preco_vaga;
SELECT placa_veiculo,id_veiculo,FK_PESSOA_id_pessoa FROM VEICULO ORDER BY FK_PESSOA_id_pessoa;
SELECT cpf,nome,email FROM PESSOA ORDER BY PESSOA;
SELECT id_sensor,FK_VAGA_id_Vaga,FK_TIPO_SENSOR_id_tipo FROM SENSOR ORDER BY id_sensor;