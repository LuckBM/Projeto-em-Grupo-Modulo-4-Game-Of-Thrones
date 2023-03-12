create database projeto_grupom4;
use projeto_grupom4;
#Atualizacao 11-03-23 17:34 Emerson

create table personagens (
id_personagens int not null primary key  auto_increment,
nome varchar(300)
);
create table casas (
id_casas int not null primary key  auto_increment,
nome varchar(100),
id_regiao int not null
);
create table regiao (
id_regiao int not null primary key  auto_increment,
nome varchar(100)
);
create table episodios (
id_episodios int not null primary key  auto_increment,
titulo varchar(500),
id_criticos int not null,
id_usuarios int not null,
id_personagens int not null,
id_temporada int not null,
id_tempovisualizacao int not null

);
create table duracao (
id_duracao int not null primary key  auto_increment,
minutos varchar(5),
id_episodios int not null,
id_temporada int not null
);
create table temporada (
id_temporada int not null primary key  auto_increment,
nome varchar(20)
);
create table criticos (
id_criticos int not null primary key  auto_increment,
notas_criticos varchar(2) default null
);
create table usuarios (
id_usuarios int not null primary key  auto_increment,
notas_usuarios varchar(2) default null
);
create table tempovisualizacao(
id_tempovisualizacao int  not null primary key  auto_increment,
tempo varchar (20)
);

#comandos FK
alter table casas 
ADD CONSTRAINT esta FOREIGN KEY (id_regiao) REFERENCES regiao (id_regiao);
alter table episodios
ADD CONSTRAINT avaliam FOREIGN KEY (id_criticos) REFERENCES criticos (id_criticos);
alter table episodios
ADD CONSTRAINT notas FOREIGN KEY (id_usuarios) REFERENCES usuarios (id_usuarios);
alter table episodios
ADD CONSTRAINT participam FOREIGN KEY (id_personagens) REFERENCES personagens (id_personagens);
alter table duracao
ADD CONSTRAINT paraum foreign key (id_episodios) references episodios (id_episodios);
alter table duracao
ADD CONSTRAINT tempo foreign key (id_temporada) references temporada (id_temporada);
alter table episodios
ADD CONSTRAINT tem FOREIGN KEY (id_temporada) REFERENCES temporada (id_temporada);
alter table episodios
ADD CONSTRAINT tempovisu FOREIGN KEY (id_tempovisualizacao) REFERENCES tempovisualizacao (id_tempovisualizacao);

#comandos Insert
insert into personagens (id_personagens,nome)
values (1,'Grand Maester Picelle' );
insert into personagens (id_personagens,nome)
values (2,'Eddison Tollett' );
insert into personagens (id_personagens,nome)
values (3,'Podrick Payne' );
insert into personagens (id_personagens,nome)
values (4,'Missandei' );
insert into personagens (id_personagens,nome)
values (5,'Bran Stark' );
insert into criticos (id_criticos,notas_criticos)
values (1,'26' );
insert into criticos (id_criticos,notas_criticos)
values (2,'28' );
insert into criticos (id_criticos,notas_criticos)
values (3,'23' );
insert into criticos (id_criticos,notas_criticos)
values (4,'26' );
insert into criticos (id_criticos,notas_criticos)
values (5,'26' );
insert into regiao (id_regiao,nome)
values (1,'North' );
insert into regiao (id_regiao,nome)
values (2,'Riverlands' );
insert into regiao (id_regiao,nome)
values (3,'Vale of Arryn' );
insert into regiao (id_regiao,nome)
values (4,'Westerlands' );
insert into regiao (id_regiao,nome)
values (5,'Iron Islands' );
insert into casas (id_casas,nome,id_regiao)
values (1,'Amber','1' );
insert into casas (id_casas,nome,id_regiao)
values (2,'Baelish of Harrenhal','2' );
insert into casas (id_casas,nome,id_regiao)
values (3,'Arryn of Gulltown','3' );
insert into casas (id_casas,nome,id_regiao)
values (4,'Algood','4' );
insert into casas (id_casas,nome,id_regiao)
values (5,'Andrik of Southshield (Shield Islands)','5' );
insert into temporada (id_temporada,nome)
values (1,'temporada 1' );
insert into temporada (id_temporada,nome)
values (2,'temporada 2' );
insert into temporada (id_temporada,nome)
values (3,'temporada 3' );
insert into temporada (id_temporada,nome)
values (4,'temporada 4' );
insert into temporada (id_temporada,nome)
values (5,'temporada 5' );
insert into usuarios (id_usuarios,notas_usuarios)
values (1,'30' );
insert into usuarios (id_usuarios,notas_usuarios)
values (2,'27' );
insert into usuarios (id_usuarios,notas_usuarios)
values (3,'25' );
insert into usuarios (id_usuarios,notas_usuarios)
values (4,'22' );
insert into usuarios (id_usuarios,notas_usuarios)
values (5,'24' );
insert into tempovisualizacao (id_tempovisualizacao,tempo)
values (1,'25 minutos' );
insert into tempovisualizacao (id_tempovisualizacao,tempo)
values (2,'32 minutos' );
insert into tempovisualizacao (id_tempovisualizacao,tempo)
values (3,'30 minutos' );
insert into tempovisualizacao (id_tempovisualizacao,tempo)
values (4,'56 minutos' );
insert into tempovisualizacao (id_tempovisualizacao,tempo)
values (5,'52 minutos' );
insert into episodios (id_episodios,titulo,id_criticos,id_usuarios,id_personagens,id_temporada,id_tempovisualizacao)
values (1,'Episodio 1 Winter Is Coming','1','1','1','1','1');
insert into episodios (id_episodios,titulo,id_criticos,id_usuarios,id_personagens,id_temporada,id_tempovisualizacao)
values (2,'Episodio 11 The North Remembers','2','2','2','2','2');
insert into episodios (id_episodios,titulo,id_criticos,id_usuarios,id_personagens,id_temporada,id_tempovisualizacao)
values (3,'Episodio 18 The Prince of Winterfells','3','3','3','3','3');
insert into episodios (id_episodios,titulo,id_criticos,id_usuarios,id_personagens,id_temporada,id_tempovisualizacao)
values (4,'Episodio 31 Two Swords','4','4','4','3','4');
insert into episodios (id_episodios,titulo,id_criticos,id_usuarios,id_personagens,id_temporada,id_tempovisualizacao)
values (5,'Episodio 41 The Wars to Come','5','5','5','5','5');
insert into duracao (id_duracao,minutos,id_episodios,id_temporada)
values (1,'63 ','1','1');
insert into duracao (id_duracao,minutos,id_episodios,id_temporada)
values (2,'57 ','2','2');
insert into duracao (id_duracao,minutos,id_episodios,id_temporada)
values (3,'54 ','3','3');
insert into duracao (id_duracao,minutos,id_episodios,id_temporada)
values (4,'58 ','4','4');
insert into duracao (id_duracao,minutos,id_episodios,id_temporada)
values (5,'53 ','5','5');
