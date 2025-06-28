-- Consulta que une autos, marcas y categorías
SELECT 
    autos.placa,
    autos.nombre AS nombre_auto,
    marcas.nombre AS marca,
    categorias.nombre AS categoria,
    autos.precio,
    autos.modelo,
    autos.año,
    autos.destacado
FROM autos
JOIN marcas ON autos.marca_id = marcas.id
JOIN categorias ON autos.categoria_id = categorias.id;