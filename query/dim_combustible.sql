CREATE TABLE tb_best_car.dim_combustible (
    id_combustible VARCHAR(5) PRIMARY KEY,
    descripcion VARCHAR(50)
);

INSERT INTO tb_best_car.dim_combustible (id_combustible, descripcion) VALUES
('ele', 'Eléctrico'),
('gas', 'Gasolina'),
('hib', 'Híbrido enchufable'),
('die', 'Diesel');

select * from dim_Combustible;


CREATE TABLE tb_best_car.dim_Transmision (
    id_transmision VARCHAR(5) PRIMARY KEY,
    descripcion VARCHAR(30)
);