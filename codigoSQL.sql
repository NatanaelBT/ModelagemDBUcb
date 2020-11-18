CREATE DATABASE db_Escola;
USE db_Escola;

CREATE TABLE IF NOT EXISTS tbl_Endereco (
Cod_Endereco SMALLINT AUTO_INCREMENT PRIMARY KEY, 
CEP INT NOT NULL,
Cidade VARCHAR(20) NOT NULL,
Estado VARCHAR(15) NOT NULL,
Logradouro VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Telefone (
Cod_Telefone INTEGER AUTO_INCREMENT PRIMARY KEY,
Telefone_Pessoal INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Turma (
Cod_Turma SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Turma VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Funcionario (
Cod_Funcionario SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Funcionario VARCHAR (10) NOT NULL,
CPF_Funcionario VARCHAR(11) NOT NULL,
RG_Funcionario INTEGER NOT NULL,
Sobrenome_Funcionario VARCHAR (10)
);

CREATE TABLE IF NOT EXISTS tbl_Aluno (
Matricula_Aluno SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Aluno VARCHAR(10) NOT NULL,
Sobrenome_Aluno VARCHAR(10) NOT NULL,
Data_Nasc_Aluno DATE NOT NULL,
RG_Aluno INTEGER NOT NULL,
CPF_Aluno VARCHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Cargo (
Cod_Cargo SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Cargo VARCHAR (15)
);

CREATE TABLE IF NOT EXISTS tbl_Disciplina (
Cod_Disciplina SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nome_Disciplina VARCHAR (15)
);

CREATE TABLE IF NOT EXISTS tbl_Ministra (
Hora_Disciplina TIME NOT NULL
);

CREATE TABLE IF NOT EXISTS tbl_Pertence (
Data_Aula DATE NOT NULL
);

ALTER TABLE tbl_Cargo ADD Cod_Funcionario SMALLINT NOT NULL,
ADD CONSTRAINT FK_Cod_Funcionario 
FOREIGN KEY (Cod_Funcionario)
REFERENCES tbl_Funcionario(Cod_Funcionario);

ALTER TABLE tbl_Ministra ADD Cod_Funcionario SMALLINT NOT NULL,
ADD CONSTRAINT FK_Funcionario_Cod_Funcionario 
FOREIGN KEY (Cod_Funcionario)
REFERENCES tbl_Funcionario(Cod_Funcionario);

ALTER TABLE tbl_Ministra ADD Cod_Disciplina SMALLINT NOT NULL,
ADD CONSTRAINT FK_Disciplina_Cod_Disciplina 
FOREIGN KEY (Cod_Disciplina)
REFERENCES tbl_Disciplina(Cod_Disciplina);

ALTER TABLE tbl_Pertence ADD Cod_Disciplina SMALLINT NOT NULL,
ADD CONSTRAINT FK_Cod_Disciplina 
FOREIGN KEY (Cod_Disciplina)
REFERENCES tbl_Disciplina(Cod_Disciplina);

ALTER TABLE tbl_Pertence ADD Cod_Turma SMALLINT NOT NULL,
ADD CONSTRAINT FK_Cod_Turma 
FOREIGN KEY (Cod_Turma)
REFERENCES tbl_Turma(Cod_Turma);

ALTER TABLE tbl_Aluno ADD Cod_Turma SMALLINT NOT NULL,
ADD CONSTRAINT FK_Turma_Cod_Turma 
FOREIGN KEY (Cod_Turma)
REFERENCES tbl_Turma(Cod_Turma);

ALTER TABLE tbl_Aluno ADD Cod_Endereco SMALLINT NOT NULL,
ADD CONSTRAINT FK_Cod_Endereco
FOREIGN KEY (Cod_Endereco)
REFERENCES tbl_Endereco(Cod_Endereco);

ALTER TABLE tbl_Aluno ADD Cod_Telefone INTEGER NOT NULL,
ADD CONSTRAINT FK_Cod_Telefone
FOREIGN KEY (Cod_Telefone)
REFERENCES tbl_Telefone(Cod_Telefone);

ALTER TABLE tbl_Funcionario ADD Cod_Endereco SMALLINT NOT NULL,
ADD CONSTRAINT FK_Endereco_Cod_Endereco
FOREIGN KEY (Cod_Endereco)
REFERENCES tbl_Endereco(Cod_Endereco);

ALTER TABLE tbl_Funcionario ADD Cod_Telefone INTEGER NOT NULL,
ADD CONSTRAINT FK_Telefone_Cod_Telefone
FOREIGN KEY (Cod_Telefone)
REFERENCES tbl_Telefone(Cod_Telefone);

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('71070518', 'Guará', 'DF', 'Rua 18');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('70297400', 'Asa Norte', 'DF', 'Bloco B');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('78030917', 'Asa Norte', 'DF', 'Quadra J');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('71070589', 'Asa Sul', 'DF', 'Quadra M');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('98530785', 'Águas Claras', 'DF', 'Rua 13');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('76080913', 'Guará', 'DF', 'Conjunto J');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('97643517', 'Sobradinho', 'DF', 'Quadra Q');

INSERT INTO tbl_Endereco (CEP, Cidade, Estado, Logradouro)
VALUES ('74967846', 'Gama', 'DF', 'Rua 20');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('31205685');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('33771874');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('30881387');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('30996427');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('32701250');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('30770351');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('30004784');

INSERT INTO tbl_Telefone (Telefone_Pessoal)
VALUES ('33449704');

INSERT INTO tbl_Turma (Nome_Turma)
VALUES ('1 Ano B');

INSERT INTO tbl_Turma (Nome_Turma)
VALUES ('3 Ano A');

INSERT INTO tbl_Turma (Nome_Turma)
VALUES ('1 Ano C');

INSERT INTO tbl_Turma (Nome_Turma)
VALUES ('2 Ano B');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('Pedro', 'Henrique', '70185721829', '9407419', '1', '1');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('José', 'Silva', '75687953627', '9764189', '2', '2');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('Carlos', 'Andrade', '84569823475', '49753897', '5', '5');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('Marina', 'Silva', '64739824812', '6397257', '6', '6');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('Gabriela', 'Silva', '06748923579', '9764879', '7', '7');

INSERT INTO tbl_Funcionario (Nome_Funcionario, Sobrenome_Funcionario, CPF_Funcionario, RG_Funcionario, Cod_Endereco, Cod_Telefone)
VALUES ('Maria', 'Eduarda', '98635797823', '0579863', '8', '8');

INSERT INTO tbl_Aluno (Nome_Aluno, Sobrenome_Aluno, CPF_Aluno, RG_Aluno, Data_Nasc_Aluno, Cod_Endereco, Cod_Telefone, Cod_Turma)
VALUES ('Marcos', 'Douglas', '75498326728', '9876819', '20021009', '3', '3', '1');

INSERT INTO tbl_Aluno (Nome_Aluno, Sobrenome_Aluno, CPF_Aluno, RG_Aluno, Data_Nasc_Aluno, Cod_Endereco, Cod_Telefone, Cod_Turma)
VALUES ('Andre', 'Felipe', '67426987439', '4758697', '20010410', '4', '4', '2');

INSERT INTO tbl_Cargo (Nome_Cargo, Cod_Funcionario)
VALUES ('Professor', '1');

INSERT INTO tbl_Cargo (Nome_Cargo, Cod_Funcionario)
VALUES ('Professor', '2');

INSERT INTO tbl_Cargo (Nome_Cargo, Cod_Funcionario)
VALUES ('Assistente', '3');

INSERT INTO tbl_Cargo (Nome_Cargo, Cod_Funcionario)
VALUES ('Coordenador', '4');

INSERT INTO tbl_Disciplina (Nome_Disciplina)
VALUES ('Matemática');

INSERT INTO tbl_Disciplina (Nome_Disciplina)
VALUES ('Português');

INSERT INTO tbl_Ministra (Hora_Disciplina, Cod_Funcionario, Cod_Disciplina )
VALUES ('10:30:00', '1', '2');

INSERT INTO tbl_Ministra (Hora_Disciplina, Cod_Funcionario, Cod_Disciplina )
VALUES ('8:30:00', '2', '1');

INSERT INTO tbl_Pertence (Data_Aula, Cod_Disciplina, Cod_Turma)
VALUES ('20190911', '1', '4');

INSERT INTO tbl_Pertence (Data_Aula, Cod_Disciplina, Cod_Turma)
VALUES ('20190411', '2', '3');