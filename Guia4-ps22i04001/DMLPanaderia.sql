create database pasteleria;

use pasteleria;

-- Tabla Empleados
create table empleados(
	idEmpleado int primary key auto_increment,
    nombresEmpleado varchar(100) not null,
    apellidosEmpleado varchar(100) not null,
    duiEmpleado char(10) not null,
    isssEmpleado char(9),
    fechaNacEmpleado date not null,
    telefonoEmpleado varchar(15) not null,
    correoEmpleado varchar(100),
    idCargo int not null,
    idDireccion int not null
);
INSERT INTO empleados (nombresEmpleado, apellidosEmpleado, duiEmpleado, isssEmpleado, fechaNacEmpleado, telefonoEmpleado, correoEmpleado, idCargo, idDireccion) VALUES
('Juan', 'Pérez', '00000001-0', '123456789', '1990-05-15', '7777-7777', 'juan@example.com', 1, 1),
('María', 'Gómez', '00000002-0', '987654321', '1992-10-20', '8888-8888', 'maria@example.com', 2, 2),
('Carlos', 'López', '00000003-0', '456789123', '1988-12-30', '9999-9999', 'carlos@example.com', 1, 3);


-- Tabla Cargos
create table cargos(
	idCargo int primary key auto_increment,
    cargo varchar(30) not null
);
INSERT INTO cargos (cargo) VALUES
('sys admin'),
('gerente'),
('pastelero'),
('repostero'),
('mesero'),
('ordenanza'),
('contador'),
('RRHH'),
('Transportista'),
('promotor'),
('cajero'),
('barista');


-- Tabla Clientes
create table clientes(
	idCliente int primary key auto_increment,
    nombreCliente varchar(45) not null,
    telefonoCliente varchar(9),
    correoCliente varchar(30)
);
INSERT INTO clientes (nombreCliente, telefonoCliente, correoCliente) VALUES
('Juan Pérez', '77777777', 'juan@example.com'),
('María Gómez', '88888888', 'maria@example.com'),
('Carlos López', '99999999', 'carlos@example.com');


-- Tabla de Ingredientes
create table ingredientes(
	idIngrediente int primary key auto_increment,
    nombreIngrediente varchar(30) not null,
    idUnidadMedida int not null,
    idCategoria int not null,
    precioUnitario decimal(5,2) not null,
    fechaCaducidad date not null,
    stockCritico int not null,
    descripcionIngrediente varchar(40),
    idInventario int not null
);
INSERT INTO ingredientes (nombreIngrediente, idUnidadMedida, idCategoria, precioUnitario, fechaCaducidad, stockCritico, descripcionIngrediente, idInventario) VALUES
('Harina', 1, 1, 2.50, '2024-12-31', 50, 'Harina de trigo', 1),
('Azúcar', 1, 1, 1.75, '2024-12-31', 30, 'Azúcar blanca', 1),
('Huevos', 3, 1, 3.00, '2024-12-31', 20, 'Huevos frescos', 1),
('Levadura', 2, 1, 1.20, '2024-12-31', 10, 'Levadura seca', 1),
('Mantequilla', 1, 1, 2.00, '2024-12-31', 40, 'Mantequilla sin sal', 1),
('Chocolate', 4, 1, 5.50, '2025-06-30', 25, 'Chocolate negro para repostería', 1),
('Vainilla', 5, 1, 3.75, '2025-03-31', 15, 'Extracto de vainilla puro', 1),
('Crema de leche', 6, 1, 2.80, '2024-12-31', 30, 'Crema de leche para montar', 1),
('Frutas frescas', 1, 1, 4.50, '2024-12-31', 20, 'Fresas, frambuesas, etc.', 1),
('Almendras', 1, 1, 6.00, '2025-06-30', 25, 'Almendras enteras', 1),
('Canela', 7, 1, 1.25, '2025-03-31', 10, 'Canela en polvo', 1),
('Nueces', 1, 1, 7.50, '2025-06-30', 30, 'Nueces picadas', 1),
('Azúcar glass', 1, 1, 2.25, '2025-12-31', 20, 'Azúcar glass para decoración', 1);

