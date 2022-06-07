CREATE DATABASE appsalon;

CREATE TABLE servicios (
	Id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    precio DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
    );


INSERT INTO servicios(nombre, precio) values 
    
CREATE TABLE reservaciones(
	Id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    hora TIME DEFAULT NULL,
    fecha DATE DEFAULT NULL,
	servicios  VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
    );
    
    
CREATE TABLE clientes(
	id INT(11) NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(60) NOT NULL,
    apellido VARCHAR(60) NOT NULL,
    telefono VARCHAR(10) NULL,
	email  VARCHAR(30) NOT NULL UNIQUE,
    PRIMARY KEY(id)
    );
    
CREATE TABLE citas(
	id INT(11) NOT NULL AUTO_INCREMENT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    clienteId INT(11) NOT NULL,
    PRIMARY KEY(id),
    KEY clienteId (clienteId),
    CONSTRAINT cliente_FK
    FOREIGN KEY (clienteId)
    REFERENCES clientes (id)
    );
    

SELECT * FROM citas
INNER JOIN clientes ON clientes.id = citas.clienteId


-- creacion de tabla pivote 

CREATE TABLE citasServicios(
	id INT(11) AUTO_INCREMENT,
    citaId INT(11) NOT NULL,
    servicioId INT(11) NOT NULL,
    PRIMARY KEY(id),
    KEY citaId (citaId),
    CONSTRAINT citas_FK
    FOREIGN KEY (citaId)
    REFERENCES citas (id),
    KEY servicioId (servicioId),
    CONSTRAINT servicios_FK
    FOREIGN KEY (servicioId)
    REFERENCES servicios (id)
    );
    
    
select * from citasservicios
	left join citas on citas.id = citasservicios.citaId
	left join servicios on servicios.id = citasservicios.servicioId;

-- notas


