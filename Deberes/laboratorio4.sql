select distinct estudiante.nombre from estudiante where estudiante.edad > 5 and estudiante.edad <= 50 or estudiante.edad between 5 and 50 and estudiante.nombre like '%em' and estudiante.nombre in('Emill')

select * from dbo.View_1_SoloOctavo


SELECT        dbo.curso.nombre AS Curso, dbo.profesor.nombre AS Profesor, dbo.materia.nombre AS Materia, dbo.estudiante.nombre
FROM            dbo.curso INNER JOIN
                         dbo.estudiante ON dbo.curso.estudiante_id = dbo.estudiante.estudiante_id INNER JOIN
                         dbo.profesor ON dbo.curso.profesor_id = dbo.profesor.profesor_id INNER JOIN
                         dbo.materia ON dbo.profesor.materia_id = dbo.materia.materia_id
WHERE        (dbo.curso.nombre = '8vo')



SELECT        dbo.estudiante.nombre AS Expr1, dbo.curso.nombre AS Expr2, dbo.curso.estudiante_id AS Expr3, dbo.curso.profesor_id AS Expr4, dbo.curso.curso_id, dbo.curso.nombre, dbo.curso.estudiante_id, dbo.curso.profesor_id
FROM            dbo.curso INNER JOIN
                         dbo.estudiante ON dbo.curso.estudiante_id = dbo.estudiante.estudiante_id LEFT OUTER JOIN
                         dbo.profesor ON dbo.curso.profesor_id = dbo.profesor.profesor_id LEFT OUTER JOIN
                         dbo.materia ON dbo.profesor.materia_id = dbo.materia.materia_id

SELECT        dbo.estudiante.estudiante_id, dbo.estudiante.nombre, dbo.estudiante.edad, dbo.estudiante.estudiante_id AS Expr9, dbo.estudiante.edad AS Expr1, dbo.estudiante.nombre AS Expr10, dbo.curso.nombre AS Expr2
FROM            dbo.curso INNER JOIN
                         dbo.estudiante ON dbo.curso.estudiante_id = dbo.estudiante.estudiante_id RIGHT OUTER JOIN
                         dbo.profesor ON dbo.curso.profesor_id = dbo.profesor.profesor_id RIGHT OUTER JOIN
                         dbo.materia ON dbo.profesor.materia_id = dbo.materia.materia_id