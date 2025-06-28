-- Tabla de facturadas (solo cotizaciones facturadas)
CREATE TABLE tb_best_car.fact_facturadas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cotizacion_id INT NOT NULL,
    fecha_factura DATE NOT NULL,
    numero_factura VARCHAR(50) NOT NULL,
    monto_total DECIMAL(12,2) NOT NULL,
    cliente_nombre VARCHAR(100),
    cliente_telefono VARCHAR(30),
    cliente_email VARCHAR(100),
    auto_id INT,
    FOREIGN KEY (cotizacion_id) REFERENCES tb_best_car.fact_cotizaciones(id),
    FOREIGN KEY (auto_id) REFERENCES tb_best_car.dim_auto(id)
) ENGINE=InnoDB;


INSERT INTO tb_best_car.fact_facturadas (
    cotizacion_id,
    fecha_factura,
    numero_factura,
    monto_total,
    cliente_nombre,
    cliente_telefono,
    cliente_email,
    auto_id
) VALUES (
    1, -- id de la cotización facturada
    '2025-06-19', -- fecha de la factura
    'F-20250619-001', -- número de factura
    65000, -- monto total facturado
    'Juan Pérez', -- nombre del cliente
    '61234567', -- teléfono del cliente
    'juan@email.com', -- email del cliente
    3 -- id del auto
);



select * from tb_best_car.fact_facturadas

