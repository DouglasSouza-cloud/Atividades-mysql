SELECT M.nome,
       max(M.salario),
       E.nome,
       M.crm 
FROM Medicos AS M
JOIN Especialidades AS E
ON M.id_especialidade=
   E.id_especialidade
   GROUP BY M.nome, E.nome,M.crm
   ORDER BY max(salario) desc;

select M.nome, M.email, E.nome, COUNT (C.id_consulta), M.salario
from Medicos as M
join Especialidades as E
on M.id_especialidade = E.id_especialidade
join Consultas AS C
on  M.id_medico = C.id_medico
group by M.id_medico;

SELECT M.nome, M.email, M.telefone, E.nome as especialidade, H.nome as Hospital, COUNT(Exames.id_exame) as Exames_solicitados
FROM Medicos as M
JOIN Especialidades AS E ON M.id_especialidade = E.id_especialidade
JOIN Hospitais AS H ON M.id_hospital = H.id_hospital
JOIN Exames ON M.id_medico = Exames.id_medico
GROUP BY M.id_medico;

SELECT M.nome,P.nome,C.data_consulta
FROM Medicos AS M, Pacientes AS P, Consultas AS C
WHERE C.id_medico = M.id_medico
AND C.id_paciente = P.id_paciente;