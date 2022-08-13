delete from Perro where id_perro in (
select distinct perro from Historial where EXTRACT(YEAR FROM fecha) < 2010
)