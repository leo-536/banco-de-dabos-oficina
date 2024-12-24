CREATE DATABASE if not exists oficina;
USE oficina;
-- DROP DATABASE oficina;
show databases;
SHOW TABLES;
desc Cliente;
CREATE TABLE Cliente (
  idCliente INT auto_increment PRIMARY KEY ,
  nome VARCHAR(15)not null,
  sobrenome VARCHAR(15)not null,
  cpf CHAR(11)not null unique,
  estado char (2) not null,
  cep char(8) not null,
  rua VARCHAR(45)not null,
  telefone VARCHAR(14)not null
);
-- alter table Cliente drop column telefone;
-- alter table Cliente add telefone char(11)not null;

CREATE TABLE Veiculo (
  idVeiculo INT auto_increment PRIMARY KEY,
  modelo VARCHAR(10)not null,
  placa CHAR(7)not null,
  ano CHAR(4)not null,
  cor VARCHAR(10)not null,
  montadora VARCHAR(10)not null,
 -- Cliente_idCliente INT,
  FOREIGN KEY (idVeiculo) REFERENCES Cliente(idCliente)
);

CREATE TABLE Peca (
  idPeca INT auto_increment PRIMARY KEY,
  nomeP VARCHAR(45),
  valor FLOAT not null,
  localizacao VARCHAR(10)not null,
  quantidade INT not null
);

CREATE TABLE Equipe (
  idEquipe INT auto_increment PRIMARY KEY
);

CREATE TABLE Mecanico (
  idMecanico INT auto_increment PRIMARY KEY,
  nome VARCHAR(15) not null,
  especialidade VARCHAR(45),
  -- E_idEquipe INT,
  FOREIGN KEY (idMecanico) REFERENCES Equipe(idEquipe)
);

CREATE TABLE OS ( 
  -- service enum ('eletrica','motor','revisao s','revisao g','freios','pneu','outros'),
  idOS INT auto_increment PRIMARY KEY,
  data_emissao DATE not null,
  data_entrega DATE not null,
  valor_total FLOAT,
 OSVeiculo INT,
 -- C_idCliente INT,
  FOREIGN KEY (OSVeiculo) REFERENCES Veiculo(idVeiculo),
  FOREIGN KEY (idOS) REFERENCES Cliente(idCliente)
);
 -- Tabela de relacionamento entre OS e Peça
CREATE TABLE OS_Peca (
  OS_idOS INT,
  OS_idPeca INT,
  PRIMARY KEY (OS_idOS, OS_idPeca),
  FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
  FOREIGN KEY (OS_idPeca) REFERENCES Peca(idPeca)
);
 -- Tabela de relacionamento entre OS e Equipe
CREATE TABLE OS_Equipe (
  OS_idOS INT,
  OS_idEquipe INT,
  PRIMARY KEY (OS_idOS,OS_idEquipe),
  FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
  FOREIGN KEY (OS_idEquipe) REFERENCES Equipe(idEquipe)
);
-- Tabela de relacionamento entre OS e Mecanico
CREATE TABLE OS_Mecanico (
  OS_idOS INT,
  OS_Mecanico INT,
  PRIMARY KEY (OS_idOS, OS_Mecanico),
  FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
  FOREIGN KEY (OS_Mecanico) REFERENCES Mecanico(idMecanico)
);

CREATE TABLE referencia (
  idReferencia INT PRIMARY KEY,
  tabela_valor VARCHAR(45)
);
-- Tabela de relacionamento entre OS e referencia
CREATE TABLE OS_referencia ( 
  OS_idOS INT,
  OS_Referencia INT,
  PRIMARY KEY (OS_idOS,OS_Referencia),
  FOREIGN KEY (OS_idOS) REFERENCES OS(idOS),
  FOREIGN KEY (OS_Referencia) REFERENCES referencia(idReferencia)
);