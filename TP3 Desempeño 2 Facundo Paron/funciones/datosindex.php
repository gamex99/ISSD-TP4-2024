<?php
function Contar($vConexion){
    $contado = array();

    $SQL="SELECT (SELECT COUNT(*) FROM solicitud WHERE id_tipo = 1) AS solicitudes_tipo_1, (SELECT COUNT(*) FROM solicitud WHERE id_tipo = 2) AS solicitudes_tipo_2, (SELECT COUNT(*) FROM solicitud WHERE id_tipo = 3) AS solicitudes_tipo_3, COUNT(*) AS total_usuarios FROM usuarios;";
    $rs = mysqli_query($vConexion, $SQL);
    $data = mysqli_fetch_array($rs) ;
    $contado['SOLI_1'] = $data['solicitudes_tipo_1'];
    $contado['SOLI_2'] = $data['solicitudes_tipo_2'];
    $contado['SOLI_3'] = $data['solicitudes_tipo_3'];
    $contado['TOTAL_USU'] = $data['total_usuarios'];
    return $contado;
}



?>