
-- Creacion tabla en esquema jarvis
create table jarvis.CIB_CLIENTES
(ID int auto_increment auto_increment key,
NOMBRE varchar(25),
PAIS varchar(25),
CATEGORIA varchar(25),
NUM_VENTA int
);

-- consultar tabla
select * from jarvis.CIB_CLIENTES cc;

-- alterar la tabla incorporando columna
alter table CIB_CLIENTES 
ADD TELEFONO INT;

-- alterar tabla incorporando columna
alter table CIB_CLIENTES 
add CATEGORIA varchar(25);

-- alterar tabla incorporando columna flag
alter table CIB_CLIENTES 
add BORRADO boolean;

-- alterar tabla borrando columna
ALTER TABLE CIB_CLIENTES 
DROP COLUMN NUM_VENTA
;

-- borrar tabla
drop table jarvis.CIB_CLIENTES; 

-- alterar tabla modificando tipo de columna ya existe
ALTER TABLE jarvis.CIB_CLIENTES 
MODIFY COLUMN TELEFONO VARCHAR(15)
;


-- ####################### -- 
-- incorporar datos a la tabla
insert into jarvis.CIB_CLIENTES 
(NOMBRE, PAIS, CATEGORIA, TELEFONO) values
('CARLA ITURRIAGA', 'CHILE', 'PREMIUM', '+56912345678'),
('PEPITA PEREZ', 'CHILE', 'VIP', '+56987654312');

-- borrar todos los registros de una tabla
delete from jarvis.CIB_CLIENTES;

-- actualizar datos de un registro
UPDATE jarvis.CIB_CLIENTES 
set BORRADO = FALSE;

UPDATE jarvis.CIB_CLIENTES 
set BORRADO = TRUE
where nombre like '%PEPITA%';

-- Consultar y revisar datos
SELECT * FROM jarvis.CIB_CLIENTES cc 
WHERE BORRADO = TRUE
OR BORRADO = FALSE;

