SELECT 
    E.nome_especialidade,
    COUNT(C.id_consulta) AS TotalConsultas,
    AVG(C.valor) AS MediaConsultas,
    SUM(C.valor) AS Faturamento

FROM Consultas AS C
JOIN Medicos AS M
ON C.id_medico = M.id_medico
JOIN Especialidades AS E
ON M.id_especialidade = E.id_especialidade
GROUP BY E.nome_especialidade
HAVING SUM(C.valor) > 1000
ORDER BY Faturamento DESC;