-- Tabla de Inventarios
create table inventarios(
	idInventario int primary key auto_increment,
    idAlmacenamiento int not null,
    stockActual int not null,
    fechaActualizacion date not null
);
INSERT INTO inventarios (idAlmacenamiento, stockActual, fechaActualizacion) VALUES
(1, 100, '2024-04-12'),
(2, 150, '2024-04-12'),
(3, 80, '2024-04-12'),
(4, 120, '2024-04-12'),
(5, 200, '2024-04-12');

-- Tabla almacenamientos
create table almacenamientos(
	idAlmacenamiento int primary key auto_increment,
    nombreAlmacenamiento varchar(45) not null,
    descripcion varchar(45) not null,
    ubicacion varchar(55) not null
);
INSERT INTO almacenamientos (nombreAlmacenamiento, descripcion, ubicacion) VALUES
('Refrigerador', 'Refrigerador principal', 'Cocina'),
('Almacén seco', 'Almacén para ingredientes secos', 'Área de almacenamiento'),
('Congelador', 'Congelador grande', 'Cocina'),
('Estantería 1', 'Estantería para productos terminados', 'Área de ventas'),
('Estantería 2', 'Estantería para productos en exhibición', 'Área de ventas');


-- Tabla CompraIngredientes
create table compraIngredientes(
	idCompraI int primary key auto_increment,
    fechaCompra date not null,
    montoCompra decimal(5,2) not null,
    idProveedor int not null
);
INSERT INTO compraIngredientes (fechaCompra, montoCompra, idProveedor) VALUES
('2024-04-10', 250.00, 1),
('2024-04-11', 180.50, 2),
('2024-04-12', 300.75, 3);


-- Tabla Detalles de Compra
create table detallesCompraI(
	idDetalleCompraI int primary key auto_increment,
    idCompraI int not null,
    idIngrediente int not null, 
    cantidadComprar int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null
);
INSERT INTO detallesCompraI (idCompraI, idIngrediente, cantidadComprar, precioUnitario, subTotal) VALUES
(1, 1, 10, 2.50, 25.00),
(1, 2, 5, 3.00, 15.00),
(2, 3, 2, 4.50, 9.00),
(2, 4, 3, 2.00, 6.00),
(3, 5, 1, 6.00, 6.00),
(3, 6, 4, 3.75, 15.00);

-- Tabla Proveedores
create table proveedores(
	idProveedor int primary key auto_increment,
    nombreProveedor varchar(50) not null,
    telefono1 varchar(15) not null,
    telefono2 varchar(15), 
    idDireccion int not null
);
INSERT INTO proveedores (nombreProveedor, telefono1, telefono2, idDireccion) VALUES
('Distribuidora de Ingredientes S.A.', '123456789', '987654321', 1),
('Productos Frescos Ltda.', '987654321', NULL, 2),
('Insumos para Repostería y Pastelería', '555555555', '444444444', 3);

-- Tabla Compra Productos
create table compraProductos(
	idCompraProducto int primary key auto_increment,
    fechaCompra date not null,
    montoCompra decimal(5,2) not null,
    idProveedor int not null
);
INSERT INTO compraProductos (fechaCompra, montoCompra, idProveedor) VALUES
('2024-04-10', 500.00, 1),
('2024-04-11', 350.50, 2),
('2024-04-12', 600.75, 3);

-- Tabla Detalle Compra
create table detalleCompraP(
	idDetalleCompraP int primary key auto_increment,
    idProducto int not null,
    cantidadCompra int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null,
    idCompraProducto int not null
);
INSERT INTO detalleCompraP (idProducto, cantidadCompra, precioUnitario, subTotal, idCompraProducto) VALUES
(1, 10, 2.50, 25.00, 1),
(2, 5, 3.00, 15.00, 1),
(3, 2, 4.50, 9.00, 2),
(4, 3, 2.00, 6.00, 2),
(5, 1, 6.00, 6.00, 3),
(6, 4, 3.75, 15.00, 3);

