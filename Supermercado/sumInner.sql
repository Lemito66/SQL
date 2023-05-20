select * from Cliente

select distinct nombre from Cliente

select * from Cliente where Cliente.Cliente_ID >6 and Cliente.Nombre = 'Andres' and Cliente.Identificacion = '55555'

select SUM(cliente_id) from Cliente

select nombre, COUNT(nombre) as numeroNombre from Cliente group by Nombre
select nombre, COUNT(nombre) as numeroNombre from Cliente where nombre = 'Silvana' group by Nombre

select nombre from Cliente

select * from Cliente
select * from Cliente where Cliente_ID between 6 and 8

select * from Factura
select * from Factura where YEAR(fecha)= 2023 and  MONTH(fecha) = 4 and DAY(fecha)=3
select * from Factura where YEAR(fecha) between 2022 and 2023


select * from Producto
select Proveedor.Nombre, *from Producto inner join Proveedor on Proveedor.Proveedor_ID = Producto.Producto_ID
select Proveedor.Nombre, producto.Nombre, Unidad_Medida, Precio from  Producto inner join Proveedor on Proveedor.Proveedor_ID = Producto.Producto_ID

select Proveedor.Nombre, producto.Nombre, Unidad_Medida, Precio from  Producto 
inner join Proveedor on Proveedor.Proveedor_ID = Producto.Producto_ID 
inner join Categoria on Categoria.Categoria_ID = Producto.Producto_ID 
--where Unidad_Medida='1'

