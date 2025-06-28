-- CREATE TABLES

-- Tabla de marcas: almacena las marcas de autos
CREATE TABLE marcas (
    id SERIAL PRIMARY KEY, -- Llave primaria
    nombre VARCHAR(100) NOT NULL,
    pais_origen VARCHAR(100)
);

-- Tabla de categorías: almacena los tipos de autos
CREATE TABLE categorias (
    id SERIAL PRIMARY KEY, -- Llave primaria
    nombre VARCHAR(100) NOT NULL
);

-- Tabla de autos: almacena los autos en venta
CREATE TABLE autos (
    id SERIAL PRIMARY KEY, -- Llave primaria
    placa VARCHAR(10) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    descripcion TEXT,
    imagen VARCHAR(255),
    categoria_id INT REFERENCES categorias(id), -- Llave foránea a categorías
    marca_id INT REFERENCES marcas(id),         -- Llave foránea a marcas
    modelo VARCHAR(100),
    año INT,
    destacado BOOLEAN DEFAULT FALSE
);

-- Tabla de usuarios: almacena los usuarios registrados
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY, -- Llave primaria
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- INSERTS

-- Inserta marcas de autos
INSERT INTO marcas (nombre) VALUES
('Tesla'),
('Porsche'),
('Audi'),
('Volkswagen'),
('Jeep'),
('Mercedes-Benz'),
('BMW'),
('Suzuki Grand'),
('Hyundai'),
('Toyota'),
('BYD'),
('Chery');

-- Inserta categorías de autos
INSERT INTO categorias (nombre) VALUES
('eléctrico'),
('deportivo'),
('suv'),
('sedan'),
('4x4');

-- Inserta autos con sus respectivas relaciones de marca y categoría
INSERT INTO autos (placa, nombre, precio, descripcion, imagen, categoria_id, marca_id, modelo, año, destacado) VALUES
('AP2743', 'Tesla Model S', 79990, 'El Tesla Model S ofrece un rendimiento excepcional con aceleración Ludicrous, autonomía líder en su clase y tecnología de vanguardia.', 'assets/img_car_sales/01_car_seles.PNG', 1, 1, 'Model S', NULL, TRUE),
('BZ1087', 'Porsche 911', 100000, 'Icono deportivo con más de 50 años de evolución. Motor trasero, tracción trasera y diseño inconfundible.', 'assets/img_car_sales/02_car_seles.PNG', 2, 2, '911', NULL, TRUE),
('CR5629', 'Audi Q5', 65000, 'SUV premium con espacio, confort y tecnología Audi. Perfecto para familias que buscan elegancia y rendimiento.', 'assets/img_car_sales/03_car_seles.PNG', 3, 3, 'Q5', NULL, FALSE),
('DF3456', 'Volkswagen Polo', 35000, 'El deportivo de la clase ejecutiva. Dinámica de conducción excepcional y diseño sofisticado.', 'assets/img_car_sales/04_car_seles.PNG', 4, 4, 'Polo', 2013, TRUE),
('DL4390', 'Jeep Wrangler', 38995, 'El auténtico SUV todoterreno. Diseño icónico y capacidades off-road incomparables.', 'assets/img_car_sales/05_car_seles.PNG', 5, 5, 'Wrangler', 2025, FALSE),
('EM1234', 'Mercedes-Benz AMG GTR', 150000, 'Compacto premium con tecnología MBUX y diseño moderno. Elegancia en un formato urbano.', 'assets/img_car_sales/06_car_seles.PNG', 2, 6, 'AMG GTR', 2018, TRUE),
('CJ1234', 'BMW M5', 140000, 'sedán deportivo de lujo con motorización híbrida enchufable. Combina un motor V8 biturbo de 4.4 litros con un motor eléctrico.', 'assets/img_car_sales/07_car_seles.PNG', 2, 7, 'M5', 2025, TRUE),
('CF1234', 'Suzuki Grand Vitara', 24000, 'Es un SUV compacto con diseño moderno y enfoque urbano, basado en la plataforma del S-Cross.', 'assets/img_car_sales/08_car_seles.PNG', 3, 8, 'Vitara', 2023, FALSE),
('AF7234', 'Hyundai Tucson', 23000, 'Es un SUV compacto que combina diseño moderno, tecnología y seguridad.', 'assets/img_car_sales/09_car_seles.PNG', 3, 9, 'Tucson', 2023, FALSE),
('AZ9345', 'Toyota Hilux 2025', 35000, 'La Toyota Hilux es una 4x4 robusta y confiable, ideal para trabajos pesados y terrenos difíciles.', 'assets/img_car_sales/10_car_seles.PNG', 5, 10, 'Hilux', 2025, TRUE),
('AC7215', 'Toyota Land Cruiser Pickup', 60000, 'Es una camioneta todoterreno de alta resistencia, ideal para trabajos en terrenos difíciles y condiciones extremas.', 'assets/img_car_sales/11_car_seles.PNG', 5, 10, 'Land Cruiser Pickup', 2020, FALSE),
('AX8456', 'BYD Dolphin', 29000, 'El BYD Dolphin es un hatchback eléctrico compacto, ideal para ciudad. Ofrece una autonomía de hasta 405 km.', 'assets/img_car_sales/12_car_seles.PNG', 1, 11, 'Dolphin', 2025, FALSE),
('AX8456', 'Chery eQ7', 42000, 'Es un SUV eléctrico del segmento C, con tracción trasera y una autonomía de hasta 512 km por carga (ciclo CLTC)', 'assets/img_car_sales/13_car_seles.PNG', 1, 12, 'eQ7', 2025, FALSE);

-- Inserta usuarios de ejemplo
INSERT INTO usuarios (nombre, email, contraseña) VALUES
('Admin', 'admin@autos.com', 'admin123'),
('Juan Pérez', 'juan.perez@email.com', 'juanpass'),
('Maria López', 'maria.lopez@email.com', 'mariapass');