-- Tabla Ventas Productos
create table ventaProductos(
	idVentaProducto int primary key auto_increment,
    IVA decimal(5,2) not null,
    descuento decimal(5,2) not null,
    montoTotal decimal(5,2) not null,
    fechaVenta datetime not null,
    idEmpleado int not null,
    idCliente int not null
);
INSERT INTO ventaProductos (IVA, descuento, montoTotal, fechaVenta, idEmpleado, idCliente) VALUES
(15.00, 10.00, 150.00, '2024-04-10 14:30:00', 1, 1),
(18.00, 8.00, 200.00, '2024-04-11 15:45:00', 2, 2),
(12.00, 5.00, 120.00, '2024-04-12 12:00:00', 3, 3);


-- Tabla Detalles VentasP
create table detallesVentasP(
	idDetalleVenta int primary key auto_increment,
    idProducto int not null,
    cantidadVender int not null,
    precioUnitario decimal(5,2),
    subTotal decimal(5,2) not null,
    idVentaProducto int not null
);
INSERT INTO detallesVentasP (idProducto, cantidadVender, precioUnitario, subTotal, idVentaProducto) VALUES
(1, 2, 5.00, 10.00, 1),
(2, 3, 3.50, 10.50, 1),
(3, 1, 8.00, 8.00, 2),
(4, 2, 6.50, 13.00, 2),
(5, 1, 12.00, 12.00, 3),
(6, 4, 4.75, 19.00, 3);

-- Tabla Unidad de Medidas
create table unidadMedidas(
	idUnidadMedida int primary key auto_increment,
    unidadMedida varchar(45) not null
);
INSERT INTO unidadMedidas (unidadMedida) VALUES
('gramos'),
('kilogramos'),
('mililitros'),
('litros'),
('unidad');

-- Tabla Productos
create table productos(
	idProducto int primary key auto_increment,
    nombreProducto varchar(45) not null,
    precioUnitario decimal(5,2) not null,
    fechaCaducidad date not null,
    stockCritico int not null,
    descripcionProducto varchar(45) not null,
    idCategoria int not null,
    idUnidadMedida int not null,
    idMenu int not null,
    idInventario int not null
);
INSERT INTO productos (nombreProducto, precioUnitario, fechaCaducidad, stockCritico, descripcionProducto, idCategoria, idUnidadMedida, idMenu, idInventario) VALUES
('Pastel de Chocolate', 15.99, '2024-06-30', 10, 'Delicioso pastel de chocolate', 2, 1, 1, 1),
('Tarta de Frutas', 18.50, '2024-06-30', 10, 'Tarta fresca con variedad de frutas', 2, 1, 1, 1),
('Cupcake de Vainilla', 2.99, '2024-06-30', 10, 'Cupcake esponjoso con crema de vainilla', 3, 1, 1, 1),
('Mousse de Fresa', 4.50, '2024-06-30', 10, 'Postre ligero y cremoso con sabor a fresa', 3, 1, 1, 1),
('Galletas de Chocolate', 6.99, '2024-06-30', 10, 'Galletas crujientes con trozos de chocolate', 4, 1, 1, 1);

-- Tabla Categoria
create table categorias(
	idCategoria int primary key auto_increment,
    categoria varchar(30) not null
);
INSERT INTO categorias (categoria) VALUES
('Panadería'),
('Pastelería'),
('Repostería'),
('Bebidas');

-- Tabla Menu
create table menus(
	idMenu int primary key auto_increment,
    nombreMenu varchar(40) not null,
    descripcion varchar(45) not null
    
);
-- Insertar datos en la tabla menus
INSERT INTO menus (nombreMenu, descripcion) VALUES
('Menú de Panadería', 'Una selección deliciosa de productos horneados frescos.'),
('Menú de Pastelería', 'Postres irresistibles para satisfacer tu antojo de dulces.'),
('Menú de Repostería', 'Delicias dulces para ocasiones especiales.'),
('Menú de Bebidas', 'Refrescantes bebidas para acompañar tus platillos favoritos.');

