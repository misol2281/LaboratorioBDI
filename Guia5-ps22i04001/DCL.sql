use pasteleriaJPan;

-- CREACION DE ROLES
create role if not exists 'SysAdmin';
create role if not exists 'Gerente';
create role if not exists 'Contador';
create role if not exists 'RRHH';
create role if not exists 'Cajero';
create role if not exists 'Supervisor';

-- Asignacio de privilegios -> roles
-- SysAdmin
grant all on pasteleriajpan.* to 'SysAdmin';

-- Gerente
grant all on pasteleriajpan.* to 'Gerente';

-- Contador
grant select on pasteleriajpan.compraingredientes to Contador;
grant select on pasteleriajpan.detallescomprai to Contador;
grant select on pasteleriajpan.compraproductos to Contador;
grant select on pasteleriajpan.detallecomprap to Contador;
grant select on pasteleriajpan.ventaproductos to Contador;
grant select on pasteleriajpan.detallesventasp to Contador;
grant select on pasteleriajpan.ventasingredientes to Contador;
grant select on pasteleriajpan.detallesventai to Contador;
grant select on pasteleriajpan.pedidos to Contador;
grant select on pasteleriajpan.detallespedidos to Contador;


-- RRHH
grant select, insert, update, delete on pasteleriajpan.empleados to RRHH;
grant select, insert, update, delete on pasteleriajpan.cargos to RRHH;
grant select, insert, update, delete on pasteleriajpan.direcciones to RRHH;
grant select on pasteleriajpan.departamentos to RRHH;
grant select on pasteleriajpan.distritos to RRHH;
grant select on pasteleriajpan.municipios to RRHH;

-- Cajero
grant select, insert, update, delete on pasteleriajpan.clientes to Cajero;
grant select, insert, update on pasteleriajpan.ventaproductos to Cajero;
grant select, insert, update on pasteleriajpan.detallesventasp to Cajero;
grant select, insert, update on pasteleriajpan.ventasingredientes to Cajero;
grant select, insert, update on pasteleriajpan.detallesventai to Cajero;
grant select, insert, update on pasteleriajpan.pedidos to Cajero;
grant select, insert, update on pasteleriajpan.detallespedidos to Cajero;


-- Supervisor
grant select, insert, update, delete on pasteleriajpan.inventarios to Supervisor;
grant select, insert, update, delete on pasteleriajpan.compraingredientes to Supervisor;
grant select, insert, update, delete on pasteleriajpan.detallescomprai to Supervisor;
grant select, insert, update, delete on pasteleriajpan.detallecomprap to Supervisor;

-- Creacion de usuarios

-- SysAdmin
create user if not exists 'admin_DamianBeltran'@'localhost'
identified with SHA256_PASSWORD by '10111'
password expire interval 180 day;

-- Gerente
create user if not exists 'grn_JuanPerez'@'localhost'
identified with SHA256_PASSWORD by '71856'
password expire interval 180 day;

-- Contador
create user if not exists 'Cont_AndreaLopez'@'localhost'
identified with SHA256_PASSWORD by '81502'
password expire interval 180 day;

-- RRHH
create user if not exists 'rrhh_CristianArias'@'localhost'
identified with SHA256_PASSWORD by '12345'
password expire interval 180 day;

-- Cajero1
create user if not exists 'cj_MariaGomez'@'localhost'
identified with SHA256_PASSWORD by '43227'
password expire interval 180 day;

-- Supervisor
create user if not exists 'sup_CesarMor'@'localhost'
identified with SHA256_PASSWORD by '56789'
password expire interval 180 day;

-- CONSULTAR ROLES Y USUARIOS 
SELECT * FROM mysql.user;

-- VINCULAR USUARIOS A ROLES
grant SysAdmin to 'admin_DamianBeltran'@'localhost';
grant Gerente to 'grn_JuanPerez'@'localhost';
grant Contador to 'Cont_AndreaLopez'@'localhost';
grant RRHH to 'rrhh_CristianArias'@'localhost';
grant Cajero to 'cj_MariaGomez'@'localhost';
grant Supervisor to 'sup_CesarMor'@'localhost';

-- CONSULTAR PERMISOS POR ROL Y USUARIOS 
-- ROLES 
show grants for 'SysAdmin';
show grants for 'Gerente';
show grants for 'Contador';
show grants for 'RRHH';
show grants for 'Cajero';
show grants for 'Supervisor';

-- USUARIOS
show grants for 'admin_DamianBeltran'@'localhost';
show grants for 'grn_JuanPerez'@'localhost';
show grants for 'Cont_AndreaLopez'@'localhost';
show grants for 'rrhh_CristianArias'@'localhost';
show grants for 'cj_MariaGomez'@'localhost';
show grants for 'sup_CesarMor'@'localhost';

show tables;