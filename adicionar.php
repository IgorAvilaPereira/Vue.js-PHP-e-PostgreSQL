<?php
header("Content-type: application/json");
// echo "<pre>";
//     print_r($_POST);
//     print_r($_GET);
// echo "</pre>";

 $conn = pg_connect("host=localhost user=postgres password=postgres dbname=concessionaria") or die("xabum");
 $sql = pg_query("INSERT INTO carro (placa, modelo) values 
     (   '".$_GET['placa']."',
         '".$_GET['modelo']."');");

$vetResposta = array('mensagem'=> 'sucesso');
echo json_encode($vetResposta);     

?>