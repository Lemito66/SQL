--Número de pacientes que ingresan por fecha:
SELECT FechaIngreso, COUNT(*) AS NumeroPacientes
FROM Pacientes
GROUP BY FechaIngreso;

--Número de pacientes por cada doctor:
SELECT Doctores.Nombre, Doctores.Apellido, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Doctores ON Doctores.IdDoctor = Diagnostico.IdDoctor
GROUP BY Doctores.Nombre, Doctores.Apellido;

--Indicar la enfermedad que tiene más pacientes:
SELECT TOP 1 Enfermedades.Nombre, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Enfermedades ON Enfermedades.IdEnfermedad = Diagnostico.IdEnfermedad
GROUP BY Enfermedades.Nombre
ORDER BY COUNT(*) DESC;


--Indicar cuál paciente ha tenido más enfermedades:
SELECT TOP 1 Pacientes.Nombre, Pacientes.Apellido, COUNT(*) AS NumeroEnfermedades
FROM Diagnostico
INNER JOIN Pacientes ON Pacientes.IdPaciente = Diagnostico.IdPaciente
GROUP BY Pacientes.Nombre, Pacientes.Apellido
ORDER BY COUNT(*) DESC;

--Número de pacientes poor doctor y por día
SELECT Doctores.Nombre, Doctores.Apellido, Pacientes.FechaIngreso, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Doctores ON Doctores.IdDoctor = Diagnostico.IdDoctor
INNER JOIN Pacientes ON Pacientes.IdPaciente = Diagnostico.IdPaciente
GROUP BY Doctores.Nombre, Doctores.Apellido, Pacientes.FechaIngreso;
