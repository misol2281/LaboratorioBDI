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
	idCargo int primary key,
    cargo varchar(30) not null,
    idEmpleado int not null
);

-- Tabla Clientes
create table clientes(
	idCliente int primary key,
    nombreCliente varchar(45) not null,
    telefonoCliente varchar(9) not null,
    correoCliente varchar(30) not null
);

-- Tabla de Ingredientes
create table ingredientes(
	idIngrediente int primary key,
    nombreIngrediente varchar(30) not null,
    idUnidadMedida int not null,
    idCategoria int not null,
    precioUnitario decimal(10,2) not null,
    fechaCaducidad Date not null,
    stockCritico int not null,
    descripcionIngrediente int not null,
    idInventario int
);

-- Tabla de Inventarios
create table inventario(
	idInventario int primary key,
    idAlmacenamiento int not null,
    stockActual int not null,
    fechaActualizacion date
);

-- Tabla almacenamientos
create table almacenamientos(
	idAlmacenamiento int primary key,
    nombreAlmacenamiento varchar(45) not null,
    descripcion varchar(45) not null,
    ubicacion varchar(55) not null
);

-- Tabla CompraIngredientes
create table compraIngredientes(
	idCompra int primary key,
    fechaCompra datetime not null,
    montoCompra decimal(10,2) not null,
    idProveedor int not null
);

-- Tabla Detalles de Compra
create table detallesCompra(
	idDetalleCompra int primary key,
    idCompra int not null,
    idIngrediente int not null, -- idInsumo????
    CantidadComprar decimal not null,
    precioUnitario decimal(10,2) not null,
    subTotal decimal(10,2) not null
);

-- Tabla Proveedores
create table proveedores(
	idProveedor int primary key,
    nombreProveedor varchar(50) not null,
    telefono varchar(9) not null,
    telefono2 varchar(9) not null, 
    idDireccion int not null
);

-- Tabla Compra Productos
create table compraProductos(
	idCompraProducto int primary key,
    fechaCompra date not null,
    montoCompra decimal(10,2) not null,
    idProveedor int not null
);

-- Tabla Detalle Compra
create table detalleCompraP(
	idDetalleCompraP int primary key,
    idProducto int not null,
    cantidadCompra int,
    precioUnitario decimal(10,2) not null,
    subTotal decimal(10,2) not null,
    idCompraProducto int not null
);

-- Tabla Ventas Productos
create table ventaProductos(
	idVentaProducto int primary key,
    IVA decimal(1,2) not null,
    descuento decimal(1,2) not null,
    montoTotal decimal(10,2) not null,
    fechaVenta datetime not null,
    idEmpleado int not null,
    idCliente int not null
);

-- Tabla Detalles VentasP
create table detallesVentasP(
	idDetalleVenta int primary key,
    idProducto int not null,
    cantidadVender int not null,
    precioUnitario decimal(10,2),
    subTotal decimal(10,2),
    idVentaProducto int not null
);

-- Tabla Unidad de Medidas
create table unidadMedidas(
	idUnidadMedidad int primary key,
    unidadMedida varchar(45)
);

-- Tabla Productos
create table productos(
	idProducto int primary key,
    nombreProducto varchar(45) not null,
    precioUnitario decimal(10,2) not null,
    fechaCaducidad date not null,
    stockCritico int not null,
    descripcionProducto varchar(45) not null,
    idCategoria int not null,
    idUnidadMedida int not null,
    idMenu int not null,
    idInventario int not null
);

-- Tabla Categoria
create table categoria(
	idCategoria int primary key,
    categoria varchar(30) not null
);

-- Tabla Menu
create table menu(
	idMenu int primary key,
    nombreMenu varchar(40) not null,
    descripcion varchar(45) not null
);

-- Tabla Producto Final
create table productoFinal(
	idProductoFinal int primary key,
    nombreProducto varchar(30) not null,
    stockCritico int not null,
    precioProducto decimal(10,2) not null,
    fechaCaducidad date not null,
    descripcionProducto varchar(45) not null,
    idMenu int not null,
    idInventario int not null
);

-- Tabla Recetas
create table recetas(
	idReceta int primary key,
    nombreReceta varchar(45) not null,
    idProductoFinal int not null,
    idIngrediente int not null,
    cantidadIngrediente int
);

-- Tabla Ventas Ingredientes 
create table ventasIngredientes(
	idVentaIngrediente int primary key,
    IVA decimal(1,2) not null,
    descuento decimal(1,2) not null,
    montoTotal decimal(10,2) not null,
    fechaVenta datetime not null,
    idEmpleado int not null,
    idCliente int not null
);

-- Tabla Detalles de Venta Ingredientes
create table detallesVentaI(
	idDetalleVentaI int primary key,
    idVentaIngrediente int not null,
    idIngrediente int not null,
    cantidadVender int not null,
    precioUnitario decimal(10,2),
    subTotal decimal(10,2)
);

-- Tabla Pedidos
create table pedidos(
	idPedido int primary key,
    idCliente int not null,
    metodoPago enum('EFECTIVO', 'TARJETA') not null,
    IVA decimal(10,2) not null,
    descuento decimal(10,2) not null,
    monto decimal(10,2) not null,
    fechaVenta datetime not null,
    estadoPedido enum('Pendiente', 'En proceso', 'Enviado', 'Entregado', 'Cancelado', 'En espera', 'Devuelto') not null,
    idEmpleado int not null
);

-- Tabla Detalles Pedidos
create table detallesPedidos(
	idDetallePedido int primary key,
    idPedido int not null,
    idProductoFinal int not null,
    precioProducto decimal(10,2) not null,
    cantidadVendida int not null,
    subTotal decimal(10,2) not null
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

create table roles(
	idRol int primary key auto_increment,
    rol varchar(50) not null
);

create table opciones(
	idOpcion int primary key auto_increment,
    opcion varchar(50) not null
);

create table asignacionRolesOpciones(
	idAsignacion int primary key auto_increment,
    idRol int not null,
    idOpcion int not null
);

create table usuarios(
	idUsuario int primary key auto_increment,
    idRol int not null,
    idOpcion int not null
);