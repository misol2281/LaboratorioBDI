insert into departamentos (idDepartamento,departamento, pais)values
('SO', 'Sonsonate', 'El Salvador');

insert into municipios (idMunicipio,municipio, idDepartamento) values
('SON', 'Sonsonate Norte', 'SO'),
('SOC', 'Sonsonate Centro', 'SO'),
('SOE', 'Sonsonate Este', 'SO'),
('SOO', 'Sonsonate Oeste', 'SO');

insert into distritos (idDistrito,distrito, idMunicipio)values 
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO');
    
insert into direcciones (linea1, linea2, idDistrito, codigoPostal) values
('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
('Col La Frontera, Calle 5, #5G', 'Km 10', 'SOE04', '02113'), -- 5
('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SOE02', '02201'), -- 6
('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SON01', '01101'), -- 7
('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'SOE05', '02114'),-- 8
('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'SOC01', '01115'),-- 9
('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10
    
-- Tabla empleados
insert into empleados (nombresEmpleado, apellidosEmpleado, duiEmpleado, isssEmpleado, fechaNacEmpleado, telefonoEmpleado, correoEmpleado, idCargo, idDireccion) values
('Damian Alexander', 'Beltran Alas', '00000022-0', '989254321', '1998-10-10', '8248-8858', 'admin@japypan.com',1, 2),
('Juan Carlos', 'Pérez Alvarez', '00000001-0', '123456789', '1990-05-15', '7777-7777', 'juan.perez@japypan.com',2, 4),
('José Miguel', 'Hernández López', '01234567-8', '123456780', '1985-04-12', '7111-1234', 'miguel.hernandez@japypan.com',3, 5),
('María Fernanda', 'Pérez Rodriguez', '02345678-9', '234567890', '1990-07-23', '7222 2345', 'fernanda.perez@japypan.com',4,6),
('Ana Alexandra', 'Sánchez Acosta', '04567890-1', '456789012', '1992-12-05', '7444 4567', 'ana.sanchez@japypan.com',5,7),
('Isabel Margarita', 'Martínez Cuadra', '03456789-0', '345678901', '1998-09-14', '7333 3456', 'isabel.martinez@japypan.com',5,8),
('Carlos Fernando', 'Cruz Olivares', '05678901-2', '567890123', '1987-02-28', '7555 5678', 'carlos.cruz@japypan.com',6,9),
('Cristian Alejandro', 'Arias Sandoval', '00000008-0', '987654321', '1995-10-20', '8888-8000', 'cristian.arias@japypan.com',7,10),
('Andrea Michelle', 'López Torres', '00000007-0', '983254320', '1997-11-20', '1388-8458', 'andrealopez@japypan.com',8,1),
('Pablo David', 'Herrera Moran', '07890123-4', '789012345', '1986-06-07', '7777 7890', 'pablo.herrera@japypan.com',9,3),
('Sofía Valentina', 'Morales García', '06789012-3', '678901234', '1995-11-18', '7666 6789', 'sofia.morales@japypan.com',10,5),
('María Daniela', 'Gómez Ayala', '00000002-0', '987654320', '1992-10-20', '8888-8888', 'maria.gomez@japypan.com',11,3),
('Carlos Antonio', 'López Castro', '00000003-0', '456789123', '1988-12-30', '7815-1339', 'carlos.lopez@japypan.com',11,6),
('Cesar Manuel', 'Morales Lara', '06701234-5', '890133456', '1995-03-16', '7868 8001', 'cesar.mor@japypan.com',13,10),
('Laura Beatriz', 'Méndez Ortiz', '08901234-5', '890123456', '1993-03-15', '7888 8901', 'laura.mendez@japypan.com',5,1);

-- Tabla cargos
INSERT INTO cargos (idCargo, cargo) VALUES
(1,'sys admin'),
(2,'gerente'),
(3,'pastelero'),
(4,'repostero'),
(5,'mesero'),
(6,'ordenanza'),
(7,'contador'),
(8,'RRHH'),
(9,'Transportista'),
(10,'promotor'),
(11,'cajero'),
(12,'barista'),
(13, 'Supervisor');

-- Tabla clientes
INSERT INTO clientes (nombreCliente, telefonoCliente, correoCliente)
VALUES 
    ('Juan Pérez', '7777 7770', 'juan@example.com'),
    ('María Gómez', '88808080', 'maria@example.com'),
    ('Carlos López', '9999 9999', 'carlos@example.com'),
    ('Ana Ruiz', '7777 1234', 'ana@example.com'),
    ('Pedro Sánchez', '8888 5678', 'pedro@example.com'),
    ('Luisa Martínez', '9999 4321', 'luisa@example.com'),
    ('Miguel Fernández', '7777 8765', 'miguel@example.com'),
    ('Laura García', '8888 6789', 'laura@example.com'),
    ('Roberto Jiménez', '9999 9876', 'roberto@example.com'),
    ('Isabel Torres', '7777 5432', 'isabel@example.com');
    
INSERT INTO unidadMedidas (unidadMedida) VALUES
('gramos'),
('kilogramos'),
('mililitros'),
('litros'),
('unidad');

INSERT INTO categorias (categoria) VALUES
('Panadería'), -- 1
('Pastelería'),-- 2
('Repostería'),-- 3
('Bebidas');-- 4

-- Tabla almacenamientos
INSERT INTO almacenamientos (nombreAlmacenamiento, descripcion, ubicacion) VALUES
('Refrigerador', 'Refrigerador principal', 'Cocina'),
('Almacén seco', 'Almacén para ingredientes secos', 'Área de almacenamiento'),
('Congelador', 'Congelador grande', 'Cocina'),
('Estantería 1', 'Estantería para productos terminados', 'Área de ventas'),
('Estantería 2', 'Estantería para productos en exhibición', 'Área de ventas');

-- Tabla inventarios
INSERT INTO inventarios (idAlmacenamiento, stockActual, fechaActualizacion) VALUES
(1, 100, '2024-04-12'),
(2, 150, '2024-04-12'),
(3, 80, '2024-04-12'),
(4, 120, '2024-04-12'),
(5, 200, '2024-04-12');


-- Tabla ingredientes
INSERT INTO ingredientes(nombreIngrediente, idUnidadMedida, idCategoria, precioUnitario, fechaCaducidad, stockCritico, descripcionIngrediente, idInventario)
VALUES 
    ('Harina', 1, 1, 2.50, '2024-12-31', 50, 'Harina de trigo', 1),
    ('Azúcar', 1, 1, 1.75, '2024-12-31', 30, 'Azúcar blanca', 2),
    ('Huevos', 3, 1, 3.00, '2024-12-31', 20, 'Huevos frescos', 3),
    ('Levadura', 2, 1, 1.20, '2024-12-31', 10, 'Levadura seca', 4),
    ('Mantequilla', 1, 1, 2.00, '2024-12-31', 40, 'Mantequilla sin sal', 5),
    ('Chocolate', 4, 1, 5.50, '2025-06-30', 25, 'Chocolate negro para repostería', 1),
    ('Vainilla', 5, 1, 3.75, '2025-03-31', 15, 'Extracto de vainilla puro', 2),
    ('Crema de leche', 1, 1, 2.80, '2024-12-31', 30, 'Crema de leche para montar', 3), 
    ('Frutas frescas', 1, 1, 4.50, '2024-12-31', 20, 'Fresas, frambuesas, etc.', 4),
    ('Almendras', 1, 1, 6.00, '2025-06-30', 25, 'Almendras enteras', 5),
    ('Canela', 1, 1, 1.25, '2025-03-31', 10, 'Canela en polvo', 1), 
    ('Nueces', 1, 1, 7.50, '2025-06-30', 30, 'Nueces picadas', 2),
    ('Azúcar glass', 1, 1, 2.25, '2025-12-31', 20, 'Azúcar glass para decoración', 3);
    
-- Tabla proveedores
INSERT INTO proveedores (nombreProveedor, telefono1, telefono2, idDireccion) VALUES
('Distribuidora de Ingredientes S.A.', '123456789', '987654321', 1),
('Productos Frescos Ltda.', '987654321', NULL, 2),
('Insumos para Repostería y Pastelería', '555555555', '444444444', 3);

-- Tabla compra ingredientes
INSERT INTO compraIngredientes (fechaCompra, montoCompra, idProveedor) VALUES
('2024-04-10', 250.00, 1),
('2024-04-11', 180.50, 2),
('2024-04-12', 300.75, 3);

-- Tabla detallesCompraI
INSERT INTO detallesCompraI (idCompraI, idIngrediente, cantidadComprar, precioUnitario, subTotal) VALUES
(4, 14, 10, 2.50, 25.00),
(5, 15, 5, 3.00, 15.00),
(6, 16, 2, 4.50, 9.00),
(4, 17, 3, 2.00, 6.00),
(5, 18, 1, 6.00, 6.00),
(6, 19, 4, 3.75, 15.00);

INSERT INTO ventasIngredientes (IVA, descuento, montoTotal, fechaVenta, idEmpleado, idCliente) VALUES
(10.00, 2.50, 150.00, '2024-04-01 10:30:00', 15, 1),
(8.00, 1.20, 80.00, '2024-04-02 11:45:00', 16, 2),
(12.00, 3.00, 200.00, '2024-04-03 09:15:00', 17, 3),
(9.00, 1.80, 120.00, '2024-04-04 14:20:00', 18, 4),
(11.00, 2.20, 180.00, '2024-04-05 12:00:00', 19, 5);

INSERT INTO detallesVentaI (idVentaIngrediente, idIngrediente, cantidadVender, precioUnitario, subTotal) VALUES
(6, 101, 2, 5.00, 10.00),
(7, 102, 3, 3.50, 10.50),
(8, 103, 1, 8.00, 8.00),
(9, 104, 2, 4.50, 9.00),
(10, 105, 4, 2.50, 10.00);





INSERT INTO menus (idMenu, nombreMenu, descripcion)
VALUES
    (1, 'Menú Clásico', 'Postres populares.'),
    (2, 'Menú Especial', 'Delicias de nuestros chefs.'),
    (3, 'Menú Degustación', 'Variedad en pequeñas porciones.'),
    (4, 'Menú Temporada', 'Postres de temporada.'),
    (5, 'Menú Chocolate', 'Postres con chocolate.'),
    (6, 'Menú Frutas Frescas', 'Postres con frutas frescas.'),
    (7, 'Menú Ligero', 'Postres bajos en calorías.'),
    (8, 'Menú Gourmet', 'Postres elegantes.'),
    (9, 'Menú Veganos', 'Postres libres de productos de origen animal.'),
    (10, 'Menú Sorpresa', 'Selección especial de chefs.');
    
INSERT INTO productos (nombreProducto, precioUnitario, fechaCaducidad, stockCritico, descripcionProducto, idCategoria, idUnidadMedida, idMenu, idInventario) VALUES
('Pastel de Chocolate', 15.99, '2024-06-30', 10, 'Delicioso pastel de chocolate', 2, 1, 1, 1),
('Tarta de Frutas', 18.50, '2024-06-30', 10, 'Tarta fresca con variedad de frutas', 2, 1, 1, 2),
('Cupcake de Vainilla', 2.99, '2024-06-30', 10, 'Cupcake esponjoso con crema de vainilla', 3, 1, 1, 3),
('Mousse de Fresa', 4.50, '2024-06-30', 10, 'Postre ligero y cremoso con sabor a fresa', 3, 1, 1, 4),
('Galletas de Chocolate', 6.99, '2024-06-30', 10, 'Galletas crujientes con trozos de chocolate', 4, 1, 1, 5);

-- Tabla compraProductos
INSERT INTO compraProductos (fechaCompra, montoCompra, idProveedor) VALUES
('2024-04-10', 500.00, 1),
('2024-04-11', 350.50, 2),
('2024-04-12', 600.75, 3);

-- Tabla detalleCompraP
INSERT INTO detalleCompraP (idProducto, cantidadCompra, precioUnitario, subTotal, idCompraProducto) VALUES
(6, 10, 2.50, 25.00, 1),
(7, 5, 3.00, 15.00, 1),
(8, 2, 4.50, 9.00, 2),
(9, 3, 2.00, 6.00, 2),
(10, 1, 6.00, 6.00, 3),
(11, 4, 3.75, 15.00, 3);

INSERT INTO ventaProductos (IVA, descuento, montoTotal, fechaVenta, idEmpleado, idCliente) VALUES
(15.00, 10.00, 150.00, '2024-04-10 14:30:00', 15, 1),
(18.00, 8.00, 200.00, '2024-04-11 15:45:00', 16, 2),
(12.00, 5.00, 120.00, '2024-04-12 12:00:00', 17, 3),
(13.00, 6.00, 210.00, '2024-04-09 13:00:00', 18, 4),
(11.00, 7.00, 100.00, '2024-04-07 16:00:00', 19, 5);

INSERT INTO detallesVentasP (idProducto, cantidadVender, precioUnitario, subTotal, idVentaProducto) VALUES
(1, 2, 5.00, 10.00, 1),
(2, 3, 3.50, 10.50, 2),
(3, 1, 8.00, 8.00, 3),
(4, 2, 6.50, 13.00, 4),
(5, 1, 12.00, 12.00, 5),
(6, 4, 4.75, 19.00, 1);

INSERT INTO productosFinal (nombreProducto, stockCritico, precioProducto, fechaCaducidad, descripcionProducto, idMenu, idInventario) VALUES
('Pan blanco', 5, 2.50, '2024-05-15', 'Pan blanco recién horneado.', 1, 1),
('Pan integral', 5, 3.00, '2024-05-15', 'Pan integral rico en fibra.', 1, 2),
('Pan de centeno', 5, 3.50, '2024-05-15', 'Pan elaborado con harina.', 1, 3),
('Baguettes', 5, 2.00, '2024-05-15', 'Baguettes crujientes y sabrosas.', 1, 4),
('Panecillos', 5, 1.50, '2024-05-15', 'Panecillos suaves y esponjosos.', 1, 5),
('Croissants', 5, 2.75, '2024-05-15', 'Croissants franceses hojaldrados.', 1, 1),
('Bollos', 5, 2.25, '2024-05-15', 'Bollos dulces y esponjosos.', 1, 2),
('Pan de masa madre', 5, 3.25, '2024-05-15', 'Pan fermentado.', 1, 3),
('Pan de semillas', 5, 3.75, '2024-05-15', 'Pan , sésamo, etc.', 1, 4),
('Panecillos dulces', 5, 2.50, '2024-05-15', 'Panecillos dulces.', 1, 5),

-- Pastelería
('Pasteles', 5, 15.00, '2024-05-15', 'Pasteles decorados y deliciosos.', 2, 1),
('Tartas', 5, 20.00, '2024-05-15', 'Tartas caseras.', 2, 2),
('Galletas', 5, 5.00, '2024-05-15', 'Galletas caseras.', 2, 3),
('Brownies', 5, 3.50, '2024-05-15', 'Brownies de chocolate.', 2, 4),
('Magdalenas', 5, 2.00, '2024-05-15', 'Magdalenas esponjosas y sabrosas.', 2, 5),
('Rosquillas', 5, 2.50, '2024-05-15', 'Rosquillas glaseadas y decoradas.', 2, 1),
('Croissants de chocolate', 5, 3.75, '2024-05-15', 'Croissants rellenos.', 2, 2),
('Éclairs', 5, 4.00, '2024-05-15', 'Éclairs rellenos de crema.', 2, 3),
('Profiteroles', 5, 4.50, '2024-05-15', 'Profiteroles rellenos de crema', 2, 4),
('Trufas', 5, 6.00, '2024-05-15', 'Trufas de chocolate hechas a mano.', 2, 5),

-- Repostería
('Cupcakes', 5, 2.50, '2024-05-15', 'Cupcakes caseros.', 3, 1),
('Macarons', 5, 3.00, '2024-05-15', 'Macarons coloridos y deliciosos.', 3, 2),
('Tartas individuales', 5, 4.00, '2024-05-15', 'Tartas individuales.', 3, 3),
('Mini pasteles', 5, 3.50, '2024-05-15', 'Mini pasteles decorados y sabrosos.', 3, 4),
('Dulces árabes (baklava)', 5, 5.00, '2024-05-15', 'Dulces árabes.', 3, 5),
('Hojaldres', 5, 2.75, '2024-05-15', 'Deliciosos hojaldres rellenos.', 3, 1),
('Dulces de hojaldre (palmiers)', 5, 3.00, '2024-05-15', 'Dulces de hojaldre.', 3, 2),
('Postres fríos (cheesecake)', 5, 4.50, '2024-05-15', 'cheesecake.', 3, 3),
('Postres de frutas ', 5, 4.00, '2024-05-15', 'tarta de manzana.', 3, 4),
('Postres de chocolate', 5, 4.50, '2024-05-15', 'Postres de chocolate.', 3, 5),

-- Bebidas
('Café', 10, 1.50, '2024-05-15', 'Café caliente y aromático.', 4, 1),
('Té', 10, 1.25, '2024-05-15', 'Té caliente y reconfortante.', 4, 2),
('Té helado', 10, 2.00, '2024-05-15', 'Té refrescante y delicioso.', 4, 3),
('Chocolate caliente', 10, 2.50, '2024-05-15', 'Chocolate caliente.', 4, 4),
('Batidos', 10, 3.00, '2024-05-15', 'Batidos de frutas frescas.', 4, 5),
('Zumos naturales', 10, 2.50, '2024-05-15', 'Zumos naturales.', 4, 2),
('Agua embotellada', 10, 1.00, '2024-05-15', 'Agua embotellada.', 4, 3),
('Refrescos', 10, 1.75, '2024-05-15', 'Refrescos fríos.', 4, 5);

INSERT INTO recetas (nombreReceta, idProductoFinal, idIngrediente, cantidadIngrediente) VALUES
('Tarta de Manzana', 229, 14, 200),
('Brownies de Chocolate', 230, 15, 250),
('Cupcakes de Vainilla', 231, 16, 300),
('Mousse de Fresa', 232, 17, 150),
('Galletas de Chocolate', 233, 18, 180);

INSERT INTO pedidos (idCliente, metodoPago, IVA, descuento, monto, fechaVenta, estadoPedido, idEmpleado) VALUES
(1, 'TARJETA', 2.50, 0.00, 30.00, '2024-04-12 10:30:00', 'En proceso', 15),
(2, 'EFECTIVO', 1.50, 5.00, 25.00, '2024-04-12 11:45:00', 'Pendiente', 16),
(3, 'TARJETA', 3.00, 2.00, 40.00, '2024-04-12 13:15:00', 'Enviado', 17),
(4, 'TARJETA', 2.00, 0.00, 15.00, '2024-04-12 14:30:00', 'Entregado', 18),
(5, 'EFECTIVO', 1.75, 0.00, 28.00, '2024-04-12 16:00:00', 'Cancelado', 19);


-- Tabla roles
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
	(1,11), (1,12), (1,13), (1,14), (1,15), (1,16), (1,17), (1,18), (1,19),
    (1,20), (1,21), (1,22), (1,23), (1,24), (1,25), (1,26), (1,27), (1,28),
    
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
     
    insert into usuarios (usuario, contrasenia, idRol, idEmpleado) values
     ('admin_DamianBeltran', 'root', '1', '15'), -- Administrador
     ('grn_JuanPerez', 'juancitoP33', '2', '16'), -- Gerente
     ('Cont_AndreaLopez', 'AmlopC22', '3', '23'), -- Contador
     ('rrhh_CristianArias', 'CR75rrhh', '4', '22'), -- RRHH
     ('cj_MariaGomez', 'cjMariG..888', '5', '26'), -- Cajero
     ('cj_CarlosLopez', 'cjCarlop8', '5', '27'), -- Cajero
     ('cj_LauraMendez', 'cjLauraMend9', '5', '28'), -- Cajero
     ('sup_CesarMor', 'ssMorCe99', '6', '29'); -- Supervisor
     
     
     
     