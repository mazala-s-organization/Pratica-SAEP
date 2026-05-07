create database farmacia_hospital;

create table medicamento(
	id serial primary key,
	nome varchar (100) not null,
	dosagem varchar (30) not null,
	lote varchar (30) not null,
	validade date not null,
	armazenamento_id int, foreign key (armazenamento_id) references armazenamento(id),
	formaAdm_id int, foreign key (formaAdm_id) references formaAdm(id)
	);

create table armazenamento(
	id serial primary key,
	refrigeracao varchar (30) not null,
	control_temp varchar (30) not null
);

create table formaAdm(
	id serial primary key,
	comprimido varchar (50) not null,
	liquido varchar (50) not null,
	injetavel varchar (50) not null
);