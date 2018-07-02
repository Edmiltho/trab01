/*INSERT*/


INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('David', 'mouradavid8@gmail.com', 100, '48961067095','29429832772', '71995163348');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Thiago', 'thiago8@gmail.com', 100, '73948820040','22236022400', '47998888923');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Ananias', 'ananias@gmail.com', 100, '10809190079','31912698277', '27996307860');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Luciano', 'lucianoananias@gmail.com', 420, '32599404053','33449163551', '27951489641');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Jao Oliveira', 'jao@gmail.com',100,'90542666006','31109493815', '27955647125');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('João Silva', 'js@gmail.com', 500.00, '08934217007','20014364166', '11999999999');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Enzo Duo Bot', 'enzinho_dulol@gmail.com', 2000.00, '15929767190','68388909834', '15988569843');

INSERT INTO public.cliente
(nome, email, saldo, cpf, cnh, telefone)
VALUES('Ricardo Marks', 'ric_marks@gmail.com',1000.00, '81678355020','65051780506', '11949228855');




INSERT INTO public.cartao(
            nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('João Silva', '2022-10-01', '5471259221787113', 6);
INSERT INTO public.cartao(
           nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('João Silva', '2025-05-01', '5315570888993616', 6);
INSERT INTO public.cartao(
            nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('Ricardo Marks', '2019-02-09', '5144371014887054', 8);
INSERT INTO public.cartao(
            nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('Ricardo Marks', '2023-11-01', '4024007162979677', 8);
INSERT INTO public.cartao(
            nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('Enzo Duo Bot', '2020-09-01', '4556131076816852', 7);
INSERT INTO public.cartao(
            nome_impresso, validade, numero, fk_cliente_id)
    VALUES ('Carlos D Andrade', '2015-09-01', '1234567891234567', 1),
    ('Geremias Filho', '2022-04-01', '1111222233334444', 2),
    ('Marcelo Sobrinho', '2028-05-01', '4444555566667777', 3),
    ('Cabral C Silva', '2026-03-01', '8888999911112222', 4),
('Felicia', '2020-12-01', '3333444455556666', 5);




INSERT INTO tipo_sensor(
            tipo)
    VALUES ('presença');
INSERT INTO tipo_sensor(
            tipo)
    VALUES ('camera');	
	
	
	
	
INSERT INTO categoria_veiculo(
            categoria, descricao)
    VALUES ('A', 'Motocicleta');
INSERT INTO categoria_veiculo(
            categoria, descricao)
    VALUES ('B', 'Sedan');
INSERT INTO categoria_veiculo(
            categoria, descricao)
    VALUES ('C', 'Hatch');
INSERT INTO categoria_veiculo(
            categoria, descricao)
    VALUES ('D', 'Caminhonete');
INSERT INTO categoria_veiculo(
            categoria, descricao)
    VALUES ('E', 'Utilitário');
	
	
	
	
	
INSERT INTO endereco(
            rua, estado, cidade, bairro, cep, numero, pais)
    VALUES ('Antônio Gil Veloso 1826','ES','Vila Velha','Praia da Costa',29101913,3,'Brasil');
INSERT INTO endereco(
            rua, estado, cidade, bairro, cep, numero, pais)
    VALUES ('Jaime Manhani','SP','Santos','São Jorge',11085640,15,'Brasil');
INSERT INTO endereco(
            rua, estado, cidade, bairro, cep, numero, pais)
    VALUES ('Salvador','SP','São Vicente','Vila Nossa Senhora de Fátima',11355450,9,'Brasil');
INSERT INTO endereco(
            rua, estado, cidade, bairro, cep, numero, pais)
    VALUES ('Nascimento','MG','Belo Horizonte','Araguaia',30620390,4,'Brasil');
INSERT INTO endereco(
			rua, estado, cidade, bairro, cep, numero, pais)
    VALUES ('Maria Vidigal Moreira','MG','Betim','Jardim da Cidade',32604250,6,'Brasil');


	
	
INSERT INTO public.estacionamento(
            fk_endereco_id, nome, primira_hora, val_hora)
    VALUES (2,'Mc Donalds',2,2);
INSERT INTO public.estacionamento(
            fk_endereco_id, nome, primira_hora, val_hora)
    VALUES (1,'Rock Burguer',5,3);
INSERT INTO public.estacionamento(
            fk_endereco_id, nome, primira_hora, val_hora)
    VALUES (5,'AC Contabilidade',14,4);
INSERT INTO public.estacionamento(
            fk_endereco_id, nome, primira_hora, val_hora)
    VALUES (3,'Shopping Eldorado',3,2);
INSERT INTO public.estacionamento(
            fk_endereco_id, nome, primira_hora, val_hora)
    VALUES (4,'SBT',6,6);
	
	
	
	
INSERT INTO public.metodo_pagamento(
            metodo)
    VALUES ('CARTÃO');
INSERT INTO public.metodo_pagamento(
            metodo)
    VALUES ('PAYPAL');
INSERT INTO public.metodo_pagamento(
            metodo)
    VALUES ('CRÉDITO');

	

	
INSERT INTO public.vaga(
            fk_estacionamento_id, sessao, numero, andar)
    VALUES (1, 'A', 3, 1);
INSERT INTO public.vaga(
            fk_estacionamento_id, sessao, numero, andar)
    VALUES (2, 'D', 15, 5);
INSERT INTO public.vaga(
            fk_estacionamento_id, sessao, numero, andar)
    VALUES (3, 'B', 9, 3);
INSERT INTO public.vaga(
            fk_estacionamento_id, sessao, numero, andar)
    VALUES (4, 'A', 4, 2);
INSERT INTO public.vaga(
            fk_estacionamento_id, sessao, numero, andar)
    VALUES (5, 'E', 6, 4);	
	
	
	

INSERT INTO public.status_reserva(
            status)
    VALUES ('RESERVADO');
INSERT INTO public.status_reserva(
            status)
    VALUES ('CANCELADO');
INSERT INTO public.status_reserva(
            status)
    VALUES ('FINALIZADO');
INSERT INTO public.status_reserva(
            status)
    VALUES ('ANDAMENTO');



	

	
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (7, 1, 16, 2,'2018-03-09', '17:30:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (4, 2, 8, 2,'2018-03-09', '08:0:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (8, 3, 26, 1,'2018-04-25', '13:00:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (6, 3, 14, 1,'2017-09-05', '10:00:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (6, 2, 5, 2,'2017-08-20', '06:00:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (4, 4, 15, 3,'2018-01-24', '12:00:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor,fk_metodo_pagamento_id, data, hora)
    VALUES (8, 5, 48, 2,'2018-02-10', '09:40:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (7, 1, 2, 1,'2017-12-11', '18:30:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (7,5, 12, 3,'2017-07-22', '18:00:00');
INSERT INTO pagamento(
            fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES (4, 4, 20, 3,'2018-03-13', '22:30:00');	
	
	
	
	
	
	
	
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (7, 1, 1, '2018-03-09', '17:30:00', '19:30:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (4, 2, 2, '2018-03-09', '17:30:00', '19:30:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (8, 3, 3, '2018-04-25', '08:0:00', '13:00:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (6, 3, 4, '2017-09-05', '10:00:00', '17:30:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (6, 2, 4, '2017-08-20', '06:00:00', '19:50:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (4, 4, 1, '2018-01-24', '12:00:00', '14:30:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (8, 5, 2, '2018-02-10', '09:40:00', '11:30:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (7, 1, 3,'17/02/2018' ,'18:30:00', '20:30:00');	
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (7, 5, 3, '11/05/2018','18:00:00', '18:15:00');
INSERT INTO public.reserva(
            fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, 
            hora_saida)
    VALUES (4, 4, 3, '13/08/2017','19:30:00', '22:30:00');	
	
			
			
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (1, 1, 'MarGirius', 'MPX-40F');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (1, 2, 'VGA', 'OV7670');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (2, 1, 'MarGirius', 'MPX-40F');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (2, 2,'VGA', 'OV7670');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (3, 1, 'MarGirius', 'MPX-40F');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (3, 2, 'VGA', 'OV7670');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (4, 1, 'MarGirius', 'MPX-40F');	
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (4, 2, 'VGA', 'OV7670');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (5, 1, 'MarGirius', 'MPX-40F');
INSERT INTO public.sensor(
            fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES (5, 2, 'VGA', 'OV7670');


	
	
	
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('LAQ1099', 1, 4);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
	VALUES ('MGW3864', 3, 6);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('IAB3908', 3, 7);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('JQT9494', 4, 8);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('NES7296', 1, 8);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('KBA1867', 5, 1);
INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('MZJ9113', 5, 2);
	INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('NEL5608', 4, 3);
	INSERT INTO veiculo(
            placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES ('MMW6101', 2, 5);