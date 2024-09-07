/* todos los usuarios con su tipo de documento */

SELECT 
    nombre_producto, 
    precio
FROM 
    productos
WHERE 
    id_tipo_producto IN (SELECT id_tipo_producto FROM tipo_producto WHERE tipo_de_producto = 'Herramientas');
