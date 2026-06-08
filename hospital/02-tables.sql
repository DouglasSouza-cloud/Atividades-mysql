-- 1. CRIAR TABELA ESPECIALIDADES
CREATE TABLE Especialidades (
    id_especialidade INT AUTO_INCREMENT PRIMARY KEY,
    nome_especialidade VARCHAR(100) NOT NULL
);

-- 2. CRIAR TABELA MEDICOS
CREATE TABLE Medicos (
    id_medico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_especialidade INT NOT NULL,
    FOREIGN KEY (id_especialidade)
        REFERENCES Especialidades(id_especialidade)
);

-- 3. CRIAR TABELA PACIENTES
CREATE TABLE Pacientes (
    id_paciente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

-- 4. CRIAR TABELA CONSULTAS
CREATE TABLE Consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_medico INT NOT NULL,
    data_consulta DATE NOT NULL,
    valor DECIMAL(10,2) NOT NULL,

    FOREIGN KEY (id_paciente)
        REFERENCES Pacientes(id_paciente),

    FOREIGN KEY (id_medico)
        REFERENCES Medicos(id_medico)
);