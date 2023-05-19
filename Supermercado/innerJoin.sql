select
    *
from
    Producto
select
    *
from
    Proveedor
select
    *
from
    Categoria
select
    Proveedor.Nombre,
    Producto.Nombre
from
    Proveedor,
    Producto
where
    Proveedor.Proveedor_ID = Producto.Proveedor_ID
select
    Categoria.Nombre,
    Producto.Nombre
from
    Producto,
    Categoria
where
    Producto.Categoria_ID = Categoria.Categoria_ID
select
    Categoria.Nombre as 'Categoria',
    Producto.Nombre as 'Producto',
    Proveedor.Nombre as 'Proveedor'
from
    Producto
    inner join Categoria on Producto.Categoria_ID = Categoria.Categoria_ID
    inner join Proveedor on Producto.Proveedor_ID = Proveedor.Proveedor_ID
select
    Categoria.Nombre,
    Producto.Nombre,
    Proveedor.Nombre
from
    Producto
    inner join Categoria on Producto.Categoria_ID = Categoria.Categoria_ID
    inner join Proveedor on Producto.Proveedor_ID = Proveedor.Proveedor_ID