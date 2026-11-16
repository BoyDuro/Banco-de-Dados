CREATE TABLE Cliente(
	id INT IDENTITY(1,1) NOT NULL,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	fone VARCHAR(17) NOT NULL,
	PRIMARY KEY(id)
)

CREATE TABLE Servico(
	id INT IDENTITY(1,1) NOT NULL,
	descricao VARCHAR(250) NOT NULL,
	valor INT NOT NULL,
	PRIMARY KEY(id)
)

CREATE TABLE Horario(
	id INT IDENTITY(1,1) NOT NULL,
	data DATETIME NOT NULL,
	confirmado BIT NOT NULL,
	id_cliente INT NOT NULL,
	id_servico INT NOT NULL,
	FOREIGN KEY(id_cliente) REFERENCES Cliente(id)
	FOREIGN KEY(id_servico) REFERENCES Servico(id)
)
