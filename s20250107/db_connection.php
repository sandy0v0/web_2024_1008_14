<?php
$dsn = 'mysql:host=localhost;dbname=your_database_name;charset=utf8';
$username = '';
$password = '';

try {
    $pdo = new PDO($dsn, $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die('資料庫連接失敗: ' . $e->getMessage());
}
?>