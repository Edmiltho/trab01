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
 

### 3.MINI-MUNDO Novo<br>

> 
O Sistema proposto ao usuário apresenta as seguintes informações .Do cliente serão armazenados o nome,e-mail, CPF, Número da CNH, telefone, além de qual veículo possui.Das formas de pagamentos serão armazenados numero de cartão de crédito, data de vencimento, nome impresso no cartão, além dos créditos depositados. O usuário cadastrado no aplicativo pode de qualquer lugar efetuar a reserva de vaga em um estacionamento caso esta já não tenha sido reservado, escolhendo assim o método de pagamento mais apropriado e fetuando o pagamento do valor referente aquele estacionamento informado pelo próprio aplicativo.
O sistema proposto ao administrador apresenta as seguintes informações: Da empresa será armazenada o nome,e-mail e CNPJ, Dos estacionamentos serão armazenados o Local e código das vagas, o administrador poderá adicionar o remover qualquer estacionamento e alterar o numero de vagas a qualquer momento, deste armzenaremos nome, email e CPF. 
<br>

[Mockup App](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20APP.pdf)  
[Mockup Web](https://github.com/GrupoDaVaga/trab01/blob/david/mockups/ESTACIONA%20WEB.pdf)  

OBS: Os mockup's podem estar desatualizado devido a mudanças que ocorreram durante o projeto após a licensa do mesmo ter expirado, e como podem ver nesta [imagem](https://github.com/GrupoDaVaga/trab01/blob/master/mockups/balsamiq.png), a licença gratuita não permite edições nos mockups após 30 dias de uso

#### 4.1 TABELA DE DADOS DO SISTEMA:
[Tabela_de_dados_estacIonA](https://github.com/GrupoDaVaga/trab01/blob/master/Planilhas/Tabela%20de%20Dados%20EstacIonA%20(1).xlsx)
    
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>
   > O sistema fornecerá relatórios sobre a vaga que foi reservada e as informações do cliente, da empresa responsável pela vaga, da reserva (preço, data) e do veículo do cliente. Os principais relatórios obtidos são: <br><br>
   - Vagas disponíveis;<br>
   - Relatório sobre determinada vaga;<br>
   - Relatório sobre a reserva da vaga;<br>
   - Relatório sobre determinado cliente;<br>
   - Histórico de reservas de determinado cliente;<br>
   - Créditos restantes de um determinado cliente;<br>
   - Relatório da empresa responsável pela vaga;<br>
   - Relatório do administrador da empresa responsável;<br>
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
    Campo CNPJ: em nosso projeto optamos por uma pessoa Juridica cadastrar o CPNJ da empresa e pessoa fisica
    cadastrar o CPF para uso pessoal.
    Pois utilizando essa decisão podemos poupar de criar uma nova tabela para outro problema.
    
    Campo preço_vaga: em nosso projeto decidimos o preço da vaga por hora estacionada, assim o aplicativo calcula quanto tempo
    o cliente ficou com o preço de cada vaga.
    Pois esse método é mais utilizado em estacionamentos privados.
    
    Campo Tipo Sensor: em nosso projeto optamos também por RETIRAR o atributo tipo sensor e criamos uma tabela tipo sensor
    Pois com esse método resolveriamos o problema de adicionar novos tipos de sensores.
    

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
    val_hora: Campo onde fica armazenado o horario que o veiculo saiu do estacionamento.
    cartão: Tabela onde fica armazenados dados referentes ao cartão do cliente.
    validade:Campo com dados referente a data de validade do cartão do cliente
    nome_impressão: Campo com dados referente ao nome do cliente no cartão.
    numero: Campo que armazena o numero do cartão do cliente.
    endereco: Tabela com dados do endereço em relação a vaga de estacionamento, que decidimos não adicionar para simplificar o projeto.
    



### 6	MODELO LÓGICO<br>
[Modelo Lógico - BrModelo](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Logico_top.brM3)

![Modelo Lógico - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Imagens/Logico_top.png)

### 7	MODELO FÍSICO<br>
[Modelo Físico - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Modelo%20Normalizado/Fisico_top.sql)

        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
[Script de inserção - SQL](https://github.com/GrupoDaVaga/trab01/commit/5e4459a058a7ffe22f08da2302dca9fb61a8db2d)

#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS
[Script de criação e inserção - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/inserts/Jun%C3%A7%C3%A3o%20Create%20e%20Insert.sql)
        
#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS
[Script de criação e inserção e drop de tabelas - SQL](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/Jun%C3%A7%C3%A3o%20Create%20e%20Insert%20e%20Drop.sql)
Foi usado o comando DROP nas tabelas gerencia e paga.

>## Marco de Entrega 03 em: (adiada)<br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
    SELECT * FROM cartao;

![Consulta cartao  - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/cart%C3%A3o.png)

    SELECT * FROM categoria_veiculo

![Consulta categoria_veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/categoria_veiculo.png)

    SELECT * FROM gerencia;

![Consulta gerencia - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/gerencia.png)

    SELECT * FROM paga;

![Consulta paga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/paga.png)

    SELECT * FROM pessoa;

![Consulta pessoa - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/pessoa.png)

    SELECT * FROM reserva_vaga;

![Consulta reserva_vaga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/reserva_vaga.png)

    SELECT * FROM sensor;

![Consulta sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/sensor.png)

    SELECT * FROM tipo_sensor;

![Consulta tipo_sensor - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/tipo_sensor.png)

    SELECT * FROM vaga;

![Consulta vaga - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/vaga.png)

    SELECT * FROM veiculo;

![Consulta veiculo - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/veiculo.png)

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
    SELECT nome, email, perfil
    FROM pessoa
    WHERE id_pessoa = 2;
    
![Consulta where 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%201.png)

    SELECT preco_vaga,id_vaga,estado_vaga
    FROM vaga
    WHERE estado_vaga = 'ES';
    
![Consulta where 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%202.png)

    SELECT placa_veiculo, fk_categoria_veiculo_categoria_veiculo_pk
    FROM veiculo
    WHERE fk_categoria_veiculo_categoria_veiculo_pk = 'A';
    
![Consulta where 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%203.png)

    SELECT situacao,  fk_tipo_sensor_id_tipo, id_sensor
    FROM sensor
    WHERE  fk_tipo_sensor_id_tipo = 1;
    
![Consulta where 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C2/where%204.png)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)

    SELECT fk_pessoa_id_pessoa, fk_vaga_id_vaga, hora_saida, hora_entrada, (hora_saida - hora_entrada) as tempo_estacionado 
    FROM  reserva_vaga
    WHERE fk_pessoa_id_pessoa = 6;

![Consulta aritmetica 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%201.png)

    SELECT fk_pessoa_id_pessoa, fk_vaga_id_vaga, hora_saida, hora_entrada, (hora_saida - hora_entrada) as tempo_estacionado, preco_vaga, (((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) * preco_vaga) as custo_total
    FROM  reserva_vaga
    INNER JOIN vaga
    on (reserva_vaga.fk_vaga_id_vaga = vaga.id_vaga)
    WHERE fk_pessoa_id_pessoa = 6;

![Consulta aritmetica 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%202.png)

    SELECT reserva_vaga.fk_pessoa_id_pessoa, sum(hora_saida - hora_entrada) as tempo_estacionado, sum(((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) * preco_vaga) as custo_total, credito , (credito - sum(((EXTRACT(EPOCH FROM (hora_saida - hora_entrada))) / 3600) * preco_vaga)) as credito_remanescente
    FROM  reserva_vaga
    INNER JOIN vaga
    on (reserva_vaga.fk_vaga_id_vaga = vaga.id_vaga)
    INNER JOIN pessoa 
    on (reserva_vaga.fk_pessoa_id_pessoa = pessoa.id_pessoa)
    WHERE reserva_vaga.fk_pessoa_id_pessoa > 6
    GROUP BY reserva_vaga.fk_pessoa_id_pessoa ,pessoa.credito;

![Consulta aritmetica 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/aritm%203.png)

    SELECT preco_vaga,id_vaga,estado_vaga
    FROM vaga
    WHERE estado_vaga = 'ES' or preco_vaga >= '3';

![Consulta logica 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%201.png)

    SELECT * 
    FROM pessoa
    WHERE cnh <> '';

![Consulta logica 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%202.png)

    SELECT *
    FROM reserva_vaga
    WHERE fk_vaga_id_vaga < 5 and fk_pessoa_id_pessoa > 3;

![Consulta logica 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%203.png)

    SELECT situacao, id_sensor
    FROM sensor
    WHERE fk_tipo_sensor_id_tipo = 1 and situacao = true;

![Consulta logica 4 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%204.png)

    SELECT situacao, id_sensor
    FROM sensor
    WHERE fk_tipo_sensor_id_tipo = 1 and situacao = true or fk_tipo_sensor_id_tipo = 2 and situacao = true; 

![Consulta logica 5 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/logic%205.png)

    SELECT fk_vaga_id_vaga as identificador_vaga, fk_pessoa_id_pessoa as identificador_pessoa
    FROM reserva_vaga
    WHERE fk_vaga_id_vaga < 8 and fk_pessoa_id_pessoa < 7; 

![Consulta rename 1 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%201.png)

    SELECT cnh as carteira_motorista, telefone, id_pessoa
    FROM pessoa
    WHERE cnh > '20014364166';

![Consulta rename 2 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%202.png)

    SELECT nome, email, perfil as tipo_de_perfil
    FROM pessoa;

![Consulta rename 3 - PNG](https://github.com/GrupoDaVaga/trab01/blob/master/Scripts%20SQL/9%2C3/rename%203.png)

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

>## Marco de Entrega 04 em: (08/06/2017)<br>

#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
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


