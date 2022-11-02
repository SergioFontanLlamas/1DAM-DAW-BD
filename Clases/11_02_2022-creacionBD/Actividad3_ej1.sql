create database Mario;

use Mario;

create table if not exists planta(
	id int not null auto_increment,
    superficie varchar (45),
    proceso varchar (45),
    color varchar (45),
    primary key (id)
);

create table maquina (
	id int not null auto_increment,
    numero varchar (45),
    marca varchar (45),
    modelo varchar (45),
    planta_id int,
    primary key (id),
    foreign key (planta_id) references planta (id)
);

create table if not exists tecnico(
	id int not null auto_increment,
    dni varchar (8),
    telefono varchar (9),
    nyap varchar (45),
    fecNac DATE,
    primary key (id),
    unique (dni)
);

create table if not exists maquina_has_tecnico(
	maquina_id int,
    tecnico_id int,
    turno varchar(25),
    periodo DATE,
    foreign key (maquina_id) references maquina (id),
    foreign key (tecnico_id) references tecnico (id)
);

create table if not exists maquina_has_maquina(
	maquina_antigua_id int,
    maquina_vieja_id int,
    foreign key (maquina_antigua_id) references maquina (id),
    foreign key (maquina_vieja_id) references maquina (id)
);