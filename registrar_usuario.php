<?php
// Conexión a la base de datos SQLite
$db = new SQLite3('Bestcar.db');

$registro_exitoso = false;

// Verifica si se recibió el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Escapar y obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $nombre_usuario = $_POST['nombre_usuario'];
    $contraseña = password_hash($_POST['contraseña'], PASSWORD_DEFAULT); // Encriptar contraseña
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $pais = $_POST['pais'];
    $provincia = $_POST['provincia'];
    $fecha_nacimiento = $_POST['fecha_nacimiento'];
    $sexo = $_POST['sexo'];
    $identificacion = $_POST['identificacion_personal'];
    $nacionalidad = $_POST['nacionalidad'];

    // Verificar si el correo ya existe
    $stmt = $db->prepare("SELECT COUNT(*) as count FROM usuarios WHERE correo = :correo");
    $stmt->bindValue(':correo', $correo, SQLITE3_TEXT);
    $result = $stmt->execute();
    $row = $result->fetchArray(SQLITE3_ASSOC);

    if ($row['count'] > 0) {
        echo "❌ El correo ya está registrado. Por favor, usa otro.";
        exit();
    }

    // Verificar si el nombre de usuario ya existe
    $stmt = $db->prepare("SELECT COUNT(*) as count FROM usuarios WHERE nombre_usuario = :nombre_usuario");
    $stmt->bindValue(':nombre_usuario', $nombre_usuario, SQLITE3_TEXT);
    $result = $stmt->execute();
    $row = $result->fetchArray(SQLITE3_ASSOC);

    if ($row['count'] > 0) {
        echo "❌ El nombre de usuario ya está registrado. Por favor, usa otro.";
        exit();
    }

    // Verificar si la identificación personal ya existe
    $stmt = $db->prepare("SELECT COUNT(*) as count FROM usuarios WHERE identificacion_personal = :identificacion");
    $stmt->bindValue(':identificacion', $identificacion, SQLITE3_TEXT);
    $result = $stmt->execute();
    $row = $result->fetchArray(SQLITE3_ASSOC);

    if ($row['count'] > 0) {
        echo "❌ La identificación personal ya está registrada. Por favor, usa otra.";
        exit();
    }

    // Preparar la consulta SQL
    $stmt = $db->prepare("INSERT INTO usuarios (
        nombre, apellido, nombre_usuario, contraseña, correo, telefono,
        pais, provincia, fecha_nacimiento, sexo, identificacion_personal, nacionalidad
    ) VALUES (
        :nombre, :apellido, :nombre_usuario, :contraseña, :correo, :telefono,
        :pais, :provincia, :fecha_nacimiento, :sexo, :identificacion, :nacionalidad
    )");

    // Asignar parámetros
    $stmt->bindValue(':nombre', $nombre);
    $stmt->bindValue(':apellido', $apellido);
    $stmt->bindValue(':nombre_usuario', $nombre_usuario);
    $stmt->bindValue(':contraseña', $contraseña);
    $stmt->bindValue(':correo', $correo);
    $stmt->bindValue(':telefono', $telefono);
    $stmt->bindValue(':pais', $pais);
    $stmt->bindValue(':provincia', $provincia);
    $stmt->bindValue(':fecha_nacimiento', $fecha_nacimiento);
    $stmt->bindValue(':sexo', $sexo);
    $stmt->bindValue(':identificacion', $identificacion);
    $stmt->bindValue(':nacionalidad', $nacionalidad);

    // Ejecutar y verificar
    if ($stmt->execute()) {
        $registro_exitoso = true;
        echo "✅ Registro exitoso.";
    } else {
        echo "❌ Error al registrar: " . $db->lastErrorMsg();
    }
}
?>

<?php if (!$registro_exitoso): ?>
<script>
window.onload = function() {
    // Busca el formulario por su id y lo resetea
    var form = document.getElementById('registroForm');
    if (form) {
        form.reset();
    }
};
</script>

<form id="registroForm" method="POST" action="">
    <input type="text" name="nombre" value="">
    <!-- Otros campos del formulario -->
    <input type="submit" value="Registrar">
</form>
<?php endif; ?>
