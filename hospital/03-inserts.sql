-- POPULAR TABELA ESPECIALIDADES

INSERT INTO Especialidades (nome_especialidade) VALUES
('Cardiologia'),
('Pediatria'),
('Clínica Geral');

-- POPULAR TABELA MEDICOS

INSERT INTO Medicos (nome, id_especialidade) VALUES
('Dr. Silva', 1),
('Dra. Maria', 2),
('Dr. Roberto', 3);

-- POPULAR TABELA PACIENTES

INSERT INTO Pacientes (nome, data_nascimento) VALUES
('Carlos Souza', '1985-05-12'),
('Ana Costa', '1990-08-22'),
('Bruno Lima', '2015-03-10'),
('Mariana Dias', '1978-11-04');

-- POPULAR TABELA CONSULTAS

INSERT INTO Consultas (id_paciente, id_medico, data_consulta, valor) VALUES
(1, 1, '2026-01-10', 150.00),
(1, 1, '2026-02-15', 200.00),
(2, 1, '2026-01-12', 120.00),
(3, 2, '2026-03-01', 350.00),
(2, 1, '2026-03-05', 120.00),
(4, 1, '2026-04-18', 250.00),
(1, 1, '2026-05-20', 180.00),
(3, 3, '2026-05-21', 150.00);