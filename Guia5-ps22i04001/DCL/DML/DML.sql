
insert into roles(rol) values
	('SysAdmin'), -- 1
	('Gerente'),-- 2
	('Contador'), -- 3
    ('RRHH'), -- 4
    ('Cajero'), -- 5
    ('Supervisor'); -- 6

insert into opciones(opcion) values
	('Gestionar cuentas'), -- 1
	('Gestionar  despartamentos'), -- 2
	('Gestionar  municipios'), -- 3
	('Gestionar  distritos'), -- 4
	('Gestionar  direcciones'), -- 5
	('Gestionar  cargos'), -- 6
	('Gestionar  empleados'), -- 7
	('Gestionar  clientes'), -- 8
	('Gestionar  ingredientes'), -- 9
	('Gestionar  inventarios'), -- 10
	('Gestionar  almacenamientos'), -- 11
	('Gestionar  compraIngredientes'), -- 12
	('Gestionar  detallesCompraI'), -- 13
	('Gestionar  proveedores'), -- 14
	('Gestionar  compraProductos'), -- 15
	('Gestionar  detalleCompraP'), -- 16
	('Gestionar  ventaProductos'), -- 17
	('Gestionar  detallesVentasP'), -- 18
	('Gestionar  unidadMedidas'), -- 19
	('Gestionar  productos'), -- 20
	('Gestionar  categorias'), -- 21
	('Gestionar  menus'), -- 22
	('Gestionar  productosFinal'), -- 23
	('Gestionar  recetas'), -- 24
	('Gestionar  ventasIngredientes'), -- 25
	('Gestionar  detallesVentaI'), -- 26
	('Gestionar  pedidos'), -- 27
	('Gestionar  detallesPedidos'); -- 28

insert into asignacionRolesOpciones(idRol, idOpcion) values

	-- SysAdmin
	(1,1), (1,2), (1,3), (1,4), (1,5), (1,6), (1,7), (1,8), (1,9), (1,10), 
	(1,11), (1,12), (1,13), (1,14), (1,15), (1,16), (1,17), (1,18), (1,19), (1,20), 
	(1,21), (1,22), (1,23), (1,24), (1,25), (1,26), (1,27), (1,28),
    
	 -- Gerente
	 (2, 8), -- Clientes
     (2, 17), -- ventaProductos
     (2, 18), -- detallesVentasP
	 (2, 25), -- ventasIngredientes
	 (2, 26), -- detallesVentaI
	 (2, 27), -- pedidos 
	 (2, 28), -- detallesPedidos
     (2, 10), -- Inventario
     (2,12), -- compraIngrediente
     (2,16), -- detalleCompraP
     (2, 6), -- cargos
     (2, 7), -- empleados
	 (2, 12), -- compraIngredientes
	 (2, 13), -- detallesCompraI
	 (2, 15), -- compraProductos
	 (2, 16), -- detalleCompraP
	 (2, 17), -- ventaProductos
	 (2, 18), -- detallesVentasP
	 (2, 25), -- ventasIngredientes
	 (2, 26), -- detallesVentaI
	 (2, 27), -- pedidos 
	 (2, 28), -- detallesPedidos
     
	 -- Contador
	 (3, 12), -- compraIngredientes
	 (3, 13), -- detallesCompraI
	 (3, 15), -- compraProductos
	 (3, 16), -- detalleCompraP
	 (3, 17), -- ventaProductos
	 (3, 18), -- detallesVentasP
	 (3, 25), -- ventasIngredientes
	 (3, 26), -- detallesVentaI
	 (3, 27), -- pedidos 
	 (3, 28), -- detallesPedidos
	 
	 -- RRHH
	 (4, 6), -- cargos
     (4, 7), -- empleados
     
     -- Cajero
     (5, 8), -- Clientes
     (5, 17), -- ventaProductos
     (5, 18), -- detallesVentasP
	 (5, 25), -- ventasIngredientes
	 (5, 26), -- detallesVentaI
	 (5, 27), -- pedidos 
	 (5, 28), -- detallesPedidos
     
     -- Supervisor
     (6, 10), -- Inventario
     (6,12), -- compraIngrediente
     (6,16); -- detalleCompraP
     
     
     