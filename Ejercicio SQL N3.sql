delete from Perro where id_perro in (
select id_perro from Historial where EXTRACT(YEAR FROM fecha) < 2010
)