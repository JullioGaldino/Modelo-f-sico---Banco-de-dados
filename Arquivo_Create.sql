create database if not exists ReciclaTech_BD;

use ReciclaTech_BD;

create table Funcionario(
	userId int not null auto_increment,
    Nome varchar(30),
    Email varchar(40),
    Senha varchar(20),
    primary key(userID)
);
create table Saida(
	saidaId int not null auto_increment,
    userId int,
    primary key(saidaId),
    foreign key(userId) references funcionario(userId)
);
create table Registro_de_Saida(
	registroId int not null auto_increment,
    Valor float,
    Forma_de_Pg varchar(20),
    Desc_produto varchar(150),
    primary key(registroID)
);
create table Historico_de_Saida(
	userId int,
    registroId int,
    Desc_produto varchar(150),
    foreign key(registroId) references Registro_de_Saida(registroId),
    foreign key(userId) references funcionario(userId)
);
create table Caixa(
	userID int,
    registroID int,
    saldoID  int not null auto_increment,
    saldoTotal float,
    valor float,
    responsavel varchar(20),
    metodoPg varchar(20),
    primary key(saldoID),
    foreign key (userId) references funcionario(userId),
    foreign key (registroId) references Registro_de_Saida(registroId)
);

create table produtos (
	produtoId int not null auto_increment,
    nomeProduto varchar(20),
    primary key(produtoId)
    
);