<?php
// Conexión a la base de datos SQLite
$db = new SQLite3('Bestcar.db');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombre_usuario = $_POST['nombre_usuario'];
    $contraseña = $_POST['contraseña'];

    // Buscar el usuario en la base de datos
    $stmt = $db->prepare("SELECT contraseña FROM usuarios WHERE nombre_usuario = :nombre_usuario");
    $stmt->bindValue(':nombre_usuario', $nombre_usuario, SQLITE3_TEXT);
    $result = $stmt->execute();
    $row = $result->fetchArray(SQLITE3_ASSOC);

    if ($row && password_verify($contraseña, $row['contraseña'])) {
        // Redirigir al index.html si el login es exitoso
        header("Location: index.html");
        exit();
    } else {
        echo "❌ Usuario o contraseña incorrectos.";
    }
}
?>