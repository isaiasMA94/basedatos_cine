USE Pelicula;

CREATE TABLE Director(
idDirector char(05),
nombre varchar(15),
PRIMARY KEY(idDirector)
);

CREATE TABLE Pelicula(
idPeli char(10),
idDirector char(05),
Titulo varchar(30) not null,
fecha date not null,
nacionalidad varchar(15) not null,
PRIMARY KEY(idPeli),
FOREIGN KEY(idDirector) REFERENCES Director(idDirector)
);

CREATE TABLE Actor(
idActor char(05),
nombre varchar (15) not null,
personaje varchar (15) not null,
TipodeActor varchar(15),
PRIMARY KEY(idActor)
);

CREATE TABLE Pelicula_Actor(
idPeli char(10),
idActor char(10),
FOREIGN KEY(idPeli) REFERENCES Pelicula(idPeli),
FOREIGN KEY(idActor) REFERENCES Actor(idActor)
);

CREATE TABLE Socio(
idSocio char(10),
es_avalado bit not null,
PRIMARY KEY(idSocio)
);

CREATE TABLE Ejemplar(
num_ejemplar char(05),
idPeli char(10),
est_conservacion varchar(05) not null,
PRIMARY KEY(num_ejemplar),
FOREIGN KEY(idPeli) REFERENCES Pelicula(idPeli)
);

CREATE TABLE Socio_Ejemplar(
idSocio char(10),
num_ejemplar char(05),
fecha_inicio date not null,
fecha_dev date not null,
FOREIGN KEY(idSocio) references Socio(idSocio),
FOREIGN KEY(num_ejemplar) references Ejemplar(num_ejemplar)
);

CREATE TABLE Productora(
id_productora char(05),
nombre varchar(15),
tiempo date not null,
PRIMARY KEY (id_productora)
);

CREATE TABLE Pelicula_Productora(
idPeli char(10),
id_productora char(05),
FOREIGN KEY(idPeli) REFERENCES Pelicula(idPeli),
FOREIGN KEY(id_productora) REFERENCES Productora(id_productora)
);


INSERT INTO Director VALUES('1', 'maycol');
INSERT INTO Director VALUES('2', 'juancarlos');
INSERT INTO Director VALUES('4', 'victor'),('5', 'miguel');
INSERT INTO Pelicula VALUES('1', '1', 'transformers', '2014-01-24', 'estados unidos');
INSERT INTO Ejemplar VALUES('1', '1', 'bueno');
INSERT INTO Actor VALUES('01', 'brad pitt', 'jack', 'romantico');
INSERT INTO Productora VALUES('01', 'universal', '2014-01-02');

SELECT*FROM Director;
SELECT*FROM Pelicula;
SELECT*FROM Ejemplar;
SELECT*FROM Actor;
SELECT*FROM Productora;
SELECT*FROM Productora;


 
