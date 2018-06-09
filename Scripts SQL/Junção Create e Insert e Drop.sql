/* Lógico: */

CREATE TABLE VAGA (
    Seção_Vaga varchar(45),
    Andar_Vaga integer,
    Estado_Vaga varchar(45),
    Cidade_Vaga varchar(45),
    CEP_Vaga integer,
    preco_vaga money,
    Horario_vaga time,
    id_Vaga serial PRIMARY KEY
);

CREATE TABLE VEICULO (
    placa_veiculo varchar(10),
    FK_categoria_Veiculo_categoria_Veiculo_PK varchar(45),
    id_veiculo serial PRIMARY KEY,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE SENSOR (
    situacao boolean,
    id_sensor serial PRIMARY KEY,
    FK_VAGA_id_Vaga serial,
    FK_TIPO_SENSOR_id_tipo serial
);

CREATE TABLE PESSOA (
    nome varchar(45),
    email varchar(45),
    perfil boolean,
    id_pessoa serial PRIMARY KEY,
    Credito money,
    Cpf varchar(14),
    Cnpj varchar(18),
    PESSOA_TIPO INT,
    Cnh varchar(11),
    Telefone varchar(10),
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE TIPO_SENSOR (
    id_tipo serial PRIMARY KEY,
    descricao varchar(45)
);

CREATE TABLE CARTAO (
    Nome_Impresso varchar(10),
    Data_Validade date,
    Numero varchar(20),
    id_cartao serial PRIMARY KEY,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE categoria_Veiculo (
    categoria_Veiculo_PK varchar(45) NOT NULL PRIMARY KEY,
    categoria_Veiculo varchar(45)
);

CREATE TABLE Reserva_vaga (
    FK_VAGA_id_Vaga serial,
    FK_PESSOA_id_pessoa serial,
    data date,
    hora_entrada time,
    hora_saida time
);

CREATE TABLE Gerencia (
    FK_VAGA_id_Vaga serial,
    FK_PESSOA_id_pessoa serial
);

CREATE TABLE Paga (
    FK_PESSOA_id_pessoa serial,
    FK_PESSOA_id_pessoa_ serial,
    Valor money,
    Metodo varchar(150)
);
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_1
    FOREIGN KEY (FK_categoria_Veiculo_categoria_Veiculo_PK)
    REFERENCES categoria_Veiculo (categoria_Veiculo_PK)
    ON DELETE NO ACTION ON UPDATE NO ACTION;
 
ALTER TABLE VEICULO ADD CONSTRAINT FK_VEICULO_2
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_1
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE SENSOR ADD CONSTRAINT FK_SENSOR_2
    FOREIGN KEY (FK_TIPO_SENSOR_id_tipo)
    REFERENCES TIPO_SENSOR (id_tipo)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE PESSOA ADD CONSTRAINT FK_PESSOA_0
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa);
 
ALTER TABLE CARTAO ADD CONSTRAINT FK_CARTAO_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Reserva_vaga ADD CONSTRAINT FK_Reserva_vaga_0
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Reserva_vaga ADD CONSTRAINT FK_Reserva_vaga_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_0
    FOREIGN KEY (FK_VAGA_id_Vaga)
    REFERENCES VAGA (id_Vaga)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Gerencia ADD CONSTRAINT FK_Gerencia_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Paga ADD CONSTRAINT FK_Paga_0
    FOREIGN KEY (FK_PESSOA_id_pessoa_)
    REFERENCES PESSOA (id_pessoa)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Paga ADD CONSTRAINT FK_Paga_1
    FOREIGN KEY (FK_PESSOA_id_pessoa)
    REFERENCES PESSOA (id_pessoa)
ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE public.cartao ALTER COLUMN Nome_Impresso TYPE varchar(45) USING Nome_Impresso::varchar;

ALTER TABLE public.pessoa ALTER COLUMN telefone TYPE varchar(11) USING telefone::varchar;

/*INSERT: */

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('David', 'mouradavid8@gmail.com', true, 100, '13596133742', '', 0, '123456789', '27996307860');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Thiago', 'thiago8@gmail.com', true, 100, '12596133742', '', 0, '123456789', '27996527860');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Ananias', 'ananias@gmail.com', true, 100, '13596133742', '', 0, '123456789', '27996307860');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Luciano', 'lucianoananias@gmail.com', false, 0, '13596133742', '', 0, '123456789', '27996307860');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Jao', 'jao@gmail.com', true, 100, '', '123456789123000112', 0, '123456789', '27996307860');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('João Silva', 'js@gmail.com', false, 500.00, '08934217007', '', 0, '20014364166', '11999999999');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Enzo Duo Bot', 'enzinho_dulol@gmail.com', false, 0.00, '15929767190', '', 0, '68388909834', '15988569843');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Ricardo Marks', 'ric_marks@gmail.com', false, 1000.00, '81678355020', '', 0, '65051780506', '11949228855');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Mc Donalds', 'support@mc.com', true, 0, '', '69228663000164', 1, '', '29275819409');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Rock Burguer', 'sac@rockb.com', true, 0, '', '40488891000191', 1, '', '61269108561');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('AC Contabilidade', 'sac@acc.com', true, 0, '', '79872119000104', 1, '', '2732265987');

INSERT INTO public.pessoa
(nome, email, perfil, credito, cpf, cnpj, pessoa_tipo, cnh, telefone)
VALUES('Shopping Eldorado', 'atendimento@shopeldorado.com', true, 0, '', '20416589000110', 1, '', '35975865231');



INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('João Silva', '2022-10-01', '5471259221787113', 6);
INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('João Silva', '2025-05-01', '5315570888993616', 6);
INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('Ricardo Marks', '2019-02-09', '5144371014887054', 8);
INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('Ricardo Marks', '2023-11-01', '4024007162979677', 8);
INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('Enzo Duo Bot', '2020-09-01', '4556131076816852', 7);
INSERT INTO public.cartao(
            nome_impresso, data_validade, numero, fk_pessoa_id_pessoa)
    VALUES ('Carlos D Andrade', '2015-09-01', '1234567891234567', 1),
    ('Geremias Filho', '2022-04-01', '1111222233334444', 2),
    ('Marcelo Sobrinho', '2028-05-01', '4444555566667777', 3),
    ('Cabral C Silva', '2026-03-01', '8888999911112222', 4),
('Felicia', '2020-12-01', '3333444455556666', 5);


INSERT INTO tipo_sensor(
            descricao)
    VALUES ('presença');
INSERT INTO tipo_sensor(
            descricao)
    VALUES ('camera');



INSERT INTO vaga(
            "seção_vaga", andar_vaga, estado_vaga, cidade_vaga, cep_vaga, 
            preco_vaga, horario_vaga)
    VALUES ('A',1,'ES','Vila Velha','29320123',3,'09:20:00');
INSERT INTO vaga(
            "seção_vaga", andar_vaga, estado_vaga, cidade_vaga, cep_vaga, 
            preco_vaga, horario_vaga)
    VALUES ('D',5,'SP','Santos','12456090',15,'10:30:00');
INSERT INTO vaga(
            "seção_vaga", andar_vaga, estado_vaga, cidade_vaga, cep_vaga, 
            preco_vaga, horario_vaga)
    VALUES ('B',3,'SP','São Vicente','01505010',9,'18:55:00');
INSERT INTO vaga(
            "seção_vaga", andar_vaga, estado_vaga, cidade_vaga, cep_vaga, 
            preco_vaga, horario_vaga)
    VALUES ('A',2,'MG','Belo Horizonte','29678000',4,'17:30:00');
INSERT INTO vaga(
            "seção_vaga", andar_vaga, estado_vaga, cidade_vaga, cep_vaga, 
            preco_vaga, horario_vaga)
    VALUES ('E',4,'MG','Belo Horizonte','30110009',6,'07:10:00');
			
			

INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,1,1);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,1,2);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,2,1);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,2,2);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (false,3,1);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (false,3,2);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (false,4,1);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (false,4,2);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,5,1);
INSERT INTO sensor(
            situacao, fk_vaga_id_vaga, fk_tipo_sensor_id_tipo)
    VALUES (true,5,2);
	
	

INSERT INTO categoria_veiculo(
            categoria_veiculo_pk, categoria_veiculo)
    VALUES ('A', 'Motocicleta');
INSERT INTO categoria_veiculo(
            categoria_veiculo_pk, categoria_veiculo)
    VALUES ('B', 'Sedan');
INSERT INTO categoria_veiculo(
            categoria_veiculo_pk, categoria_veiculo)
    VALUES ('C', 'Hatch');
INSERT INTO categoria_veiculo(
            categoria_veiculo_pk, categoria_veiculo)
    VALUES ('D', 'Caminhonete');
INSERT INTO categoria_veiculo(
            categoria_veiculo_pk, categoria_veiculo)
    VALUES ('E', 'Utilitário');
	
	
	
INSERT INTO veiculo(
            placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk, 
            fk_pessoa_id_pessoa)
    VALUES ('LAQ1099', 'A', 4);
INSERT INTO veiculo(
            placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk, 
            fk_pessoa_id_pessoa)
	VALUES ('MGW3864', 'C', 6);
INSERT INTO veiculo(
            placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk, 
            fk_pessoa_id_pessoa)
    VALUES ('IAB3908', 'C', 7);
INSERT INTO veiculo(
            placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk, 
            fk_pessoa_id_pessoa)
    VALUES ('JQT9494', 'D', 8);
INSERT INTO veiculo(
            placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk, 
            fk_pessoa_id_pessoa)
    VALUES ('NES7296', 'A', 8);

	
	
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (1, 7, '2017-09-09', '17:30:00', '19:30:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (1, 4, '2018-03-09', '08:0:00', '14:15:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (1, 8, '2018-04-25', '12:30:00', '13:00:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (5, 6, '2017-09-05', '10:00:00', '17:30:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (3, 6, '2017-08-20', '06:00:00', '19:50:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (3, 4, '2018-01-24', '12:00:00', '14:30:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (2, 8, '2018-02-10', '09:40:00', '11:30:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (2, 7, '2017-12-11', '18:30:00', '20:30:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (4, 7, '2017-07-22', '18:00:00', '18:15:00');
INSERT INTO reserva_vaga(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa, data, hora_entrada, hora_saida)
    VALUES (5, 4, '2018-03-13', '19:30:00', '22:30:00');
	
	
	
INSERT INTO gerencia(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa)
    VALUES (1, 1);
INSERT INTO gerencia(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa)
    VALUES (2, 2);
INSERT INTO gerencia(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa)
    VALUES (3, 3);
INSERT INTO gerencia(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa)
    VALUES (4, 5);
INSERT INTO gerencia(
            fk_vaga_id_vaga, fk_pessoa_id_pessoa)
    VALUES (5, 5);
	
	
	
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (7, 9, 6, 2);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (4, 9, 21, 2);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (8, 9, 3, 1);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (6, 12, 48, 1);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (6, 11, 126, 2);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (4, 11, 27, 2);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (8, 10, 30, 2);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (7, 10, 30, 1);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (7, 11, 4, 1);
INSERT INTO paga(
            fk_pessoa_id_pessoa, fk_pessoa_id_pessoa_, valor, metodo)
    VALUES (4, 12, 18, 1);

DROP TABLE paga;
DROP TABLE GERENCIA;