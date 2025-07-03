// Obtener el id de la URL
const params = new URLSearchParams(window.location.search);
const id = parseInt(params.get('id'));
// Buscar el producto
const producto = (typeof productos !== "undefined") ? productos.find(p => p.id === id)
            : null;

        // Mostrar detalles
        const detalleDiv = document.getElementById('detalle-producto');
        if (producto) {
            detalleDiv.innerHTML = `
            <div class="detalle-producto-box">
                <img src="${producto.imagen}" alt="${producto.nombre}">
                <div class="detalle-producto-info">
                    <h1>${producto.nombre} ${producto.año || ''}</h1>
                    <h2>Precio: $${producto.precio.toLocaleString()}</h2>
                    <p><strong>Marca:</strong> ${producto.marca}</p>
                    <p><strong>Modelo:</strong> ${producto.modelo || '-'}</p>
                    <p><strong>Año:</strong> ${producto.año || '-'}</p>
                    <p><strong>Transmision:</strong> ${producto.transmision}</p>
                    <p><strong>Combustible:</strong> ${producto.combustible}</p>                    
                    <p><strong>Categoría:</strong> ${producto.categoria}</p>
                    <p><strong>Descripción:</strong> ${producto.descripcion}</p>
                    ${producto.destacado ? '<span class="destacado">Destacado</span>' : ''}
                    <div class="botones-extra">
                        <a href="cotizar.html?id=${producto.id}" class="btn btn-cotizar">
                            <i class="fa-solid fa-file-invoice-dollar"></i> Cotizar
                        </a>
                        <a href="https://wa.me/50712345678" target="_blank" class="btn btn-whatsapp">
                            <i class="fa-brands fa-whatsapp"></i> Whatsapp Chat
                        </a>
                    </div>                
                </div>
            </div>`;

        } else {
            detalleDiv.innerHTML = '<p>Auto no encontrado.</p>';
        }