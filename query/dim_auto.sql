CREATE TABLE dim_auto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(20) UNIQUE,
    nombre VARCHAR(100),
    precio DECIMAL(12,2),
    descripcion TEXT,
    imagen VARCHAR(255),
    categoria VARCHAR(50),
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT,
    destacado BOOLEAN,
    carroceria VARCHAR(50),
    tipo VARCHAR(50),
    combustible VARCHAR(30),
    transmision VARCHAR(30),
    colorExterior VARCHAR(30),
    colorInterior VARCHAR(30),
    interior VARCHAR(30),
    puertas INT,
    pasajeros INT,
    ubicacion VARCHAR(100)
);


INSERT INTO dim_auto  (id, placa, nombre, precio, descripcion, imagen, categoria, marca, modelo, año, destacado, carroceria, tipo, combustible, transmision, colorExterior, colorInterior, interior, puertas, pasajeros, ubicacion)
VALUES
(1, 'AP2743', 'Tesla Model S', 79990, 'El Tesla Model S ofrece un rendimiento excepcional con aceleración Ludicrous, autonomía líder en su clase y tecnología de vanguardia.', 'assets/img_car_sales/01_car_seles.PNG', 'eléctrico', 'Tesla', 'Model S', 2023, TRUE, 'Sedán', 'Carro', 'Eléctrico', 'Automática', 'Negro', 'Negro', 'Cuero', 4, 5, 'Sucursal Principal'),
(2, 'BZ1087', 'Porsche 911', 100000, 'Icono deportivo con más de 50 años de evolución. Motor trasero, tracción trasera y diseño inconfundible.', 'assets/img_car_sales/02_car_seles.PNG', 'deportivo', 'Porsche', '911', 2022, TRUE, 'Coupé', 'Carro', 'Gasolina', 'Automática', 'Gris', 'Negro', 'Cuero', 2, 4, 'Sucursal Costa del Este'),
(3, 'CR5629', 'Audi Q5', 65000, 'SUV premium con espacio, confort y tecnología Audi. Perfecto para familias que buscan elegancia y rendimiento.', 'assets/img_car_sales/03_car_seles.PNG', 'suv', 'Audi', 'Q5', 2024, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Blanco', 'Gris', 'Cuero', 5, 5, 'Sucursal Vía Brasil'),
(4, 'DF3456', 'Volkswagen Polo', 35000, 'El deportivo de la clase ejecutiva. Dinámica de conducción excepcional y diseño sofisticado.', 'assets/img_car_sales/04_car_seles.PNG', 'sedan', 'Volkswagen', 'Polo', 2013, TRUE, 'Sedán', 'Carro', 'Gasolina', 'Manual', 'Azul', 'Gris', 'Tela', 4, 5, 'Sucursal Vía España'),
(5, 'DL4390', 'Jeep Wrangler', 38995, 'El auténtico SUV todoterreno. Diseño icónico y capacidades off-road incomparables.', 'assets/img_car_sales/05_car_seles.PNG', '4x4', 'Jeep', 'Wrangler', 2025, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Verde', 'Negro', 'Tela', 4, 5, 'Sucursal Transístmica'),
(6, 'EM1234', 'Mercedes-Benz AMG GTR', 150000, 'Compacto premium con tecnología MBUX y diseño moderno. Elegancia en un formato urbano.', 'assets/img_car_sales/06_car_seles.PNG', 'deportivo', 'Mercedes-Benz', 'AMG GTR', 2018, TRUE, 'Coupé', 'Carro', 'Gasolina', 'Automática', 'Amarillo', 'Negro', 'Cuero', 2, 2, 'Sucursal Costa del Este'),
(7, 'CJ1234', 'BMW M5', 140000, 'Sedán deportivo de lujo con motorización híbrida enchufable. Combina un motor V8 biturbo de 4.4 litros con un motor eléctrico.', 'assets/img_car_sales/07_car_seles.PNG', 'deportivo', 'BMW', 'M5', 2025, TRUE, 'Sedán', 'Carro', 'Híbrido enchufable', 'Automática', 'Negro', 'Beige', 'Cuero', 4, 5, 'Sucursal Vía Israel'),
(8, 'CF1234', 'Suzuki Grand Vitara', 24000, 'Es un SUV compacto con diseño moderno y enfoque urbano, basado en la plataforma del S-Cross.', 'assets/img_car_sales/08_car_seles.PNG', 'suv', 'Suzuki Grand', 'Vitara', 2023, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Plata', 'Gris', 'Tela', 5, 5, 'Sucursal Los Pueblos'),
(9, 'AF7234', 'Hyundai Tucson', 23000, 'Es un SUV compacto que combina diseño moderno, tecnología y seguridad.', 'assets/img_car_sales/09_car_seles.PNG', 'suv', 'Hyundai', 'Tucson', 2023, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Rojo', 'Negro', 'Tela', 5, 5, 'Sucursal Vía Cincuentenario'),
(10, 'AZ9345', 'Toyota Hilux 2025', 35000, 'La Toyota Hilux es una 4x4 robusta y confiable, ideal para trabajos pesados y terrenos difíciles.', 'assets/img_car_sales/10_car_seles.PNG', '4x4', 'Toyota', 'Hilux', 2025, TRUE, 'Pickup', 'Camioneta', 'Diesel', 'Manual', 'Blanco', 'Gris', 'Tela', 4, 5, 'Sucursal Tocumen'),
(11, 'AC7215', 'Toyota Land Cruiser Pickup', 60000, 'Es una camioneta todoterreno de alta resistencia, ideal para trabajos en terrenos difíciles y condiciones extremas.', 'assets/img_car_sales/11_car_seles.PNG', '4x4', 'Toyota', 'Land Cruiser Pickup', 2020, FALSE, 'Pickup', 'Camioneta', 'Diesel', 'Manual', 'Beige', 'Negro', 'Tela', 2, 2, 'Sucursal David'),
(12, 'AX8456', 'BYD Dolphin', 29000, 'El BYD Dolphin es un hatchback eléctrico compacto, ideal para ciudad. Ofrece una autonomía de hasta 405 km.', 'assets/img_car_sales/12_car_seles.PNG', 'eléctrico', 'BYD', 'Dolphin', 2025, FALSE, 'Hatchback', 'Carro', 'Eléctrico', 'Automática', 'Azul', 'Gris', 'Tela', 5, 5, 'Sucursal Vía España'),
(13, 'AX8456', 'Chery eQ7', 42000, 'Es un SUV eléctrico del segmento C, con tracción trasera y una autonomía de hasta 512 km por carga (ciclo CLTC)', 'assets/img_car_sales/13_car_seles.PNG', 'eléctrico', 'Chery', 'eQ7', 2025, FALSE, 'SUV', 'Camioneta', 'Eléctrico', 'Automática', 'Plata', 'Negro', 'Tela', 5, 5, 'Sucursal San Miguelito');




INSERT INTO dim_auto  (id, placa, nombre, precio, descripcion, imagen, categoria, marca, modelo, año, destacado, carroceria, tipo, combustible, transmision, colorExterior, colorInterior, interior, puertas, pasajeros, ubicacion)
VALUES
(2, 'BZ1087', 'Porsche 911', 100000, 'Icono deportivo con más de 50 años de evolución. Motor trasero, tracción trasera y diseño inconfundible.', 'assets/img_car_sales/02_car_seles.PNG', 'deportivo', 'Porsche', '911', 2022, TRUE, 'Coupé', 'Carro', 'Gasolina', 'Automática', 'Gris', 'Negro', 'Cuero', 2, 4, 'Sucursal Costa del Este'),
(3, 'CR5629', 'Audi Q5', 65000, 'SUV premium con espacio, confort y tecnología Audi. Perfecto para familias que buscan elegancia y rendimiento.', 'assets/img_car_sales/03_car_seles.PNG', 'suv', 'Audi', 'Q5', 2024, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Blanco', 'Gris', 'Cuero', 5, 5, 'Sucursal Vía Brasil'),
(4, 'DF3456', 'Volkswagen Polo', 35000, 'El deportivo de la clase ejecutiva. Dinámica de conducción excepcional y diseño sofisticado.', 'assets/img_car_sales/04_car_seles.PNG', 'sedan', 'Volkswagen', 'Polo', 2013, TRUE, 'Sedán', 'Carro', 'Gasolina', 'Manual', 'Azul', 'Gris', 'Tela', 4, 5, 'Sucursal Vía España'),
(5, 'DL4390', 'Jeep Wrangler', 38995, 'El auténtico SUV todoterreno. Diseño icónico y capacidades off-road incomparables.', 'assets/img_car_sales/05_car_seles.PNG', '4x4', 'Jeep', 'Wrangler', 2025, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Verde', 'Negro', 'Tela', 4, 5, 'Sucursal Transístmica'),
(6, 'EM1234', 'Mercedes-Benz AMG GTR', 150000, 'Compacto premium con tecnología MBUX y diseño moderno. Elegancia en un formato urbano.', 'assets/img_car_sales/06_car_seles.PNG', 'deportivo', 'Mercedes-Benz', 'AMG GTR', 2018, TRUE, 'Coupé', 'Carro', 'Gasolina', 'Automática', 'Amarillo', 'Negro', 'Cuero', 2, 2, 'Sucursal Costa del Este'),
(7, 'CJ1234', 'BMW M5', 140000, 'Sedán deportivo de lujo con motorización híbrida enchufable. Combina un motor V8 biturbo de 4.4 litros con un motor eléctrico.', 'assets/img_car_sales/07_car_seles.PNG', 'deportivo', 'BMW', 'M5', 2025, TRUE, 'Sedán', 'Carro', 'Híbrido enchufable', 'Automática', 'Negro', 'Beige', 'Cuero', 4, 5, 'Sucursal Vía Israel'),
(8, 'CF1234', 'Suzuki Grand Vitara', 24000, 'Es un SUV compacto con diseño moderno y enfoque urbano, basado en la plataforma del S-Cross.', 'assets/img_car_sales/08_car_seles.PNG', 'suv', 'Suzuki Grand', 'Vitara', 2023, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Plata', 'Gris', 'Tela', 5, 5, 'Sucursal Los Pueblos'),
(9, 'AF7234', 'Hyundai Tucson', 23000, 'Es un SUV compacto que combina diseño moderno, tecnología y seguridad.', 'assets/img_car_sales/09_car_seles.PNG', 'suv', 'Hyundai', 'Tucson', 2023, FALSE, 'SUV', 'Camioneta', 'Gasolina', 'Automática', 'Rojo', 'Negro', 'Tela', 5, 5, 'Sucursal Vía Cincuentenario'),
(10, 'AZ9345', 'Toyota Hilux 2025', 35000, 'La Toyota Hilux es una 4x4 robusta y confiable, ideal para trabajos pesados y terrenos difíciles.', 'assets/img_car_sales/10_car_seles.PNG', '4x4', 'Toyota', 'Hilux', 2025, TRUE, 'Pickup', 'Camioneta', 'Diesel', 'Manual', 'Blanco', 'Gris', 'Tela', 4, 5, 'Sucursal Tocumen'),
(11, 'AC7215', 'Toyota Land Cruiser Pickup', 60000, 'Es una camioneta todoterreno de alta resistencia, ideal para trabajos en terrenos difíciles y condiciones extremas.', 'assets/img_car_sales/11_car_seles.PNG', '4x4', 'Toyota', 'Land Cruiser Pickup', 2020, FALSE, 'Pickup', 'Camioneta', 'Diesel', 'Manual', 'Beige', 'Negro', 'Tela', 2, 2, 'Sucursal David'),
(12, 'AX8456', 'BYD Dolphin', 29000, 'El BYD Dolphin es un hatchback eléctrico compacto, ideal para ciudad. Ofrece una autonomía de hasta 405 km.', 'assets/img_car_sales/12_car_seles.PNG', 'eléctrico', 'BYD', 'Dolphin', 2025, FALSE, 'Hatchback', 'Carro', 'Eléctrico', 'Automática', 'Azul', 'Gris', 'Tela', 5, 5, 'Sucursal Vía España'),
(13, 'AX8756', 'Chery eQ7', 42000, 'Es un SUV eléctrico del segmento C, con tracción trasera y una autonomía de hasta 512 km por carga (ciclo CLTC)', 'assets/img_car_sales/13_car_seles.PNG', 'eléctrico', 'Chery', 'eQ7', 2025, FALSE, 'SUV', 'Camioneta', 'Eléctrico', 'Automática', 'Plata', 'Negro', 'Tela', 5, 5, 'Sucursal San Miguelito');


