
CREATE TABLE tb_best_car.dim_Transmision (
    id_transmision VARCHAR(5) PRIMARY KEY,
    descripcion VARCHAR(30)
);

INSERT INTO tb_best_car.dim_Transmision (id_transmision, descripcion) VALUES
('aut', 'Automática'),
('man', 'Manual');

select * from dim_Transmision;

