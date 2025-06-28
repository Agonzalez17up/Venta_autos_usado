
CREATE TABLE tb_best_car.fact_cotizaciones (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(30) UNIQUE,
    fecha DATE,
    cliente_nombre VARCHAR(100),
    cliente_telefono VARCHAR(30),
    cliente_email VARCHAR(100),
    auto_id INT,
    precio DECIMAL(12,2),
    FOREIGN KEY (auto_id) REFERENCES tb_best_car.dim_auto(id)
);

INSERT INTO tb_best_car.fact_cotizaciones (numero, fecha, cliente_nombre, cliente_telefono, cliente_email, auto_id, precio)
VALUES
('CT-001-20240618', '2025-06-18', 'Juan Pérez', '61234567', 'juan@email.com', 3, 65000);



select * from tb_best_car.fact_cotizaciones 

