CREATE TABLE dml (
    socio SERIAL PRIMARY KEY,
    nome varchar(20) NOT NULL,
    observacions TEXT NOT NULL,
    cantidade INTEGER NOT NULL,
	dataAlta DATE NOT NULL
);

INSERT INTO dml (nome, observacions, cantidade, dataAlta)
VALUES
    ('David', 'Este es el creador de la tabla', 26, '2025-11-12'),
    ('Ana Garcia', 'Cliente VIP con muchas compras recientes', 150, '2023-05-20'),
    ('Luis M.', 'Usuario pendiente de revisión por falta de datos', 5, '2022-03-15'),
    ('Maria Lopez', 'Texto de observación extremadamente largo para probar que el campo text funciona correctamente sin límite corto', 10, '2024-01-10'),
    ('Pedro', 'Sin observaciones', 0, '2023-12-01'),
    ('Lucia', 'Alta nueva desde la web', 33, '2022-08-25');
	 
 
 SELECT * FROM dml;
 
 SELECT * 
 FROM dml
 ORDER BY dataAlta DESC;
 
 SELECT *
 FROM dml
 ORDER BY dataAlta ASC
 LIMIT 1;
 
 
 --DROP TABLE res_dml