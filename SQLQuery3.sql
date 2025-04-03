DROP TABLE Llamadas;
GO

CREATE TABLE Llamadas (
    id INT IDENTITY(1,1) PRIMARY KEY, 
    numero_origen VARCHAR(15) NOT NULL,  
    numero_destino VARCHAR(15) NOT NULL, 
    duracion INT NOT NULL, 
    costo DECIMAL(10,2) NOT NULL, 
    fecha_hora DATETIME DEFAULT GETDATE() 
);

-- Insertar datos en la tabla Llamadas
INSERT INTO Llamadas (numero_origen, numero_destino, duracion, costo)
VALUES 
    ('8091234567', '8097654321', 300, 15.75),
    ('8092345678', '8098765432', 150, 8.25);

-- Consultar los datos insertados
SELECT * FROM Llamadas;
