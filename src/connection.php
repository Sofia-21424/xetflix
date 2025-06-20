<?php

$servername = "db";  
$username = "user";
$password = "313969";
$database = "xetflix";

try {
    $connection = new PDO("mysql:host=$servername;dbname=$database;charset=utf8", $username, $password);
    $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
    die();  
}
?>
