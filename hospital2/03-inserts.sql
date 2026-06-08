-- HOSPITAIS
INSERT INTO Hospitais (nome, cidade, estado, endereco) VALUES
('Hospital São Lucas', 'Florianópolis', 'SC', 'Rua Central, 100'),
('Hospital Vida', 'São José', 'SC', 'Av. Brasil, 200');

-- ESPECIALIDADES
INSERT INTO Especialidades (nome) VALUES
('Cardiologia'),
('Ortopedia'),
('Pediatria'),
('Neurologia');

-- CONVENIOS
INSERT INTO Convenios (nome, telefone, cobertura) VALUES
('Unimed', '4833334444', 'Completa'),
('Bradesco Saúde', '4833335555', 'Completa'),
('Amil', '4833336666', 'Parcial');

-- SETORES
INSERT INTO Setores (nome) VALUES
('Recepção'),
('Enfermagem'),
('Laboratório'),
('Financeiro');

-- MEDICOS
INSERT INTO Medicos
(nome, crm, telefone, email, salario, id_especialidade, id_hospital)
VALUES
('Carlos Silva', 'CRM12345', '48999990001', 'carlos@hospital.com', 15000.00, 1, 1),
('Ana Souza', 'CRM12346', '48999990002', 'ana@hospital.com', 17000.00, 2, 1),
('Pedro Santos', 'CRM12347', '48999990003', 'pedro@hospital.com', 14000.00, 3, 2);

-- PACIENTES
INSERT INTO Pacientes
(nome, cpf, data_nascimento, telefone, email, endereco, tipo_sanguineo, alergias)
VALUES
('João Pereira', '11111111111', '1990-05-10', '48988880001', 'joao@gmail.com', 'Rua A', 'O+', 'Nenhuma'),
('Maria Oliveira', '22222222222', '1985-03-15', '48988880002', 'maria@gmail.com', 'Rua B', 'A+', 'Dipirona'),
('Lucas Costa', '33333333333', '2000-08-20', '48988880003', 'lucas@gmail.com', 'Rua C', 'B+', 'Penicilina');

-- MEDICAMENTOS
INSERT INTO Medicamentos
(nome, fabricante, estoque, preco)
VALUES
('Paracetamol', 'EMS', 500, 12.50),
('Ibuprofeno', 'Neo Química', 300, 18.90),
('Amoxicilina', 'Medley', 200, 25.00);

-- QUARTOS
INSERT INTO Quartos
(numero, tipo, capacidade, status_quarto, id_hospital)
VALUES
('101', 'Individual', 1, 'Disponível', 1),
('102', 'Duplo', 2, 'Ocupado', 1),
('201', 'UTI', 1, 'Disponível', 2);

-- FUNCIONARIOS
INSERT INTO Funcionarios
(nome, cpf, cargo, salario, id_setor, id_hospital)
VALUES
('Fernanda Lima', '44444444444', 'Recepcionista', 2500.00, 1, 1),
('Ricardo Alves', '55555555555', 'Enfermeiro', 4200.00, 2, 1),
('Juliana Rocha', '66666666666', 'Analista Financeiro', 5000.00, 4, 2);

-- PACIENTE CONVENIO
INSERT INTO PacienteConvenio
(id_paciente, id_convenio, numero_carteira)
VALUES
(1,1,'UNI123'),
(2,2,'BRA456'),
(3,3,'AMI789');

-- CONSULTAS
INSERT INTO Consultas
(data_consulta, diagnostico, observacoes, valor, id_paciente, id_medico)
VALUES
('2026-06-01 10:00:00','Hipertensão','Monitorar pressão',250.00,1,1),
('2026-06-02 14:00:00','Fratura','Necessita fisioterapia',300.00,2,2),
('2026-06-03 09:00:00','Gripe','Repouso e hidratação',180.00,3,3);

-- RECEITAS
INSERT INTO Receitas
(id_consulta, data_receita, observacoes)
VALUES
(1,'2026-06-01','Uso contínuo'),
(2,'2026-06-02','Tomar após refeições');

-- RECEITA MEDICAMENTO
INSERT INTO ReceitaMedicamento
(id_receita, id_medicamento, dosagem, frequencia)
VALUES
(1,1,'500mg','8 em 8 horas'),
(2,2,'400mg','12 em 12 horas');

-- EXAMES
INSERT INTO Exames
(nome, resultado, data_exame, id_paciente, id_medico)
VALUES
('Hemograma','Normal','2026-06-01',1,1),
('Raio-X','Fratura identificada','2026-06-02',2,2),
('Teste de Influenza','Positivo','2026-06-03',3,3);

-- INTERNACOES
INSERT INTO Internacoes
(data_entrada, data_saida, motivo, id_paciente, id_quarto)
VALUES
('2026-06-01 08:00:00','2026-06-05 10:00:00','Cirurgia',1,2),
('2026-06-03 12:00:00',NULL,'Observação',2,3);

-- PAGAMENTOS
INSERT INTO Pagamentos
(valor, data_pagamento, forma_pagamento, id_consulta)
VALUES
(250.00,'2026-06-01','Cartão',1),
(300.00,'2026-06-02','PIX',2),
(180.00,'2026-06-03','Dinheiro',3);

-- USUARIOS DO SISTEMA
INSERT INTO UsuariosSistema
(usuario, senha_hash, nivel_acesso)
VALUES
('admin','hash_admin','Administrador'),
('recepcao','hash_recepcao','Operador');

-- LOGS
INSERT INTO Logs
(acao, data_log, id_usuario)
VALUES
('Cadastro de paciente','2026-06-01 09:00:00',1),
('Consulta agendada','2026-06-02 10:00:00',2);