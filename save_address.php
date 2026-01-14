<?php
include 'db.php';
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$data = json_decode(file_get_contents("php://input"), true);

if (!$data) {
    echo json_encode(["success" => false, "message" => "No data received"]);
    exit();
}

$user_id = isset($data['user_id']) ? $data['user_id'] : 0;
$full_name = $data['full_name'];
$email = $data['email'];
$phone = $data['phone'];
$address = $data['address'];
$city = $data['city'];
$zip_code = $data['zip_code'];

// Auto-heal: Ensure table exists
$createTable = "CREATE TABLE IF NOT EXISTS checkout_address (
    id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    user_id INT(11) NOT NULL,
    full_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    address TEXT NOT NULL,
    city VARCHAR(100),
    zip_code VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)";
$conn->query($createTable);

$stmt = $conn->prepare("INSERT INTO checkout_address (user_id, full_name, email, phone, address, city, zip_code) VALUES (?, ?, ?, ?, ?, ?, ?)");

if (!$stmt) {
    echo json_encode(["success" => false, "message" => "Prepare failed: " . $conn->error]);
    exit();
}

$stmt->bind_param("issssss", $user_id, $full_name, $email, $phone, $address, $city, $zip_code);

if ($stmt->execute()) {
    echo json_encode(["success" => true, "message" => "Address saved successfully"]);
} else {
    echo json_encode(["success" => false, "message" => "Execute failed: " . $stmt->error]);
}

$stmt->close();
$conn->close();
?>
