-- Mostrar una lista de los productos que se tienen a la venta, con los detalles del 
-- tipo de producto, presentación, proveedor (si lo tiene, y sino indicar que es de 
-- manufactura propia)
SELECT 
    pro.nombreProducto, 
    cat.categoria,
    men.nombreMenu
FROM productos pro
    INNER JOIN categorias cat ON pro.idCategoria = cat.idCategoria
    INNER JOIN menus men ON pro.idMenu = men.idMenu;
        
    
-- Mostrar una lista de las ventas realizadas, con los detalles del cliente que compró, 
-- el vendedor, y el monto de la venta incluyendo impuestos fiscales como el IVA y
-- crédito fiscal (si está registrando este último).   
SELECT
    v.fechaVenta AS Fecha_Venta,
    c.nombreCliente AS Cliente,
    CONCAT(e.nombresEmpleado, ' ', e.apellidosEmpleado) AS Vendedor,
    SUM(dvp.cantidadVender * dvp.precioUnitario) AS Monto_Venta_Sin_IVA,
    v.IVA AS IVA,
    v.montoTotal AS Monto_Total_Con_IVA
FROM ventaproductos v
INNER JOIN clientes c ON v.idCliente = c.idCliente
INNER JOIN empleados e ON v.idEmpleado = e.idEmpleado
INNER JOIN detallesVentasP dvp ON v.idVentaProducto = dvp.idVentaProducto
GROUP BY v.idVentaProducto;