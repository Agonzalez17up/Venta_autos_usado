// Mostrar resumen del carrito y actualizar tabla de pago
const carrito = JSON.parse(localStorage.getItem('carrito')) || [];
if (carrito.length > 0) {
    let subtotal = carrito.reduce((acc, item) => {
        const precio = Number(String(item.precio).replace(/[^0-9.]/g, '')) || 0;
        const cantidad = Number(item.cantidad) || 1;
        return acc + (precio * cantidad);
    }, 0);
    let extra = subtotal * 0.07;
    let total = subtotal + extra;

    document.querySelector('.pg-summary').innerHTML = `
      <tr>
        <th>Producto</th>
        <th>Subtotal</th>
      </tr>
      ${carrito.map(item => {
        const cantidad = Number(item.cantidad) || 1;
        const precio = Number(String(item.precio).replace(/[^0-9.]/g, '')) || 0;
        return `
          <tr>
            <td>${item.nombre} ×${cantidad}</td>
            <td>$${formatoMoneda(precio * cantidad)}</td>
          </tr>
        `;
      }).join('')}
      <tr>
        <td><strong>ITBMS (7%)</strong></td>
        <td><strong>$${formatoMoneda(extra)}</strong></td>
      </tr>
      <tr>
        <td class="pg-total">Total</td>
        <td class="pg-total">$${formatoMoneda(total)}</td>
      </tr>
    `;
}

// Función para generar número de factura
function generarFactura() {
    const fecha = new Date();
    const yyyy = fecha.getFullYear();
    const mm = String(fecha.getMonth() + 1).padStart(2, '0');
    const dd = String(fecha.getDate()).padStart(2, '0');
    const random = String(Math.floor(Math.random() * 900) + 100); // 3 dígitos
    return `F-${yyyy}${mm}${dd}-${random}`;
}

// Formato de moneda
function formatoMoneda(valor) {
    return valor.toLocaleString('en-US', {minimumFractionDigits: 2, maximumFractionDigits: 2});
}

// Manejo del pago
document.getElementById('payment-form').onsubmit = function(e) {
    e.preventDefault();

    // Validar método de pago seleccionado
    const metodoSeleccionado = document.querySelector('input[name="metodo_pago"]:checked');
    if (!metodoSeleccionado) {
        document.getElementById('mensaje-pago').innerHTML = '<span style="color:#E74C3C;">Por favor selecciona un método de pago.</span>';
        return;
    }

    // Validar campos requeridos
    const nombre = document.getElementById('card-holder').value.trim();
    const numero = document.getElementById('card-number').value.trim();
    const expiracion = document.getElementById('card-expiry').value.trim();
    const cvc = document.getElementById('cvc').value.trim();
    const terms = document.getElementById('terms').checked;
    if (!nombre || !numero || !expiracion || !cvc || !terms) {
        document.getElementById('mensaje-pago').innerHTML = '<span style="color:#E74C3C;">Por favor completa todos los campos requeridos y acepta los términos.</span>';
        return;
    }

    // Mostrar mensaje de éxito
    const factura = generarFactura();
    document.querySelector('.pg-payment-box').innerHTML = `
      <div class="order-success-modal">
        <div class="checkmark">
          <i class="fas fa-check"></i>
        </div>
        <h2>¡Gracias por tu pedido!</h2>
        <p>Tu orden ha sido confirmada.<br><strong>Número de factura: ${factura}</strong></p>
      </div>
    `;
    localStorage.removeItem('carrito');
};

// Formato automático para expiración MM/AA
const expInput = document.getElementById('card-expiry');
if (expInput) {
  expInput.addEventListener('input', function() {
    let value = expInput.value.replace(/\D/g, '');
    if (value.length > 2) {
      value = value.slice(0, 2) + '/' + value.slice(2, 4);
    }
    expInput.value = value;
  });
}