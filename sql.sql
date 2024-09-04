create database redes_sociais;

use redes_sociais;

create table usuarios (
id int not null auto_increment primary key,
nome varchar(100) not null,
email varchar (255) not null unique,
data_criacao date not null
);

create table postagens (
id int not null auto_increment primary key,
usuarios_id int not null,
texto varchar(255),
data_publicacao date not null,
imagens varchar (255),
foreign key (usuarios_id) references usuarios (id)
);

create table comentarios(
id int not null auto_increment primary key,
usuarios_id int not null,
postagens_id int not null,
texto varchar(255),
data_criacao date not null,
postagens_usuarios_id int not null,
foreign key (usuarios_id) references usuarios (id),
foreign key (postagens_id) references postagens (id)
);




create table curtidas(
usuarios_id int not null,
postagens_id int not null,
primary key (usuarios_id, postagens_id)
);


insert into usuarios (nome, email, data_criacao) values ('Ana Souza', 'ana@senai.com', '2024/09/04');
insert into usuarios (nome, email, data_criacao) values ('Victor Hugo', 'dadao@senai.com', '2024/09/04');
insert into usuarios (nome, email, data_criacao) values ('Mariana', 'mariana@senai.com', '2024/09/04');
insert into usuarios (nome, email, data_criacao) values ('lionel Messi', 'Messi@senai.com', '2024/09/04');
insert into usuarios (nome, email, data_criacao) values ('jobson', 'job@senai.com', '2024/09/04');

select * from usuarios;

insert into postagens (texto, data_publicacao, imagens, usuarios_id) values ('Aula Senai', '2024/09/03', 'usuarios/aluno/imagens', 1);

