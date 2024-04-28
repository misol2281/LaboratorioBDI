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

-- Tabla Cargos
create table cargos(
	idCargo int primary key auto_increment,
    cargo varchar(30) not null
);

-- Tabla Clientes
create table clientes(
	idCliente int primary key auto_increment,
    nombreCliente varchar(45) not null,
    telefonoCliente varchar(9),
    correoCliente varchar(30)
);

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

-- Tabla de Inventarios
create table inventarios(
	idInventario int primary key auto_increment,
    idAlmacenamiento int not null,
    stockActual int not null,
    fechaActualizacion date not null
);

-- Tabla almacenamientos
create table almacenamientos(
	idAlmacenamiento int primary key auto_increment,
    nombreAlmacenamiento varchar(45) not null,
    descripcion varchar(45) not null,
    ubicacion varchar(55) not null
);

-- Tabla CompraIngredientes
create table compraIngredientes(
	idCompraI int primary key auto_increment,
    fechaCompra date not null,
    montoCompra decimal(5,2) not null,
    idProveedor int not null
);

-- Tabla Detalles de Compra
create table detallesCompraI(
	idDetalleCompraI int primary key auto_increment,
    idCompraI int not null,
    idIngrediente int not null, 
    cantidadComprar int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null
);

-- Tabla Proveedores
create table proveedores(
	idProveedor int primary key auto_increment,
    nombreProveedor varchar(50) not null,
    telefono1 varchar(15) not null,
    telefono2 varchar(15), 
    idDireccion int not null
);

-- Tabla Compra Productos
create table compraProductos(
	idCompraProducto int primary key auto_increment,
    fechaCompra date not null,
    montoCompra decimal(5,2) not null,
    idProveedor int not null
);

-- Tabla Detalle Compra
create table detalleCompraP(
	idDetalleCompraP int primary key auto_increment,
    idProducto int not null,
    cantidadCompra int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null,
    idCompraProducto int not null
);

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

-- Tabla Detalles VentasP
create table detallesVentasP(
	idDetalleVenta int primary key auto_increment,
    idProducto int not null,
    cantidadVender int not null,
    precioUnitario decimal(5,2),
    subTotal decimal(5,2) not null,
    idVentaProducto int not null
);

-- Tabla Unidad de Medidas
create table unidadMedidas(
	idUnidadMedida int primary key auto_increment,
    unidadMedida varchar(45) not null
);

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

-- Tabla Categoria
create table categorias(
	idCategoria int primary key auto_increment,
    categoria varchar(30) not null
);

-- Tabla Menu
create table menus(
	idMenu int primary key auto_increment,
    nombreMenu varchar(40) not null,
    descripcion varchar(45) not null
);

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

-- Tabla Recetas
create table recetas(
	idReceta int primary key auto_increment,
    nombreReceta varchar(45) not null,
    idProductoFinal int not null,
    idIngrediente int not null,
    cantidadIngrediente int
);

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

-- Tabla Detalles de Venta Ingredientes
create table detallesVentaI(
	idDetalleVentaI int primary key auto_increment,
    idVentaIngrediente int not null,
    idIngrediente int not null,
    cantidadVender int not null,
    precioUnitario decimal(5,2) not null,
    subTotal decimal(5,2) not null
);

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

-- Tabla Direcciones
create table direcciones(
	idDireccion int primary key auto_increment,
    linea1 varchar(100) not null,
    linea2 varchar(50),
    idDistrito char(5) not null,
    codigoPostal varchar(7)
);

-- Tabla Departamentos
create table departamentos(
	idDepartamento char(2) primary key,
    departamento varchar(25) not null,
    pais varchar(25) not null
);

-- Tabla Distritos
create table distritos(
	idDistrito char(5) primary key,
    distrito varchar(50) not null,
    idMunicipio char(3) not null
);

-- Tabla Municipios
create table municipios(
	idMunicipio char(3) primary key,
    municipio varchar(50) not null,
    idDepartamento char(2) not null
);

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

