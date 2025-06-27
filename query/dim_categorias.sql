CREATE TABLE tb_best_car.Categorias (
    ID_Categoria INT PRIMARY KEY,   --- llave primaria
    Nombre_Categoria VARCHAR(50),
    Descripcion TEXT
);

INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (1, 'Pickup', 'Vehículos con caja de carga, ideales para trabajo y transporte.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (2, '4x4 / SUV Off-Road', 'Vehículos con tracción en las cuatro ruedas, diseñados para terrenos difíciles.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (3, 'Deportivo', 'Autos diseñados para alto rendimiento y velocidad.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (4, 'Eléctrico', 'Vehículos impulsados por motores eléctricos.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (5, 'Sedán', 'Autos de cuatro puertas, cómodos para uso familiar o ejecutivo.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (6, 'Hatchback', 'Autos compactos con puerta trasera que se abre hacia arriba.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (7, 'Crossover', 'Mezcla entre SUV y sedán, más compactos y urbanos.');
INSERT INTO tb_best_car.Categorias (ID_Categoria, Nombre_Categoria, Descripcion) VALUES (8, 'Lujo', 'Vehículos con acabados premium y tecnología avanzada.');



select * from tb_best_car.categorias
