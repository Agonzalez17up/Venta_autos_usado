SELECT 
    fc.id AS id_cotizacion,
    fc.numero,
    fc.fecha,
    fc.cliente_nombre,
    fc.cliente_telefono,
    fc.cliente_email,
    da.nombre AS nombre_auto,
    c.nombre_categoria as categoria,
    m.nombre  as marca,
    da.modelo,
    da.año,
    fc.precio,
    ci.nombre_color colorExterior
FROM tb_best_car.fact_cotizaciones fc
JOIN tb_best_car.dim_auto da ON fc.auto_id = da.id
left join  tb_best_car.dim_marcas m
	on da.marca = m.id_marcas
left join tb_best_car.dim_categorias c
	on da.categoria = c.ID_Categoria
left join tb_best_car.dim_colores ci
on da.colorExterior = ci.codigo_hex
