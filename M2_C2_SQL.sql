-- M2_C2_SQL

use jarvis;

create table CIB_CLIENTES
(ID int auto_increment auto_increment key,
NOMBRE varchar(25),
PAIS varchar(25),
CATEGORIA varchar(25),
NUM_VENTA int
)
;

select * from jarvis.CIB_CLIENTES cc 
;

alter table CIB_CLIENTES 
ADD TELEFONO INT
;

alter table CIB_CLIENTES 
add CATEGORIA varchar(25)
;

ALTER TABLE CIB_CLIENTES 
DROP COLUMN NUM_VENTA
;

ALTER TABLE jarvis.CIB_CLIENTES 
MODIFY COLUMN TELEFONO VARCHAR(15)
;

insert into jarvis.CIB_CLIENTES 
(NOMBRE, PAIS, CATEGORIA) values
('CARLA ITURRIAGA', 'CHILE', 'PREMIUM')
;