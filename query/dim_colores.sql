CREATE TABLE tb_best_car.dim_colores (
  codigo_hex VARCHAR(7) PRIMARY KEY,
  nombre_color VARCHAR(50)
);


INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFFF00', 'Amarillo');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#0000FF', 'Azul');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#F5F5DC', 'Beige');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFFFFF', 'Blanco');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#808080', 'Gris');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#000000', 'Negro');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#C0C0C0', 'Plata');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FF0000', 'Rojo');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#008000', 'Verde');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFA500', 'Naranja');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFC0CB', 'Rosa');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#A52A2A', 'Marrón');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#87CEEB', 'Celeste');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#40E0D0', 'Turquesa');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#8A2BE2', 'Violeta');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFD700', 'Dorado');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#B87333', 'Cobre');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#F7E7CE', 'Champán');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#800000', 'Granate');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#E6E6FA', 'Lavanda');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#808000', 'Oliva');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FF7F50', 'Coral');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FF00FF', 'Fucsia');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#BFFF00', 'Lima');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFDB58', 'Mostaza');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#800080', 'Púrpura');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FFFFF0', 'Marfil');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#000080', 'Azul Marino');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#228B22', 'Verde Bosque');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#4682B4', 'Azul Acero');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#98FF98', 'Verde Menta');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#87CEFA', 'Azul Cielo');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#8B0000', 'Rojo Oscuro');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#D3D3D3', 'Gris Claro');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#A9A9A9', 'Gris Oscuro');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#008080', 'Azul Petróleo');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#556B2F', 'Verde Oliva Oscuro');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#4169E1', 'Azul Real');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#CD5C5C', 'Rojo Indio');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#00FF7F', 'Verde Primavera');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#191970', 'Azul Medianoche');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#00FFFF', 'Cian');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#FA8072', 'Salmón');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#C2B280', 'Arena');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#36454F', 'Carbón');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#708090', 'Pizarra');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#EAE0C8', 'Perla');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#E2725B', 'Terracota');
INSERT INTO dim_colores (codigo_hex, nombre_color) VALUES ('#0ABAB5', 'Azul Tiffany');


select * from tb_best_car.dim_colores