CREATE TABLE tb_best_car.marcas (
    id_pais_origen INT PRIMARY KEY,
    nombre VARCHAR(100),
    pais_origen VARCHAR(100)
);


INSERT INTO tb_best_car.marcas (nombre,pais_origen) VALUES
	 ('Tesla','USA'),
	 ('Porsche','DEU'),
	 ('Audi','DEU'),
	 ('Volkswagen','DEU'),
	 ('Jeep','USA'),
	 ('Mercedes-Benz','DEU'),
	 ('BMW','DEU'),
	 ('Suzuki','JPN'),
	 ('Hyundai','KOR'),
	 ('Toyota','JPN'),  
	 ('BYD','CHN'),
	 ('Chery','CHN');


select * from tb_best_car.marcas