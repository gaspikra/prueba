CREATE SCHEMA hoteles;
USE hoteles;
CREATE TABLE inquilino(
id int NOT NULL AUTO_INCREMENT,
nombre varchar(30) NOT NULL,
apellido varchar(35) NOT NULL,
dni int NOT NULL,
cant_acomp int NOT NULL,
PRIMARY KEY(id)
);
CREATE TABLE habitaciones(
id int NOT NULL AUTO_INCREMENT,
numero_hab int NOT NULL,
nombre varchar(30) NOT NULL,
capacidad int NOT NULL,
estado varchar(9) NOT NULL,
precio int NOT NULL,
PRIMARY KEY(id)
);
CREATE TABLE estadia(
arribo DATE NOT NULL,
retiro DATE NOT NULL,
comidas_diarias int NOT NULL,
id int NOT NULL AUTO_INCREMENT,
nro_hab int NOT NULL,
estado varchar(9) NOT NULL,
PRIMARY KEY(id)
);
CREATE TABLE datos_bancario(
metodopago varchar(20) NOT NULL,
entidad varchar(30),
tipo_factura varchar(20),
id int NOT NULL AUTO_INCREMENT,
PRIMARY KEY(id)
);
ALTER TABLE inquilino
ADD FOREIGN KEY (id) REFERENCES habitaciones(id);
ALTER TABLE estadia
ADD FOREIGN KEY (id) REFERENCES datos_bancario(id);
ALTER TABLE inquilino
ADD FOREIGN KEY (id) REFERENCES datos_bancario(id);
ALTER TABLE habitaciones
ADD FOREIGN KEY(id) REFERENCES estadia(id);