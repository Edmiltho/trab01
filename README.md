# TRABALHO 01:  estacIonA.
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>

David Moura: mouradavid8@gmail.com<br>
Leonardo Arpini: leonardoarpini@gmail.com<br>
Luciano Ananias: luciano.ananias.42@gmail.com <br>
Thiago Alves: thiagofelicio@hotmail.com<br>
<br>
<b>Grupo de Análise</b><br>
Integrantes: Andreângelo, Anne, Caicke e Emanuel<br>
Foi feito um clone desse projeto pois os dois grupos estão desenvolvendo o mesmo projeto, que pode ser acessado no link
[Casa Inteligente](https://github.com/CasaInteligenteBD1/trab01gv).<br>


### 2.INTRODUÇÃO E MOTIVAÇAO<br>

> A empresa "OriginsIA Soluções Tecnologicas" visa colaborar com desenvolvimento de projetos para uma sociedade melhor. Sabendo-se dos desafios para se encontrar vagas em em grandes cidades e grandes centros, ficamos motivados com o desenvolvimento deste sistema "estacIonA". O Sistema "estacIonA" tem como objetivo trazer facilidade e agilizade daqueles que precisam estacionar seus carros em locais cuja as vagas são escassas. Para realizar suas operações adequadamente e empresa necessita que sistema que armazene informações relativas aos estacionamentos, além de também armazenar dados sobre as vagas e as informações dos usuarios. 
> O sistema irá utilizar sensores de presença para saber onde uma vaga está disponível e com a ajuda de câmeras verificará se o carro na vaga é a da pessoa que a reservou. Todo o sistema de reserva e pagamento será feito por um aplicativo que utilizando o sensor de gps mostrará um mapa em tempo real do local onde se encontra o carro e o guiará até a vaga correta. <br>
 

### 3.MINI-MUNDO <br>

> 
##### O Sistema proposto ao usuário apresenta as seguintes informações: 
* Do cliente serão armazenados o nome, e-mail, CPF, Número da CNH, telefone, saldo no aplicativo, quais veículos possui bem como seus cartões de crédito. 
* Das formas de pagamentos teremos as seguintes opções:
  1. Cartão de crédito: onde serão armazenados numero de cartão, data de vencimento, nome impresso no cartão, 
  2. Créditos no aplicativo: neste caso um valor em reais é adicionado a conta do cliente. 
  3. Paypal: neste caso o cliente é redirecionado para um sistema externo que possui todos os dados do mesmo, não sendo necessário o armazenamento dessas informações aqui.
* Do veículo deseja-se saber a placa e sua categoria para que possamos localizar uma vaga conveniente de acordo com o porte do mesmo.
* Dos estacionamentos deseja-se saber o nome do mesmo, o valor da primeira hora e das demais horas e seu endereço além de, claro, quais vagas pertencem a ele.
* Das vagas deseja-se armazenar o número, sessão e andar da mesma para que torne fácil sua localização, além desses precisamos saber também quais sensores estão sendo utilizados em cada vaga.
* Dos sensores apenas um nome, uma breve descrição pode ser interessante e o tipo é do que precisamos saber, ex.: nome:Sensor-A1 descrição:lado-esquerdo tipo:câmera.
Do período estacionado: o sistema registrá via reserva o horario de entrada do veículo, o que será confirmado via sensores nas vagas, e detectará automaticamente a saída do mesmo, calculando automaticamente o valor a ser cobrado.
O usuário cadastrado no aplicativo pode de qualquer lugar efetuar a reserva de vaga em um estacionamento caso esta já não tenha sido reservado, escolhendo assim o método de pagamento mais apropriado, ao sair da vaga o sistema lhe permite que efetue o pagamento do valor referente ao periodo em que ficou estacionado naquele local.

<br>

[Mockup App](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20APP.pdf)  
[Mockup Web](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20WEB.pdf)  

OBS: Os mockup's podem estar desatualizados devido a mudanças que ocorreram durante o projeto após a licensa do mesmo ter expirado, e como podem ver nesta [imagem](https://github.com/GrupoDaVaga/trab01/blob/master/mockups/balsamiq.png), a licença gratuita não permite edições nos mockups após 30 dias de uso

#### 4.1 TABELA DE DADOS DO SISTEMA:
[Tabela de dados estacIonA](https://github.com/GrupoDaVaga/trab01/blob/master/Planilha/Tabela%20de%20Dados%20EstacIonAfinal.xlsx)
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
   > O sistema fornecerá relatórios sobre a vaga que foi reservada e as informações do cliente, da empresa responsável pela vaga, da reserva (preço, data) e do veículo do cliente. Os principais relatórios obtidos serão: <br><br>
   - Vagas disponíveis;<br>
   - Relatório sobre determinada vaga;<br>
   - Relatório sobre a reserva da vaga;<br>
   - Relatório sobre determinado cliente;<br>
   - Histórico de reservas de determinado cliente;<br>
   - Créditos restantes de um determinado cliente;<br>
   - Relatório da empresa responsável pela vaga;<br>
   - Relatório sobre o veículo de determinada reserva;<br>
   - Histórico de veículos estacionados em determinada vaga.
    
>## Marco de Entrega 01 em: (02/04/2018)<br>

### 5.MODELO CONCEITUAL<br>
       
![Modelo conceitual - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Imagens/Conceitual_top.png)

[Modelo Conceitual - Formato BrModelo](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Conceitual_top.brM3)    

    
#### 5.1 Validação do Modelo Conceitual
    [Grupo do Blackcard]: Matheus Pinto, Pedro Cruz, Andre Phelipe, Herbert Wander, Jack Johnson.
    [Grupo EstacIonA (Analise)]: Caicke Pinheiro, Andreangelo Patuzzo, Emanuel Gloria, Anne Caroline.

#### 5.2 DECISÕES DE PROJETO    
 * **Dos preços e taxas**: Decidimos que cada estacionamento poderá cobrar um preço diferenciado na primeira hora em relação as demais, por exemplo: primeira hora: R$7,00, demais horas: R$2,00
 * **Da autenticação e autorização**: será feita por outro sistema isolado que terá sua própria base de dados, por isso campos como "login" e "senha" não serão armazenados neste banco.
 * **Do campo varchar**: 
   1. Optamos por não utilizarmos um limitador no campo varchar (Ex: varchar(45)), tendo consciência que este limitador é uma questão de boas práticas, porém sabemos também que, como utilizaremos Postgres neste caso o banco cuida de armazenar somente os byts utilizados, sendo assim não disperdiça recursos, que para este momento seria mais interessante, visto que ainda estamos passando por fortes alterações de estrutura do banco e esta flexibilidade diminui consideravelmente o retrabalho constante. Informação encontrada em: [Postgres documentation](https://www.postgresql.org/docs/9.3/static/datatype-character.html)
   2. Campos como CPF, CNH, número do cartão e similares consideramos que o formato destes dados serão tratados no front-end, enviando para o banco o padrão correto, por isso, decidimos manter o tipo varchar para os mesmos. Descartamos as opções integer ou outro tipo numérico visto que estes dados são apenas identificadores e não quantitativos, além de serem campos muito grandes o que necessitaria de mais recurso de aramzenamento. 
    

>## Marco de Entrega 02 em: (11/05/2018)<br>
#### 5.3 DESCRIÇÃO DOS DADOS 
    vaga : Tabela que armazena informações referente as vagas.
    id_vaga: Campo que contem o ID de armazenamento da vaga.
    secao_vaga : Campo que contem codigo de seção onde a vaga está localizada.
    andar_vaga : Campo com o numero do andar referente a vaga.
    Pagamento: Tabela que armazena os dados referentes aos pagamentos.
    metodo: Campo onde armazena a forma de pagamento escolhida.
    cliente: Tabela onde armazena dados referentes ao cliente.
    nome: Campo onde está armazenado o nome referente ao cliente.
    cpf: Campo onde fica armazenado o Cadastro de Pessoa Fisica de cada cliente.
    email: Campo onde é armazenado o email de cada ccliente.
    tel: Campo onde fica armazenado o telefone do cliente.
    cnh:Campo com numero do CNH do cliente.
    saldo: Campo referente ao saldo do cliente
    Sensor: Tabela onde se armazena dados referentes a utilização dos sensores.
    idSensor: Codigo de cadastro do sensor.
    descrição: Campo que armazena a situação do sensor, sendo ela desligada ou ligada.
    tipo: Campo onde fica armazenada as caracteriscas do sensor.
    veiculo: Tabela onde fica armazenado dados referentes aos veiculos dos condutores.
    placa: Campo onde armazena o numero da placa de cada veiculo.
    categoria: Campo onde armazena a categoria do veiculo com base em suas caracteristicas.
    estacionamento: Tabela onde fica armazenado dados referentes a reserva feita pelo usuario.
    nome: Campo onde se armazena nome referente a reserva.
    primeira_hora: Campo onde se armazena a hora que o veiculo entrou em sua vaga.
    val_hora: Campo onde fica armazenado o valor/hora.
    cartão: Tabela onde fica armazenados dados referentes ao cartão do cliente.
    validade:Campo com dados referente a data de validade do cartão do cliente
    nome_impressão: Campo com dados referente ao nome do cliente no cartão.
    numero: Campo que armazena o numero do cartão do cliente.
    endereco: Tabela com dados do endereço em relação a vaga de estacionamento, que decidimos não adicionar para simplificar o projeto.
    metodo_pagamento: Tabela com dados a respeito do tipo de pagamento.
    metodo : Campo onde fica armazenado o metodo escolhido
    categoria_veiculo: Tabela onde fica armazenada dados referentes aos veiculos.
    categoria: Tipo do veiculo, carro, moto entre outros
    Descrição: Campo onde fica armazenado o tipo do veiculo
    Status_reserva: Tabela onde fica armazenado o status da reserva


### 6	MODELO LÓGICO<br>
[Modelo Lógico - BrModelo](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Logico_top.brM3)

![Modelo Lógico - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Imagens/Logico_top.png)

### 7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Fisico_top.sql)

        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
[Script de inserção - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/inserts/nova_inser%C3%A7%C3%A3o.sql)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
[Script de criação e inserção - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/inserts/novo_create_insert.sql)
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
[Script de criação e inserção e drop de tabelas - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/drop_create_insert.sql)

>## Marco de Entrega 03 em: (adiada)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
    SELECT * FROM cartao;

![Consulta cartao  - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/cartao.png)

```sql
SELECT * FROM categoria_veiculo
```
![Consulta categoria_veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/categoria_veiculo.png)

```sql
SELECT * FROM endereco;
```
![Consulta gerencia - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/endereco.png)

```sql
SELECT * FROM pagamento;
```
![Consulta pagamento - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/pagamento.png)

```sql
SELECT * FROM cliente;
```
![Consulta cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/cliente.png)

```sql
SELECT * FROM reserva;
```
![Consulta reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/reserva.png)

```sql
SELECT * FROM sensor;
```
![Consulta sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/sensor.png)

```sql
SELECT * FROM tipo_sensor;
```
![Consulta tipo_sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/tipo_sensor.png)

```sql
SELECT * FROM vaga;
```
![Consulta vaga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/vaga.png)

```sql
SELECT * FROM veiculo;
```
![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/veiculo.png)

```sql
SELECT * FROM estacionamento;
```
![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/estacionamento.png)

```sql
SELECT * FROM metodo_pagamento;
```
![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/metodo_pagamento.png)

```sql
SELECT * FROM status_reserva;
```
![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C1/status_reserva.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
```sql
SELECT nome, email, telefone
FROM cliente
WHERE id = 2;
```
![Consulta where 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%201.png)

```sql
SELECT sessao,id,andar
FROM vaga
WHERE numero > 4;
```    
![Consulta where 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%202.png)

```sql
SELECT placa, fk_cliente_id
FROM veiculo
WHERE fk_categoria_veiculo_id = 3;
```
![Consulta where 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%203.png)

```sql
SELECT fk_vagas_id,  fk_tipo_sensor_id, id, nome
FROM sensor
WHERE  fk_tipo_sensor_id= 1;
```
![Consulta where 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%204.png)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

```sql
SELECT fk_cliente_id, fk_vagas_id, hora_saida, hora_entrada, (hora_saida - hora_entrada) as tempo_estacionado 
FROM  reserva
WHERE fk_cliente_id = 6;
```
![Consulta aritmetica 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%201.png)

```sql
SELECT fk_cliente_id as id_cliente, fk_vagas_id as id_vaga, hora_entrada, hora_saida, (hora_saida - hora_entrada) as tempo_estacionado, primira_hora, val_hora, 
(((((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) -1 )* val_hora) + primira_hora) as custo_total
FROM  reserva
INNER JOIN estacionamento
on (reserva.fk_vagas_id = estacionamento.id)
WHERE fk_vagas_id = 2 or fk_vagas_id = 6;
```
![Consulta aritmetica 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%202.png)

```sql
SELECT reserva.fk_cliente_id, sum(hora_saida - hora_entrada) as tempo_estacionado, 
sum(((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) * val_hora) as custo_total, saldo , 
(saldo - sum(((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) * val_hora)) as saldo_remanescente
FROM  reserva
INNER JOIN estacionamento
on (reserva.fk_vagas_id = estacionamento.id)
INNER JOIN cliente 
on (reserva.fk_cliente_id = cliente.id)
WHERE fk_vagas_id = 2 or fk_vagas_id = 6
GROUP BY reserva.fk_cliente_id ,cliente.saldo;    
```
![Consulta aritmetica 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%203.png)

```sql
SELECT id,rua,bairro,cidade,estado
FROM endereco
WHERE estado = 'ES' or numero > '4';
```
![Consulta logica 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%201.png)

```sql
SELECT * 
FROM cliente
WHERE cnh <> '';
```
![Consulta logica 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%202.png)

```sql
SELECT *
FROM reserva
WHERE fk_vagas_id < 5 and fk_cliente_id > 3;
```
![Consulta logica 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%203.png)

```sql
SELECT  id, fk_vagas_id,  fk_tipo_sensor_id, nome
FROM sensor
WHERE fk_tipo_sensor_id= 1 and fk_vagas_id >= 3;
```
![Consulta logica 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%204.png)

```sql
SELECT status
FROM status_reserva
WHERE  status = 'RESERVADO' or status = 'ANDAMENTO'; 
```
![Consulta logica 5 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%205.png)

```sql
SELECT fk_vagas_id as identificador_vaga, fk_cliente_id as identificador_cliente
FROM reserva
WHERE fk_vagas_id < 8 and fk_cliente_id < 7; 
```
![Consulta rename 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%201.png)

```sql
SELECT nome, email, saldo as crédito_disponivel
FROM cliente;
```
![Consulta rename 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%202.png)

```sql
SELECT cnh as carteira_motorista, telefone, id
FROM cliente
WHERE cnh > '20014364166';
```
![Consulta rename 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%203.png)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

```sql
SELECT *
FROM cliente
WHERE nome like '%l%';
```
![Consulta like 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/like%201.png)

```sql
SELECT *
FROM cartao
WHERE numero like '%2%';
```
![Consulta like 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/like%202.png)

```sql
SELECT *
FROM veiculo
WHERE placa ilike '%a%';
```
![Consulta like 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/like%203.png)

```sql
SELECT *
FROM cartao
WHERE nome_impresso ilike '%d%';
```
![Consulta like 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/like%204.png)

```sql
SELECT *
FROM categoria_veiculo
WHERE descricao ilike '%h%';
```
![Consulta like 5 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/like%205.png)

```sql
SELECT nome_impresso, current date as data_atual, validade,
date_part('year',(age(validade,current_date))) as tempo_restante
FROM cartao;
```
![Consulta data 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%201.png)

```sql
SELECT fk_vagas_id, fk_cliente_id, extract('year' from (data)) as ano_reserva
FROM reserva
WHERE fk_vagas_id > 2;
```
![Consulta data 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%202.png)

```sql
SELECT  nome_impresso, numero, fk_cliente_id, extract('month' from validade) as mes_vencimento
FROM cartao
WHERE numero > '4024007162979677';
```
![Consulta data 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%203.png)

```sql
SELECT age(validade,current_date) as qtd_dias
FROM cartao;
```
![Consulta data 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%204.png)

```sql
SELECT age(current_date,data) as qtd_dias
FROM reserva;
```
![Consulta data 5 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%205.png)

```sql
SELECT age(current_date,data) as qtd_dias
FROM pagamento;
```
![Consulta data 6 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%206.png)

```sql
SELECT fk_cliente_id, valor, fk_metodo_pagamento_id, date_part('year',(age(current_date,data))) as tempo_pagamento_efetuado
FROM pagamento;
```
![Consulta data 7 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C4/data%207.png)


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
```sql
DELETE FROM sensor WHERE id = 4;
```
<br>Antes<br>
![Delete Sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/sensor1.png)
<br>Depois<br>
![Consulta Sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/sensor2.png) <br>

```sql
DELETE FROM veiculo WHERE placa = 'LAQ1099';
```
<br> Antes <br>
![Delete Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculo.png)
<br>Depois<br>
![Consulta Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculo2.png) <br>

```sql
DELETE FROM veiculo where fk_cliente_id = 8
```
<br> Antes <br>
![Delete Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculo3.png)
<br>Depois<br>
![Consulta Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculo4.png) <br>

```sql
DELETE FROM reserva WHERE fk_cliente_id = 7 and fk_vagas_id = 1 and hora_entrada = '18:30:00';
```
<br> Antes <br>
![Delete Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reserva.png)
<br>Depois<br>
![Consulta Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reserva2.png) <br>

```sql
DELETE FROM cartao WHERE nome_impresso = 'João Silva' and numero = '5471259221787113';
```
<br> Antes <br>
![Delete Sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/Cartao.png)
<br>Depois<br>
![Consulta Sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/Cartao2.png) <br>

```sql
DELETE FROM cartao WHERE fk_cliente_id = 8 and nome_impresso = 'Ricardo Marks' and numero = '5144371014887054'
```
<br> Antes <br>
![Delete Cartao - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cartao3.png)
<br>Depois<br>
![Consulta Cartao - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cartao4.png) <br>

**Updates**:<br>

```sql
UPDATE cliente SET telefone = '45848454'
WHERE nome = 'David' and cpf = '48961067095';
```
<br> Antes <br>
![Update Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cliente1.png)
<br>Depois<br>
![Consulta Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cliente2.png)
<br>

```sql
UPDATE cartao SET nome_impresso = 'Thiago'
WHERE fk_cliente_id = 8 ;
```
<br> Antes <br>
![Update Cartão - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cartaoUp1.png)
<br>Depois<br>
![Consulta Cartão - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cartaoUp2.png)
<br>

```sql
UPDATE veiculo SET placa = 'AVC-2134', fk_categoria_veiculo_id = 4
WHERE placa = 'LAQ1099';
```
<br> Antes <br>
![Update Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculoUp.png)
<br>Depois<br>
![Consulta Veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/veiculoUp2.png)
<br>

```sql
UPDATE reserva SET hora_entrada = '15:00:00', hora_saida = '17:30:00'
WHERE fk_cliente_id = '6' and data = '2017-09-05';
```
<br> Antes <br>
![Update Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reservaUp.png)
<br>Depois<br>
![Consulta Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reservaUp2.png)
<br>

```sql
UPDATE reserva SET hora_entrada = '11:00:00', hora_saida = '17:30:00', data = '2017-09-06'
WHERE fk_cliente_id = '6' and data = '2017-09-05';
```
<br> Antes <br>
![Update Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reservaUp3.png)
<br>Depois<br>
![Consulta Reserva - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/reservaUp4.png)
<br>

```sql
UPDATE cliente SET telefone = '11126574855', email = 'tad_sfg@gmail.com', saldo = 50.00, nome = 'Thiago Alves'
WHERE nome = 'Thiago' and cpf = '73948820040';
```
<br> Antes <br>
![Update Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cliente3.png)
<br>Depois<br>
![Consulta Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9-5/cliente4.png)
<br>



>## Marco de Entrega 04 em: (08/06/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
**Junção de todas as tabelas:**
```sql
select distinct CLI.nome, CLI.saldo, MP.metodo, PG."data" as "data_pg",
extract(hour from (hora_saida - hora_entrada)) as "duracao(hrs)",ESTAC.nome as estacionamento, ENDE.cep,
(((((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) -1 )* val_hora) + primira_hora) as custo_total  from metodo_pagamento as MP 
join pagamento as PG on (MP.id = PG.fk_metodo_pagamento_id) 
join cliente as CLI on (CLI.id = PG.fk_cliente_id) 
join cartao as CART on (CART.fk_cliente_id = CLI.id)
join veiculo as VEIC on (CLI.id = VEIC.fk_cliente_id)
join categoria_veiculo as CAT on (CAT.id = VEIC.fk_categoria_veiculo_id)
join reserva as RES on (RES.fk_cliente_id = CLI.id)
join status_reserva as STAT_RES on (STAT_RES.id = RES.fk_status_reserva_id)
join vaga as VAG on (VAG.id = RES.fk_vagas_id)
join sensor as SENS on (SENS.fk_vagas_id = VAG.id)
join tipo_sensor as TIP_SENS on (TIP_SENS.id = SENS.fk_tipo_sensor_id)
join estacionamento as ESTAC on (ESTAC.id = VAG.fk_estacionamento_idwhere extract(year from RES."data") = 2018 and ESTAC.id = PG.fk_estacionamento_id)
join endereco as ENDE on (ENDE.id = ESTAC.fk_endereco_id)
where extract(year from PG."data") = 2018
```
![join_todas as tableas](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/alljoin.png)

```sql
select estacionamento.nome, sum(vaga.id) as qtd_vagas from estacionamento join vaga on (estacionamento.id = vaga.fk_estacionamento_id) group by estacionamento.nome order by qtd_vagas desc
```
![join1](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/join1.png)

```sql
select distinct sensor.nome, tipo_sensor.tipo from sensor join tipo_sensor on (tipo_sensor.id = sensor.fk_tipo_sensor_id) order by sensor.nome asc
```
![join2](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/join2.png)

```sql
select cliente.nome, estacionamento.nome, vaga.sessao, vaga.numero, vaga.andar, reserva."data" from estacionamento 
join vaga on (estacionamento.id = vaga.fk_estacionamento_id)
join reserva on (reserva.fk_vagas_id = vaga.id)
join cliente on (cliente.id = reserva.fk_cliente_id) order by reserva."data" desc;
```
![join3](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/join3.png)

```sql
select veiculo.placa, categoria_veiculo.categoria from veiculo 
join categoria_veiculo on (veiculo.fk_categoria_veiculo_id = categoria_veiculo.id) 
order by categoria_veiculo.categoria;
```
![join4](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/join4.png)

```sql
select cliente.nome, cartao.numero as cartao from cliente 
join cartao on (cliente.id = cartao.fk_cliente_id) 
order by cliente.nome asc;
```
![join5](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C6/join5.png)

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>

```sql
select * from cliente order by nome ASC ;
```
![Consulta Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/clienteOR.png) <br>

```sql
select * from endereco order by cep DESC ;
```
![Consulta Endereço - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/enderecoOR.png) <br>

```sql
select sessao,count(sessao) from vaga group by sessao order by  sessao asc
```
![Consulta Endereço - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/groupy%20by%20e%20orderby.png) <br>
 
```sql
select nome_impresso,count(nome_impresso) from cartao group by nome_impresso 
order by  nome_impresso desc
```
![Consulta Cartão - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/groupy%20by%204.png) <br>

```sql
select cep,rua,cidade,endereco.id,nome from endereco,estacionamento where estacionamento.fk_endereco_id = endereco.id group by endereco.id,nome;
```
![Consulta Endereço, Estacionamento - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/groupy%20by1.png) <br>
    
```sql
select cliente.nome,fk_VAGAS_id,data,estacionamento.nome,hora_entrada,hora_saida from cliente,reserva,vaga,estacionamento where cliente.id = reserva.fk_cliente_id and reserva.fk_vagas_id = vaga.id group by cliente.nome,estacionamento.nome,fk_VAGAS_id,data,hora_entrada,hora_saida;
```
![Consulta Cliente, Reserva, Vaga, Estacionamento - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.7/groupy%20by2.png) <br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

```sql
/* TODOS OS CLIENTES QUE NUNCA FIZERAM UMA RESERVA*/
select CLI.nome from cliente CLI left join reserva RES on (CLI.id = RES.fk_cliente_id) where RES.fk_cliente_id is null;
```
![lrjoin1](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/lrjoin1.png)

```sql
/* TODAS AS VAGAS QUE NUNCA FORAM RESERVADAS*/
select vaga.id as vagas from vaga left join reserva RES on (vaga.id = RES.fk_vagas_id) where RES.fk_vagas_id is null;
```
![lrjoin2](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/lrjoin2.png)

```sql
/*LISTA COM TODOS OS CLIENTES E SUAS RESERVAS, CASO EXISTAM*/
select CLI.nome, RES."data" from cliente CLI left join reserva RES on (CLI.id = RES.fk_cliente_id);
```
![lrjoin3](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/lrjoin3.png)

```sql
/*LISTA COM TODOS OS SENSORES QUE NÃO ESTAO EM NENHUMA VAGA */
select sensor.nome as "sensor" from sensor left join vaga on (vaga.id = sensor.fk_vagas_id) where vaga.id is null;
```
![lrjoin4](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/lrjoin4.png)

```sql
/*LISTA COM CLIENTE E AS PLACAS DOS SEUS CARROS */
SELECT placa,cliente.nome FROM veiculo right JOIN cliente ON (veiculo.fk_cliente_id = cliente.id);
```
![rightjoin 2](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/rightjoin%202.png)

```sql
/* LISTA COM NOME E EMAIL DE TODOS OS CLIENTES QUE FIZERAM RESERVA */
select CLI.nome,CLI.email from cliente CLI right join reserva RES on (CLI.id = RES.fk_cliente_id) where RES.fk_cliente_id is not null;
```
![rightjoin 1](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C8/rightjoin%201.png)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
```sql
/*SELF JOIN - TODOS OS CLIENTES QUE TENHAM O MESMO SALDO */
select c1.nome, c2.nome, c1.saldo from cliente C1 join cliente C2 on (C1.id <> C2.id and C1.saldo = C2.saldo);
```
![selfjoin](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/selfjoin.png)

```sql
create or replace temporary view view_cliente as select nome, email, telefone from cliente;
select * from view_cliente;
```
![view1](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/view1.png)

```sql
create or replace temporary view view_estacionamento as 
select estacionamento.nome, endereco.pais, endereco.estado, endereco.cep, endereco.numero 
from estacionamento join endereco on estacionamento.fk_endereco_id = endereco.id;
select * from view_estacionamento;;
```
![view2](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/view2.png)

```sql
create or replace temporary view view_vaga as 
select vaga.id as "id_vaga", count(sensor.id) as "qtd sensor" from vaga join sensor on vaga.id = sensor.fk_vagas_id group by vaga.id order by vaga.id;
select * from view_vaga;
```
![view3](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/view3.png)

```sql
create or replace temporary view view_veic_A as 
select veiculo.placa, categoria_veiculo.categoria, categoria_veiculo.descricao 
from veiculo join categoria_veiculo on categoria_veiculo.id = veiculo.fk_categoria_veiculo_id 
where categoria_veiculo.categoria = 'A';
select * from view_veic_A;
```
![view4](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/view4.png)

```sql
create or replace temporary view view_reserva_ativa as 
select data, hora_entrada, hora_saida from reserva where reserva.fk_status_reserva_id = 1;
select * from view_reserva_ativa;
```
![view5](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C9/view5.png)

#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

```sql
select * from estacionamento where fk_endereco_id in (select id from endereco where cep = '29101913')
```
![Consulta Estacionamento - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.10/subculsulta1.png) <br>

```sql
select * from vaga where fk_estacionamento_id = (select id from endereco where cep = '29101913')
```
![Consulta Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.10/subculsulta12.png) <br>

```sql
select * from endereco where cep in (select cep from endereco where cep = '29101913')
```
![Consulta Cliente - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9.10/subculsulta123.png) <br>



### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 

[Backup Banco de Dados Estaciona](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/backupEstaciona.backup). <br>
    
    Validação realizada pelo grupo: Casa Inteligente - EstacIonA (Análise)
    
    Integrantes do Grupo: Caicke Pinheiro, Andreangelo Patuzzo, Emanuel Rampinelli e Anne Caroline

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        
        Criação do Backup
        
        Utilizando de um banco de dados já com tabelas criadas e populado pode-se fazer o backup dele em 
        formato .backup (assim como o disponibilizado no tópico 11).       
        
        Para Configurar o Backup, após a base de dados configurada,basta clicar com o botão direito sobre
        a base de dados e na opção Backup.
        
![IMAGEM 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_5.png) <br>
![IMAGEM 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_6.png) <br>
        
        Será aberta a tela onde você deseja salvar o arquivo de backup o formato do mesmo e qual encoding 
        deve ser utilizado. Nas abas há opções que podem ser configuradas como, quais objetos deve ser gerado
        , o script dentre outros basta clicar em Ok para iniciar.
        
![IMAGEM 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/pgadmin%207.png) <br>
        
        Para criar um banco assim como o do trabalho lembre de marcar em "Dump Options #1" e depois em 
        "Don't Save" as opções dentro do quadrado vermelho.
        
![IMAGEM 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/pgadmin%208.png) <br>
        
        Restauração do Backup
        
        Para fazer a restauração do banco primeiro temos que criar uma instancia no PgAdmin III.
        Ao Instalar o programa , abra o mesmo e clique na opção para configurar a nova conexão .
        
![IMAGEM 5 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_1.png) <br>
        
        Após clicar nesta opção será aberta uma tela onde deverá incluir os dados de acesso ao banco
        com os campos ; Name - Inclua o nome de sua base de dados ; Host - Endereço de aceso ao banco
        de dados , ou o endereço ip do servidor. Maintenance DB - Inclua o nome de sua base de dados;
        Username - Usuário de acesso ao banco Password - Senha de acesso.
        
![IMAGEM 6 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_2.png) <br>
        
        Após Configurado clique em OK. No Object Browser será apresentado a conexão que configurou, 
        ao clicar na mesma serão apresentados os dados da base e do servidor.
        
![IMAGEM 7 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_3.png) <br>
        
        Ao Expandir a conexão criada , são apresentados os dados das bases que constam no servidor, 
        porém você somente terá acesso aos dados da base criada para sua hospedagem que será apresentada
        de outra forma.
        
        Pronto! Instancia criada. 
        
        Agora existem duas formas de se ter acesso ao banco, uma utlizando o arquivo .backup disponibilizado
        no tópico 11 que já vem com todas as mudanças realizadas no banco e utilizando os comandos sql 
        disponibilizados no tópico 7 (somente a estrutura do banco será criado sem conter nenhum tipo de dado),
        no tópico 8.1 (contém os dados a serem inseridos caso escolha utilizar o sql do tópico 7) e no tópico 
        8.2 (onde a estrutura do banco e os dados já são inseridos) que permitem que as mudanças sejam realizadas
        por você.
        
        Primeira forma: UTILIZANDO O ARQUIVO .BACKUP
        
        Basta clicar com o botão direito sobre a Base de Dados e clicar em Restore. 
        
![IMAGEM 8 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/Pgadmin_6.png) <br>
        
        Agora selecione o arquivo de backup em sua unidade e basta clicar em Restore para iniciar. 
        
![IMAGEM 9 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/restore.png) <br>
        
        Quando a restauração for concluída, o Mensagens exibirá detalhes sobre o processo de restauração:
        Se a restauração foi bem-sucedida, mostrará os resultados abaixo.
        Processo retornou código de saída 0.

        Clique em Ok, Pronto ! Restaurado com sucesso.
        
![IMAGEM 10 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/restore-5.png) <br>
        
        Segunda Forma: UTILIZANDO OS COMANDOS SQL
        
        Basta clicar em cima da Base de Dados (1) e depois clicar na lupa na parte superior(2).
        
![IMAGEM 11 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/restore%20-%201.png) <br>
        
        Depois basta copiar os comandos sql e colar na parte apontada pela seta vermelha (1) e depois de 
        inserido os comandos basta clicar no botão de play (2).
        
![IMAGEM 12 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Imagens%20Tutorial/restore%20-%202.png) <br>
        
        Para realizar os comandos disponibilizados nos tópicos 8.3 até 9.10 basta seguir os passos da segunda
        forma de realização do backup.
        
  
   Parte do tutorial retirado do site : https://wiki.locaweb.com.br/pt-br/Backup_e_Restore_de_Banco_de_Dados
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        As principais dificuldades encontradas pelo grupo foram a esquematização do modelo conceitual, e entender
        melhor como fazer os diversos selects e principalmente aprender a ordem da utilização de cada função 
        respeitando suas hierarquia.

>## Marco de Entrega Final em: (25/06/2018)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


