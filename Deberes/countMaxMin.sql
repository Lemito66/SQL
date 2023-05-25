select COUNT(edad) contador from estudiante 

select AVG(edad) promedio from estudiante


select MIN(edad) minimo from estudiante

select max(edad) máximo from estudiante

select estudiante.edad from estudiante where estudiante.edad > 5 group by edad

select estudiante.edad from estudiante where estudiante.edad > 5 group by edad having count (estudiante.edad)>10