-- Insertar elementos de Panadería
INSERT INTO menus (nombreMenu, descripcion) VALUES
('Pan blanco', 'Delicioso pan blanco recién horneado.'),
('Pan integral', 'Pan integral rico en fibra y nutrientes.'),
('Pan de centeno', 'Pan elaborado con harina de centeno.'),
('Baguettes', 'Baguettes crujientes y sabrosas.'),
('Panecillos', 'Panecillos suaves y esponjosos.'),
('Croissants', 'Croissants franceses hojaldrados.'),
('Bollos', 'Bollos dulces y esponjosos.'),
('Pan de masa madre', 'Pan fermentado con masa madre para un sabor auténtico.'),
('Pan de semillas', 'Pan con semillas de girasol, sésamo y más.'),
('Panecillos dulces', 'Panecillos dulces como el brioche y el pan de leche.');

-- Insertar elementos de Pastelería
INSERT INTO menus (nombreMenu, descripcion) VALUES
('Pasteles', 'Pasteles decorados y deliciosos.'),
('Tartas', 'Tartas caseras con una variedad de rellenos y coberturas.'),
('Galletas', 'Galletas caseras de diferentes formas y sabores.'),
('Brownies', 'Brownies ricos y densos de chocolate.'),
('Magdalenas', 'Magdalenas esponjosas y sabrosas.'),
('Rosquillas', 'Rosquillas glaseadas y decoradas.'),
('Croissants de chocolate', 'Croissants rellenos de chocolate.'),
('Éclairs', 'Éclairs rellenos de crema y cubiertos de chocolate.'),
('Profiteroles', 'Profiteroles rellenos de crema y bañados en chocolate.'),
('Trufas', 'Trufas de chocolate hechas a mano.');

-- Insertar elementos de Repostería
INSERT INTO menus (nombreMenu, descripcion) VALUES
('Cupcakes', 'Cupcakes decorados y deliciosos.'),
('Macarons', 'Coloridos macarons rellenos de crema.'),
('Tartas individuales', 'Tartas individuales en porciones.'),
('Mini pasteles', 'Pequeños pasteles individuales.'),
('Dulces árabes', 'Dulces árabes como el baklava.'),
('Hojaldres', 'Hojaldres rellenos de crema o frutas.'),
('Dulces de hojaldre', 'Dulces de hojaldre como los palmiers.'),
('Postres fríos', 'Postres fríos como el cheesecake.'),
('Postres de frutas', 'Postres de frutas frescas como la tarta de manzana.'),
('Postres de chocolate', 'Postres de chocolate como la mousse de chocolate.');

-- Insertar elementos de Bebidas
INSERT INTO menus (nombreMenu, descripcion) VALUES
('Café', 'Variedades de café caliente y delicioso.'),
('Té', 'Té caliente con una variedad de sabores.'),
('Té helado', 'Té helado refrescante y dulce.'),
('Chocolate caliente', 'Chocolate caliente cremoso y reconfortante.'),
('Batidos', 'Batidos de frutas naturales y refrescantes.'),
('Zumos naturales', 'Zumos naturales frescos y saludables.'),
('Agua embotellada', 'Agua embotellada fría y pura.'),
('Refrescos', 'Refrescos fríos y burbujeantes.');

-- Tabla Producto Final
create table productosFinal(
	idProductoFinal int primary key auto_increment,
    nombreProducto varchar(30) not null,
    stockCritico int not null,
    precioProducto decimal(5,2) not null,
    fechaCaducidad date not null,
    descripcionProducto varchar(45) not null,
    idMenu int not null,
    idInventario int not null
);

-- Insertar productos en la tabla productosFinal
-- Panadería
INSERT INTO productosFinal (nombreProducto, stockCritico, precioProducto, fechaCaducidad, descripcionProducto, idMenu, idInventario) VALUES
('Pan blanco', 5, 2.50, '2024-05-15', 'Pan blanco recién horneado.', 1, 1),
('Pan integral', 5, 3.00, '2024-05-15', 'Pan integral rico en fibra.', 1, 1),
('Pan de centeno', 5, 3.50, '2024-05-15', 'Pan elaborado con harina de centeno.', 1, 1),
('Baguettes', 5, 2.00, '2024-05-15', 'Baguettes crujientes y sabrosas.', 1, 1),
('Panecillos', 5, 1.50, '2024-05-15', 'Panecillos suaves y esponjosos.', 1, 1),
('Croissants', 5, 2.75, '2024-05-15', 'Croissants franceses hojaldrados.', 1, 1),
('Bollos', 5, 2.25, '2024-05-15', 'Bollos dulces y esponjosos.', 1, 1),
('Pan de masa madre', 5, 3.25, '2024-05-15', 'Pan fermentado con masa madre.', 1, 1),
('Pan de semillas', 5, 3.75, '2024-05-15', 'Pan con semillas de girasol, sésamo, etc.', 1, 1),
('Panecillos dulces', 5, 2.50, '2024-05-15', 'Panecillos dulces como el brioche y el pan de leche.', 1, 1),

