/* DELETANDO BANCO, CASO EXISTA */

DROP TABLE IF EXISTS cartao CASCADE;
DROP TABLE IF EXISTS pagamento CASCADE;
DROP TABLE IF EXISTS reserva CASCADE;
DROP TABLE IF EXISTS sensor CASCADE;
DROP TABLE IF EXISTS status_reserva CASCADE;
DROP TABLE IF EXISTS tipo_sensor CASCADE;
DROP TABLE IF EXISTS vaga CASCADE;
DROP TABLE IF EXISTS veiculo CASCADE;
DROP TABLE IF EXISTS categoria_veiculo CASCADE;
DROP TABLE IF EXISTS cliente CASCADE;
DROP TABLE IF EXISTS estacionamento CASCADE;
DROP TABLE IF EXISTS metodo_pagamento CASCADE;
DROP TABLE IF EXISTS endereco CASCADE;

/* CRIANDO NOVO BANCO VAZIO*/

CREATE TABLE ESTACIONAMENTO (
    id SERIAL PRIMARY KEY,
    FK_ENDERECO_id SERIAL,
    nome VARCHAR,
    primira_hora MONEY,
    val_hora MONEY
);

CREATE TABLE VAGA (
    id SERIAL PRIMARY KEY,
    FK_ESTACIONAMENTO_id SERIAL,
    sessao VARCHAR,
    numero INTEGER,
    andar INTEGER
);

CREATE TABLE CLIENTE (
    id SERIAL PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR,
    cpf VARCHAR,
    cnh VARCHAR,
    telefone VARCHAR,
    saldo MONEY,
    UNIQUE (email, cpf, cnh, telefone)
);

CREATE TABLE SENSOR (
    id SERIAL PRIMARY KEY,
    FK_VAGAS_id SERIAL,
    FK_TIPO_SENSOR_id SERIAL,
    nome VARCHAR,
    descricao TEXT
);

CREATE TABLE TIPO_SENSOR (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR UNIQUE
);

CREATE TABLE STATUS_RESERVA (
    id SERIAL PRIMARY KEY,
    status VARCHAR UNIQUE
);

CREATE TABLE CARTAO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    numero VARCHAR,
    validade DATE,
    nome_impresso VARCHAR
);

CREATE TABLE VEICULO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_CATEGORIA_VEICULO_id SERIAL,
    placa VARCHAR
);

CREATE TABLE CATEGORIA_VEICULO (
    id SERIAL PRIMARY KEY,
    categoria VARCHAR UNIQUE,
    descricao TEXT
);

CREATE TABLE METODO_PAGAMENTO (
    id SERIAL PRIMARY KEY,
    metodo VARCHAR UNIQUE
);

CREATE TABLE RESERVA (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_VAGAS_id SERIAL,
    FK_STATUS_RESERVA_id SERIAL,
    data DATE,
    hora_entrada TIME,
    hora_saida TIME
);

CREATE TABLE PAGAMENTO (
    id SERIAL PRIMARY KEY,
    FK_CLIENTE_id SERIAL,
    FK_ESTACIONAMENTO_id SERIAL,
    FK_METODO_PAGAMENTO_id SERIAL,
    valor MONEY,
    data DATE,
    hora TIME
);

CREATE TABLE ENDERECO (
    id SERIAL PRIMARY KEY,
    pais VARCHAR,
    estado VARCHAR,
    cidade VARCHAR,
    bairro VARCHAR,
    rua varchar,
    numero INTEGER,
    cep VARCHAR
);
 
