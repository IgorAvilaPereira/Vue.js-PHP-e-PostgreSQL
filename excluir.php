<?php
    header("Content-type: application/json");
    $conn = pg_connect("host=localhost user=postgres password=postgres dbname=concessionaria") or die("xabum");
    $sql = pg_query("DELETE FROM carro WHERE id = ".$_GET['id']);
    $vetResposta = array('mensagem'=> 'sucesso');
    echo json_encode($vetResposta);     
?>