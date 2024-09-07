/* usuarios que solo tienen cedula de ciudadania */

select
	nombres,
	apellidos
from
	usuarios
where 
	id_tipo_documento =1;