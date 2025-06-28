
CREATE TABLE tb_best_car.fact_contactos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(30),
    asunto VARCHAR(100),
    preferencia_contacto VARCHAR(30),
    mensaje TEXT,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO tb_best_car.fact_contactos (nombre, email, telefono, asunto, preferencia_contacto, mensaje)
VALUES
('Ana Gómez', 'ana@email.com', '69998877', 'Consulta por Audi Q5', 'WhatsApp', 'Me gustaría saber si el Audi Q5 está disponible y si aceptan autos usados como parte de pago.');

select * from tb_best_car.fact_contactos