create database ventaEntradas;
use ventaEntradas;
create table clientes(
idCliente int primary key,
nombre varchar(50),
dni varchar(10),
telefono varchar(10)
);
create table locales (
idLocal int primary key ,
nombre varchar(50),
direccion varchar(50),
telefono varchar(10),
aforo int 
);
create table espectaculo(
idEspectaculo int primary key,
nombre varchar(50),
precioEntrada int
);
create table programacion(
idprogramacion int primary key,
idLocal int,
idEspectaculo int,
fechaComienzo date,
fechaFin date,
foreign key (idLocal) references locales(idLocal),
foreign key (idEspectaculo) references espectaculo(idEspectaculo)

);

create table compras(
idCompras int primary key ,
idCliente int,
idLocal int,
idEspectaculo int,
cantidadEntradas int,
fechaCompra date,
foreign key (idCliente) references clientes(idCliente),
foreign key (idLocal) references locales(idLocal),
foreign key (idEspectaculo) references espectaculo(idEspectaculo)

);



INSERT INTO clientes (idCliente, nombre, dni, telefono) VALUES
(1,'Danny','0102030405','0991111111'),
(2,'Juan','0102030406','0992222222');

-- TABLA LOCALES

INSERT INTO locales (idLocal, nombre, direccion, telefono, aforo) VALUES
(1,'Mall del Alto','calle y','072111111',500),
(2,'Coliceo Jeffersson Perez','calle x','072222222',1500);

-- TABLA ESPECTACULO

INSERT INTO espectaculo(idEspectaculo, nombre, precioEntrada) VALUES
(1,'concierto',30),
(2,'Partido',20);

-- TABLA PROGRAMACION

INSERT INTO programacion (idprogramacion, idLocal, idEspectaculo, fechaComienzo, fechaFin)VALUES
(1,1,2,'2026-06-01','2026-06-10'),
(2,2,1,'2026-06-05','2026-06-15');

-- TABLA COMPRAS

INSERT INTO compras (idCompras, idCliente, idLocal, idEspectaculo, cantidadEntradas, fechaCompra) VALUES
(1,1,2,1,2,'2026-06-01'),
(2,2,1,2,4,'2026-06-02');


-- CONSULTAS
-- Listar todos los clientes registrados 
SELECT * FROM clientes;

-- ver la cartelera completa de espectaculos
select  * from espectaculo;

-- Buscar los datos y capacidad de un local especifico por su nombre 

select * from locales where nombre = 'Mall del Alto';

-- mostrar las compras realizadas por un cliente especifico
select compras * 

-- Listar los espectáculos que cuesten menos de un valor determinado

-- Saber en qué locales y en qué fechas se presentará un espectáculo concreto

--  Calcular el total de entradas que ha comprado cada cliente

-- Ver la recaudación total de dinero por cada local

--  Consultar cuántas entradas se han vendido para un espectáculo en una fecha específica

-- Mostrar los espectáculos que están activos en esta fecha actual 





