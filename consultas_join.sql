/* productos que pertenecen al tipo de producto "herramientas" */

select
	usuarios.nombres,
    usuarios.apellidos,
    productos.nombre_producto
    from
		usuarios
    join
		facturas on usuarios.id_usuarios = facturas.id_usuarios
	join
		factura_productos on facturas.id_facturas = factura_productos.id_facturas
	join
		productos on factura_productos.id_factura_producto = productos.id_productos;