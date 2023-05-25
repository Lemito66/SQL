SELECT        dbo.Cliente.Nombre, dbo.Detalle.Cantidad, dbo.Producto.Precio
FROM            dbo.Cliente INNER JOIN
                         dbo.Factura ON dbo.Cliente.Cliente_ID = dbo.Factura.Cliente_ID INNER JOIN
                         dbo.Detalle ON dbo.Factura.Factura_ID = dbo.Detalle.Factura_ID INNER JOIN
                         dbo.Producto ON dbo.Detalle.Producto_ID = dbo.Producto.Producto_ID