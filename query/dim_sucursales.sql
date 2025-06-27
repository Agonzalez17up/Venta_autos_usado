CREATE TABLE tb_best_car.dim_sucursales (
    codigo_sucursal VARCHAR(15) PRIMARY KEY,
    nombre_sucursal VARCHAR(100),
    provincia VARCHAR(50),
    distrito VARCHAR(50),
    corregimiento VARCHAR(50)
);

INSERT INTO tb_best_car.dim_sucursales (codigo_sucursal, nombre_sucursal, provincia, distrito, corregimiento) VALUES
('08-001-001', 'Sucursal Costa del Este', 'Panamá', 'Panamá', 'Juan Díaz'),
('08-001-002', 'Sucursal Vía Brasil', 'Panamá', 'Panamá', 'San Francisco'),
('08-001-003', 'Sucursal Vía España', 'Panamá', 'Panamá', 'Bella Vista'),
('08-001-004', 'Sucursal Transístmica', 'Panamá', 'Panamá', 'Bethania'),
('08-001-005', 'Sucursal Vía Israel', 'Panamá', 'Panamá', 'San Francisco'),
('08-001-006', 'Sucursal Los Pueblos', 'Panamá', 'Panamá', 'Don Bosco'),
('08-001-007', 'Sucursal Vía Cincuentenario', 'Panamá', 'Panamá', 'Parque Lefevre'),
('08-001-008', 'Sucursal Tocumen', 'Panamá', 'Panamá', 'Tocumen'),
('04-001-001', 'Sucursal David', 'Chiriquí', 'David', 'David'),
('08-001-009', 'Sucursal Principal', 'Panamá', 'Panamá', 'Betania'),
('08-002-001', 'Sucursal San Miguelito', 'Panamá', 'San Miguelito', 'Amelia Denis de Icaza');

select * from tb_best_car.dim_sucursales
