<?php
session_start();
include 'db_connection.php';

if (!isset($_SESSION['user_id'])) {
    echo json_encode(['success' => false, 'message' => '請先登入']);
    exit;
}

$user_id = $_SESSION['user_id'];
$product_id = $_POST['product_id'];

$stmt = $pdo->prepare("SELECT * FROM favorites WHERE user_id = ? AND product_id = ?");
$stmt->execute([$user_id, $product_id]);
$favorite = $stmt->fetch();

if ($favorite) {
    $stmt = $pdo->prepare("DELETE FROM favorites WHERE user_id = ? AND product_id = ?");
    $stmt->execute([$user_id, $product_id]);
    echo json_encode(['success' => true, 'favorite' => false]);
} else {
    $stmt = $pdo->prepare("INSERT INTO favorites (user_id, product_id) VALUES (?, ?)");
    $stmt->execute([$user_id, $product_id]);
    echo json_encode(['success' => true, 'favorite' => true]);
}
?>