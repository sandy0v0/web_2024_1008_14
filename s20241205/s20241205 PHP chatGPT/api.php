<?php
// 設定 Content-Type 為 JSON，讓瀏覽器知道這是 JSON 格式的回應
header('Content-Type: application/json');

// 假設我們從資料庫或其他地方取得資料
$data = array(
    "status" => "success",
    "message" => "Hello, this is a response from the PHP API!",
    "timestamp" => time()
);

// 將資料轉換為 JSON 格式並回傳
echo json_encode($data);
?>
