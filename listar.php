<?php

$conn = pg_connect("host=localhost user=postgres password=postgres dbname=concessionaria") or die("xabum");
$sql = pg_query("SELECT * FROM carro ORDER BY id;");
$i = 0;
$ret = [];
while ($resposta = pg_fetch_array($sql)) {
    $ret[$i]["id"]=$resposta['id'];
    $ret[$i]["placa"]=$resposta['placa'];
    $ret[$i]["modelo"]=$resposta['modelo'];
    $ret[$i]["marca"]=$resposta['marca'];
    $i++;
}
header("Content-type: application/json");
echo json_encode($ret);      

?>