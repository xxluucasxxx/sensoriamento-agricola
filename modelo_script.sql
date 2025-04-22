CREATE TABLE Cultura (
    id_cultura INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Local_Plantacao (
    id_local INT PRIMARY KEY,
    nome_local VARCHAR(100) NOT NULL
);

CREATE TABLE Sensor (
    id_sensor INT PRIMARY KEY,
    tipo_sensor VARCHAR(50) NOT NULL
);

CREATE TABLE Leitura_Sensor (
    id_leitura INT PRIMARY KEY,
    id_sensor INT,
    id_local INT,
    data_hora TIMESTAMP NOT NULL,
    valor DOUBLE,
    FOREIGN KEY (id_sensor) REFERENCES Sensor(id_sensor),
    FOREIGN KEY (id_local) REFERENCES Local_Plantacao(id_local)
);

CREATE TABLE Aplicacao_Agua (
    id_aplicacao INT PRIMARY KEY,
    id_local INT,
    data_hora TIMESTAMP NOT NULL,
    quantidade_agua DOUBLE NOT NULL,
    FOREIGN KEY (id_local) REFERENCES Local_Plantacao(id_local)
);

CREATE TABLE Aplicacao_Nutriente (
    id_aplicacao INT PRIMARY KEY,
    id_local INT,
    data_hora TIMESTAMP NOT NULL,
    tipo_nutriente VARCHAR(50),
    quantidade DOUBLE,
    FOREIGN KEY (id_local) REFERENCES Local_Plantacao(id_local)
);

CREATE TABLE Cultura_Local (
    id_cultura INT,
    id_local INT,
    PRIMARY KEY (id_cultura, id_local),
    FOREIGN KEY (id_cultura) REFERENCES Cultura(id_cultura),
    FOREIGN KEY (id_local) REFERENCES Local_Plantacao(id_local)
);
