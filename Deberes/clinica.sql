--N�mero de pacientes que ingresan por fecha:
SELECT FechaIngreso, COUNT(*) AS NumeroPacientes
FROM Pacientes
GROUP BY FechaIngreso;

--N�mero de pacientes por cada doctor:
SELECT Doctores.Nombre, Doctores.Apellido, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Doctores ON Doctores.IdDoctor = Diagnostico.IdDoctor
GROUP BY Doctores.Nombre, Doctores.Apellido;

--Indicar la enfermedad que tiene m�s pacientes:
SELECT TOP 1 Enfermedades.Nombre, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Enfermedades ON Enfermedades.IdEnfermedad = Diagnostico.IdEnfermedad
GROUP BY Enfermedades.Nombre
ORDER BY COUNT(*) DESC;


--Indicar cu�l paciente ha tenido m�s enfermedades:
SELECT TOP 1 Pacientes.Nombre, Pacientes.Apellido, COUNT(*) AS NumeroEnfermedades
FROM Diagnostico
INNER JOIN Pacientes ON Pacientes.IdPaciente = Diagnostico.IdPaciente
GROUP BY Pacientes.Nombre, Pacientes.Apellido
ORDER BY COUNT(*) DESC;

--N�mero de pacientes poor doctor y por d�a
SELECT Doctores.Nombre, Doctores.Apellido, Pacientes.FechaIngreso, COUNT(*) AS NumeroPacientes
FROM Diagnostico
INNER JOIN Doctores ON Doctores.IdDoctor = Diagnostico.IdDoctor
INNER JOIN Pacientes ON Pacientes.IdPaciente = Diagnostico.IdPaciente
GROUP BY Doctores.Nombre, Doctores.Apellido, Pacientes.FechaIngreso;