-- Pastelería
('Pasteles', 5, 15.00, '2024-05-15', 'Pasteles decorados y deliciosos.', 2, 1),
('Tartas', 5, 20.00, '2024-05-15', 'Tartas caseras con una variedad de rellenos y coberturas.', 2, 1),
('Galletas', 5, 5.00, '2024-05-15', 'Galletas caseras de diferentes formas y sabores.', 2, 1),
('Brownies', 5, 3.50, '2024-05-15', 'Brownies ricos y densos de chocolate.', 2, 1),
('Magdalenas', 5, 2.00, '2024-05-15', 'Magdalenas esponjosas y sabrosas.', 2, 1),
('Rosquillas', 5, 2.50, '2024-05-15', 'Rosquillas glaseadas y decoradas.', 2, 1),
('Croissants de chocolate', 5, 3.75, '2024-05-15', 'Croissants rellenos de chocolate.', 2, 1),
('Éclairs', 5, 4.00, '2024-05-15', 'Éclairs rellenos de crema y cubiertos de chocolate.', 2, 1),
('Profiteroles', 5, 4.50, '2024-05-15', 'Profiteroles rellenos de crema y bañados en chocolate.', 2, 1),
('Trufas', 5, 6.00, '2024-05-15', 'Trufas de chocolate hechas a mano.', 2, 1),

-- Repostería
('Cupcakes', 5, 2.50, '2024-05-15', 'Cupcakes caseros en una variedad de sabores.', 3, 1),
('Macarons', 5, 3.00, '2024-05-15', 'Macarons coloridos y deliciosos.', 3, 1),
('Tartas individuales', 5, 4.00, '2024-05-15', 'Tartas individuales perfectas para un capricho.', 3, 1),
('Mini pasteles', 5, 3.50, '2024-05-15', 'Mini pasteles decorados y sabrosos.', 3, 1),
('Dulces árabes (baklava)', 5, 5.00, '2024-05-15', 'Dulces árabes tradicionales como el baklava.', 3, 1),
('Hojaldres', 5, 2.75, '2024-05-15', 'Deliciosos hojaldres rellenos.', 3, 1),
('Dulces de hojaldre (palmiers)', 5, 3.00, '2024-05-15', 'Dulces de hojaldre crujientes y dulces.', 3, 1),
('Postres fríos (cheesecake)', 5, 4.50, '2024-05-15', 'Postres fríos como el cheesecake.', 3, 1),
('Postres de frutas (tarta de manzana)', 5, 4.00, '2024-05-15', 'Postres de frutas como la tarta de manzana.', 3, 1),
('Postres de chocolate (mousse de chocolate)', 5, 4.50, '2024-05-15', 'Postres de chocolate como la mousse de chocolate.', 3, 1),

-- Bebidas
('Café', 10, 1.50, '2024-05-15', 'Café caliente y aromático.', 4, 2),
('Té', 10, 1.25, '2024-05-15', 'Té caliente y reconfortante.', 4, 2),
('Té helado', 10, 2.00, '2024-05-15', 'Té refrescante y delicioso.', 4, 2),
('Chocolate caliente', 10, 2.50, '2024-05-15', 'Chocolate caliente indulgente.', 4, 2),
('Batidos', 10, 3.00, '2024-05-15', 'Batidos de frutas frescas.', 4, 2),
('Zumos naturales', 10, 2.50, '2024-05-15', 'Zumos naturales recién exprimidos.', 4, 2),
('Agua embotellada', 10, 1.00, '2024-05-15', 'Agua embotellada pura y fresca.', 4, 2),
('Refrescos', 10, 1.75, '2024-05-15', 'Refrescos fríos y carbonatados.', 4, 2);