ALTER TABLE ESTACIONAMENTO ADD CONSTRAINT FK_ESTACIONAMENTO_1
    FOREIGN KEY (FK_ENDERECO_id)
    REFERENCES ENDERECO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_1
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_1
    FOREIGN KEY (FK_VAGAS_id)
    REFERENCES VAGA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_2
    FOREIGN KEY (FK_TIPO_SENSOR_id)
    REFERENCES TIPO_SENSOR (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_CATEGORIA_VEICULO_id)
    REFERENCES CATEGORIA_VEICULO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_2
    FOREIGN KEY (FK_VAGAS_id)
    REFERENCES VAGA (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE RESERVA ADD CONSTRAINT FK_RESERVA_3
    FOREIGN KEY (FK_STATUS_RESERVA_id)
    REFERENCES STATUS_RESERVA (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_2
    FOREIGN KEY (FK_ESTACIONAMENTO_id)
    REFERENCES ESTACIONAMENTO (id)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE PAGAMENTO ADD CONSTRAINT FK_PAGAMENTO_3
    FOREIGN KEY (FK_METODO_PAGAMENTO_id)
    REFERENCES METODO_PAGAMENTO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

/*POPULANDO BANCO*/

/* CLIENTE */
INSERT INTO public.cliente
            (nome, email, saldo, cpf, cnh, telefone)
    VALUES  ('David', 'mouradavid8@gmail.com', 100, '48961067095','29429832772', '71995163348'),
            ('Thiago', 'thiago8@gmail.com', 100, '73948820040','22236022400', '47998888923'),
            ('Ananias', 'ananias@gmail.com', 100, '10809190079','31912698277', '27996307860'),
            ('Luciano', 'lucianoananias@gmail.com', 420, '32599404053','33449163551', '27951489641'),
            ('Jao Oliveira', 'jao@gmail.com',100,'90542666006','31109493815', '27955647125'),
            ('João Silva', 'js@gmail.com', 500.00, '08934217007','20014364166', '11999999999'),
            ('Enzo Duo Bot', 'enzinho_dulol@gmail.com', 2000.00, '15929767190','68388909834', '15988569843'),
            ('Ricardo Marks', 'ric_marks@gmail.com',1000.00, '81678355020','65051780506', '11949228855');

/* CARTÃO */
INSERT INTO public.cartao
            (nome_impresso, validade, numero, fk_cliente_id)
    VALUES  ('João Silva', '2022-10-01', '5471259221787113', 6),
            ('João Silva', '2025-05-01', '5315570888993616', 6),
            ('Ricardo Marks', '2019-02-09', '5144371014887054', 8),
            ('Ricardo Marks', '2023-11-01', '4024007162979677', 8),
            ('Enzo Duo Bot', '2020-09-01', '4556131076816852', 7),
            ('Carlos D Andrade', '2015-09-01', '1234567891234567', 1),
            ('Geremias Filho', '2022-04-01', '1111222233334444', 2),
            ('Marcelo Sobrinho', '2028-05-01', '4444555566667777', 3),
            ('Cabral C Silva', '2026-03-01', '8888999911112222', 4),
            ('Felicia', '2020-12-01', '3333444455556666', 5);

/* TIPO_SENSOR */
INSERT INTO tipo_sensor
            (tipo)
    VALUES  ('presença'),
            ('camera');
		
/* CATEGORIA_ VEICULO */
INSERT INTO categoria_veiculo
            (categoria, descricao)
    VALUES  ('A', 'Veículo motorizado de duas ou três rodas, com ou sem carro lateral.'),
            ('B', 'Veículos, cujo peso bruto total não exceda a três mil e quinhentos quilogramas ou cuja lotação não exceda a 08 (oito) lugares, excluído o do motorista; contemplando a combinação de unidade acoplada reboque, desde que a soma dos dois não ultrapasse 3500 KG.'),
            ('C', 'Veículos, utilizados em transporte de carga, cujo peso bruto total exceda a três mil e quinhentos quilogramas.'),
            ('D', 'Veículos, utilizados no transporte de passageiros, cuja lotação exceda a 08 passageiros, excluindo o motorista.'),
            ('E', 'combinação de veículos em que a unidade tratora se enquadre nas categorias B, C ou D e cuja unidade acoplada, reboque, semi reboque, trailer ou articulada tenha 6.000 kg (seis mil quilogramas) ou mais de peso bruto total, ou cuja lotação exceda a 8 (oito) lugares');
	
/* ENDEREÇO */
INSERT INTO endereco
            (rua, estado, cidade, bairro, cep, numero, pais)
    VALUES  ('Antônio Gil Veloso 1826','ES','Vila Velha','Praia da Costa',29101913,3,'Brasil'),
            ('Jaime Manhani','SP','Santos','São Jorge',11085640,15,'Brasil'),
            ('Salvador','SP','São Vicente','Vila Nossa Senhora de Fátima',11355450,9,'Brasil'),
            ('Nascimento','MG','Belo Horizonte','Araguaia',30620390,4,'Brasil'),
            ('Maria Vidigal Moreira','MG','Betim','Jardim da Cidade',32604250,6,'Brasil');

/* ESTACIONAMENTO */		
INSERT INTO public.estacionamento
            (fk_endereco_id, nome, primira_hora, val_hora)
    VALUES  (2,'Mc Donalds',2,2),
            (1,'Rock Burguer',5,3),
            (5,'AC Contabilidade',14,4),
            (3,'Shopping Eldorado',3,2),
            (4,'SBT',6,6);
	
/* MÉTODO_PAGAMENTO */
INSERT INTO public.metodo_pagamento
            (metodo)
    VALUES  ('CARTÃO'),
            ('PAYPAL'),
            ('CRÉDITO');

/* VAGA */
INSERT INTO public.vaga
            (fk_estacionamento_id, sessao, numero, andar)
    VALUES  (1, 'A', 3, 1),
            (2, 'D', 15, 5),
            (3, 'B', 9, 3),
            (4, 'A', 4, 2),
            (5, 'E', 6, 4);	
	
/* STATUS_RESERVA */
INSERT INTO public.status_reserva
            (status)
    VALUES  ('RESERVADO'),
            ('CANCELADO'),
            ('FINALIZADO'),
            ('ANDAMENTO');

/* PAGAMENTO */
INSERT INTO pagamento
            (fk_cliente_id, fk_estacionamento_id, valor, fk_metodo_pagamento_id, data, hora)
    VALUES  (7, 1, 16, 2,'2018-03-09', '17:30:00'),
            (4, 2, 8, 2,'2018-03-09', '08:0:00'),
            (8, 3, 26, 1,'2018-04-25', '13:00:00'),
            (6, 3, 14, 1,'2017-09-05', '10:00:00'),
            (6, 2, 5, 2,'2017-08-20', '06:00:00'),
            (4, 4, 15, 3,'2018-01-24', '12:00:00'),
            (8, 5, 48, 2,'2018-02-10', '09:40:00'),
            (7, 1, 2, 1,'2017-12-11', '18:30:00'),
            (7,5, 12, 3,'2017-07-22', '18:00:00'),
            (4, 4, 20, 3,'2018-03-13', '22:30:00');	
	
/* RESERVA */
INSERT INTO public.reserva
            (fk_cliente_id, fk_vagas_id, fk_status_reserva_id, data, hora_entrada, hora_saida)
    VALUES  (7, 1, 1, '2018-03-09', '17:30:00', '19:30:00'),
            (4, 2, 2, '2018-03-09', '17:30:00', '19:30:00'),
            (8, 3, 3, '2018-04-25', '08:0:00', '13:00:00'),
            (6, 3, 4, '2017-09-05', '10:00:00', '17:30:00'),
            (6, 2, 4, '2017-08-20', '06:00:00', '19:50:00'),
            (4, 4, 1, '2018-01-24', '12:00:00', '14:30:00'),
            (8, 5, 2, '2018-02-10', '09:40:00', '11:30:00'),
            (7, 1, 3,'2018-02-17' ,'18:30:00', '20:30:00'),
            (7, 5, 3, '2018-05-11','18:00:00', '18:15:00'),
            (4, 4, 3, '2017-08-13','19:30:00', '22:30:00');	
	
/* SENSOR */						
INSERT INTO public.sensor
            (fk_vagas_id, fk_tipo_sensor_id, nome, descricao)
    VALUES  (1, 1, 'MarGirius', 'MPX-40F'),
            (1, 2, 'VGA', 'OV7670'),
            (2, 1, 'MarGirius', 'MPX-40F'),
            (2, 2,'VGA', 'OV7670'),
            (3, 1, 'MarGirius', 'MPX-40F'),
            (3, 2, 'VGA', 'OV7670'),
            (4, 1, 'MarGirius', 'MPX-40F'),
            (4, 2, 'VGA', 'OV7670'),
            (5, 1, 'MarGirius', 'MPX-40F'),
            (5, 2, 'VGA', 'OV7670');

/* VEÍCULO */
INSERT INTO veiculo
            (placa, fk_categoria_veiculo_id, fk_cliente_id)
    VALUES  ('LAQ1099', 1, 4),
            ('MGW3864', 3, 6),
            ('IAB3908', 3, 7),
            ('JQT9494', 4, 8),
            ('NES7296', 1, 8),
            ('KBA1867', 5, 1),
            ('MZJ9113', 5, 2),
            ('NEL5608', 4, 3),
            ('MMW6101', 2, 5);
