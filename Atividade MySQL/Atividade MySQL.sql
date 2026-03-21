Drop database if exists empresa_marcos;
create database empresa_Marcos;

use empresa_Marcos;
create table Funcionario (
numero integer not null,
nomeFun varchar(255) not null,
rua varchar(200) not null,
nro varchar(10) not null,
bairo varchar(100) not null,
cidade varchar(100) not null,
estado varchar(100) not null,
cep varchar(100) not null,
salario float not null,
numeroSupervisor integer not null,
primary key (numero),
foreign key (numeroSupervisor) references funcionario(numero)
);


create table departamento (
numero integer not null,
nomeDep varchar(255) not null,
numeroFuncGer integer not null,
dataIniGer date not null,
primary key (numero),
foreign key (numeroFuncGer) references Funcionario (numero)
);

create table projetos (
numero integer not null,
nomeProj varchar(255) not null,
numeroDepto integer not null,
primary key (numero),
foreign key (numeroDepto) references Departamento (numero)
);

create table dependente (
numeroFunc integer not null,
nomeDep varchar(255) not null,
dataNasc varchar(10) not null,
parentesco varchar(30) not null,
primary key (numeroFunc , Nomedep),
foreign key (numeroFunc) references Funcionario (numero)
);
create table LocalDep (
numeroDepto integer not null,
localizacao varchar (200) not null,
primary key(numeroDepto, localizacao),
foreign key (numeroDepto) references departamento(numero)
);

create table FuncionarioProjo (
numeroFunc integer not null,
numeroProj integer not null,
horas time,
primary key (numeroFunc),
foreign key (numeroFunc) references funcionario(numero),
foreign key (numeroProj) references projetos(numero)
);