-- Tabla Recetas
create table recetas(
	idReceta int primary key auto_increment,
    nombreReceta varchar(45) not null,
    idProductoFinal int not null,
    idIngrediente int not null,
    cantidadIngrediente int
);
INSERT INTO recetas (nombreReceta, idProductoFinal, idIngrediente, cantidadIngrediente) VALUES
('Tarta de Manzana', 1, 5, 200),
('Brownies de Chocolate', 2, 6, 250),
('Cupcakes de Vainilla', 3, 7, 300),
('Mousse de Fresa', 4, 8, 150),
('Galletas de Chocolate', 5, 9, 180);

-- Tabla Ventas Ingredientes 
create table ventasIngredientes(
	idVentaIngrediente int primary key auto_increment,
    IVA decimal(5,2) not null,
    descuento decimal(5,2) not null,
    montoTotal decimal(5,2) not null,
    fechaVenta datetime not null,
    idEmpleado int not null,
    idCliente int not null
);
INSERT INTO ventasIngredientes (IVA, descuento, montoTotal, fechaVenta, idEmpleado, idCliente) VALUES
(10.00, 2.50, 150.00, '2024-04-01 10:30:00', 1, 101),
(8.00, 1.20, 80.00, '2024-04-02 11:45:00', 2, 102),
(12.00, 3.00, 200.00, '2024-04-03 09:15:00', 3, 103),
(9.00, 1.80, 120.00, '2024-04-04 14:20:00', 4, 104),
(11.00, 2.20, 180.00, '2024-04-05 12:00:00', 5, 105);

-- Tabla Detalles de Venta Ingredientes
create table detallesVentaI(
	idDetalleVentaI int primary key auto_increment,
    idVentaIngrediente int not null,
    idIngrediente int not null,
    cantidadVender int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null
);
INSERT INTO detallesVentaI (idVentaIngrediente, idIngrediente, cantidadVender, precioUnitario, subTotal) VALUES
(1, 101, 2, 5.00, 10.00),
(1, 102, 3, 3.50, 10.50),
(2, 103, 1, 8.00, 8.00),
(2, 104, 2, 4.50, 9.00),
(3, 105, 4, 2.50, 10.00);


-- Tabla Pedidos
create table pedidos(
	idPedido int primary key auto_increment,
    idCliente int not null,
    metodoPago enum('EFECTIVO', 'TARJETA') not null,
    IVA decimal(5,2) not null,
    descuento decimal(5,2) not null,
    monto decimal(5,2) not null,
    fechaVenta datetime not null,
    estadoPedido enum('Pendiente', 'En proceso', 'Enviado', 
    'Entregado', 'Cancelado', 'En espera', 'Devuelto') not null,
    idEmpleado int not null
);

-- Tabla Detalles Pedidos
create table detallesPedidos(
	idDetallePedido int primary key auto_increment,
    idPedido int not null,
    idProductoFinal int not null,
    precioProducto decimal(5,2) not null,
    cantidadVendida int not null,
    subTotal decimal(5,2) not null
);
INSERT INTO pedidos (idCliente, metodoPago, IVA, descuento, monto, fechaVenta, estadoPedido, idEmpleado) VALUES
(1, 'TARJETA', 2.50, 0.00, 30.00, '2024-04-12 10:30:00', 'En proceso', 3),
(2, 'EFECTIVO', 1.50, 5.00, 25.00, '2024-04-12 11:45:00', 'Pendiente', 4),
(3, 'TARJETA', 3.00, 2.00, 40.00, '2024-04-12 13:15:00', 'Enviado', 5),
(4, 'TARJETA', 2.00, 0.00, 15.00, '2024-04-12 14:30:00', 'Entregado', 2),
(5, 'EFECTIVO', 1.75, 0.00, 28.00, '2024-04-12 16:00:00', 'Cancelado', 1);


