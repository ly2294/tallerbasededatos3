# mysql -u root -p
create user 'administrador'@'localhost' identified by '123456';
create database universidad;
GRANT ALL PRIVILEGES ON universidad.* TO 'administrador'@'localhost';
create user 'creador'@'localhost' identified by '123456';
GRANT create ON universidad.* TO 'creador'@'localhost';
use universidad;
create table alumnos(
	Documento integer unsigned primary key not null,
	Nombre varchar(200) not null,
	Direccion varchar(200) not null,
	Fnac varchar(200) not null,
	Foto text, 
	Grupo varchar(10) not null,
	Curso varchar(200)not null
);
insert into alumnos (Documento,Nombre,Direccion,Fnac,Foto,Grupo,Curso)
	values("123456","Mariana Rojas","Calle 10 Mz 4 A 16","01-Julio-1999","MR","7A","Contabilidad"),
	("123457","Matias Velez","Calle 20 # 22-92","12-Octubre-1997","MV","4T","Salud Ocupacional"),
	("123498","Nicol Bernal","Calle 64 # 22-31 Mz 4","04-Enero-1998","NB","5L","Diseño Grafico"),
	("123093","Marcela Ocampo","Cra 4 L 4-55","20-Julio-1999","MO","6M","Medicina"),
	("199234","Julia Dosantos","Cra 5 Z Mz 7 Cs 25","30-Diciembre-1998","JD","1H","Idioma Extranjero"),
	("234567","Pablo Agudelo","Calle 10 Cra 4 20-25","04-Agosto-1997","PA","9L","Programacion");
create table Asignaturas(
	IdMateria integer unsigned primary key not null,
	Nombre varchar(200) not null,
	IdPrograma integer unsigned unique not null,
	IdProfesor integer unsigned unique not null
);
create table Asignatura(
	NombreAsignatura varchar(200) not null,
	Codigo integer unsigned primary key not null,
	Ciclo varchar(20) not null
);
insert into Asignatura (NombreAsignatura,Codigo,Ciclo)
	values("Quimica","1345","5K"),
	("Fisica","1890","6L"),
	("Algebra","1990","2M");
alter table Asignatura add Fecha varchar(100);
exit;