-- Tabla Direcciones
create table direcciones(
	idDireccion int primary key auto_increment,
    linea1 varchar(100) not null,
    linea2 varchar(50),
    idDistrito char(5) not null,
    codigoPostal varchar(7)
);
insert into direcciones (linea1, linea2, idDistrito, codigoPostal) values
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10


-- Tabla Departamentos
create table departamentos(
	idDepartamento char(2) primary key,
    departamento varchar(25) not null,
    pais varchar(25) not null
);
insert into departamentos (idDepartamento,departamento, pais)values
('SO', 'Sonsonate', 'El Salvador');

-- Tabla Distritos
create table distritos(
	idDistrito char(5) primary key,
    distrito varchar(50) not null,
    idMunicipio char(3) not null
);
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

-- Tabla Municipios
create table municipios(
	idMunicipio char(3) primary key,
    municipio varchar(50) not null,
    idDepartamento char(2) not null
);
insert into municipios (idMunicipio,municipio, idDepartamento) values
('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO');
    

alter table empleados add foreign key (idCargo) references
cargos(idCargo);
alter table empleados add foreign key (idDireccion) references
direcciones(idDireccion);
alter table ingredientes add foreign key (idUnidadMedida) references
unidadMedidas(idUnidadMedida);
alter table ingredientes add foreign key (idCategoria) references
categorias(idCategoria);
alter table ingredientes add foreign key (idInventario) references
inventarios(idInventario);
alter table inventarios add foreign key (idAlmacenamiento) references
almacenamientos(idAlmacenamiento);
alter table compraIngredientes add foreign key (idProveedor) references
proveedores(idProveedor);
alter table detallesCompraI add foreign key (idCompraI) references
compraIngredientes(idCompraI);
alter table detallesCompraI add foreign key (idIngrediente) references
ingredientes(idIngrediente);
alter table proveedores add foreign key (idDireccion) references
direcciones(idDireccion);
alter table compraProductos add foreign key (idProveedor) references
proveedores(idProveedor);
alter table detalleCompraP add foreign key (idProducto) references
productos(idProducto);
alter table detalleCompraP add foreign key (idCompraProducto) references
compraProductos(idCompraProducto);
alter table ventaProductos add foreign key (idEmpleado) references
empleados(idEmpleado);
alter table ventaProductos add foreign key (idCliente) references
clientes(idCliente);
alter table detallesVentasP add foreign key (idVentaProducto) references
ventaProductos(idVentaProducto);
alter table productos add foreign key (idCategoria) references
categorias(idCategoria);
alter table productos add foreign key (idUnidadMedida) references
unidadMedidas(idUnidadMedida);
alter table productos add foreign key (idMenu) references
menus(idMenu);
alter table productos add foreign key (idInventario) references
inventarios(idInventario);
alter table productosFinal add foreign key (idMenu) references
menus(idMenu);
alter table productosFinal add foreign key (idInventario) references
inventarios(idInventario);
alter table recetas add foreign key (idProductoFinal) references
productosFinal(idProductoFinal);
alter table recetas add foreign key (idIngrediente) references
ingredientes(idIngrediente);
alter table ventasIngredientes add foreign key (idEmpleado) references
empleados(idEmpleado);
alter table ventasIngredientes add foreign key (idCliente) references
clientes(idCliente);
alter table detallesVentaI add foreign key (idVentaIngrediente) references
ventasIngredientes(idVentaIngrediente);
alter table detallesVentaI add foreign key (idIngrediente) references
ingredientes(idIngrediente);
alter table pedidos add foreign key (idCliente) references
clientes(idCliente);
alter table pedidos add foreign key (idEmpleado) references
empleados(idEmpleado);
alter table detallesPedidos add foreign key (idPedido) references
pedidos(idPedido);
alter table detallesPedidos add foreign key (idProductoFinal) references
productosFinal(idProductoFinal);
alter table direcciones add foreign key (idDistrito) references
distritos(idDistrito);
alter table distritos add foreign key (idMunicipio) references
municipios(idMunicipio);
alter table municipios add foreign key (idDepartamento) references
departamentos(idDepartamento);

