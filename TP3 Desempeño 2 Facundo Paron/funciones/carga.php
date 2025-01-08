<?php
/*function DatosCarga($titulo, $descripcion, $radio, $vConexion){
    //titulo, descripcion, id_usuario, fecha_de_carga, id_tipo, fecha_est
    $mensaje = "";

    if (!empty($titulo) && !empty($descripcion) && !empty($radio) && !empty($vConexion)){
    $fechahoy = date('Y-m-d H:i:s');
    $fechaEstimada = '0';
    
            switch ($radio) {
        case 1:
            $fechaEstimada = date('Y-m-d H:i:s' , strtotime($fechahoy.'+ 1 week'));//strtotime($fechahoy . '+ 1 week');
            break;
        case 2:
            $fechaEstimada = date('Y-m-d H:i:s' , strtotime($fechahoy.'+ 3 days'));//strtotime($fechahoy . '+ 3 days');
            break;
        case 3:
            $fechaEstimada = date('Y-m-d H:i:s' , strtotime($fechahoy.'+ 1 days'));//strtotime($fechahoy . '+ 1 days');
            break;
        // Puedes agregar más casos según sea necesario
        
    }
    
    
    
     
    
    
   
    $id_usu = $_SESSION ['Id'];
    $SQL=" INSERT INTO `solicitud` (`id`, `titulo`, `descripcion`, `id_usuario`, `fecha_de_carga`, `id_tipo`, `fecha_est`) 
    VALUES (NULL, '$titulo', '$descripcion', '$id_usu', '$fechahoy', '$radio', '$fechaEstimada');";
    
    
    mysqli_query($vConexion, $SQL);

    $mensaje="ok";
    } else {
        $mensaje="no";
    }
    return $mensaje;
}

/*
function Radios($vConexion){
    $SQL="select * from solicitud_tipo";
    $Radio = array();
    $rs = mysqli_query($vConexion, $SQL);
 $data = mysqli_fetch_array($rs) ;
 
$i=0;
    while ($data = mysqli_fetch_array($rs)) {
            $Radio[$i]['ID'] = $data['id'];
            $Radio[$i]['TIPO_SOLI'] = $data['tipo_soli'];
            $i++;
    }
    return $Radio;
}
*/
function DatosCarga($titulo, $descripcion, $radio, $vConexion){
    $mensaje = "";

    if (empty($titulo) || empty($descripcion) || empty($radio)) {
        $mensaje = "no";
    } elseif (strlen($titulo) < 5) {
        $mensaje = "no1";
    } elseif (strlen($descripcion) < 5) {
        $mensaje = "no2";
    } else {
        $fechahoy = date('Y-m-d H:i:s');
        $fechaEstimada = '0';

        switch ($radio) {
            case 1:
                $fechaEstimada = date('Y-m-d H:i:s', strtotime($fechahoy . '+ 1 week'));
                break;
            case 2:
                $fechaEstimada = date('Y-m-d H:i:s', strtotime($fechahoy . '+ 3 days'));
                break;
            case 3:
                $fechaEstimada = date('Y-m-d H:i:s', strtotime($fechahoy . '+ 1 days'));
                break;
            // Puedes agregar más casos según sea necesario
        }

        $id_usu = $_SESSION['Id'];
        $SQL = "INSERT INTO `solicitud` (`id`, `titulo`, `descripcion`, `id_usuario`, `fecha_de_carga`, `id_tipo`, `fecha_est`) 
        VALUES (NULL, '$titulo', '$descripcion', '$id_usu', '$fechahoy', '$radio', '$fechaEstimada');";

        mysqli_query($vConexion, $SQL);
        $mensaje = "ok";
    }

    return $mensaje;
}






function Radios($vConexion){
    $SQL = "select * from solicitud_tipo";
    $Radio = array();
    $rs = mysqli_query($vConexion, $SQL);

    $i = 0;
    while ($data = mysqli_fetch_array($rs)) {
        $Radio[$i]['ID'] = $data['id'];
        $Radio[$i]['TIPO_SOLI'] = $data['tipo_soli'];
        $i++;
    }
    
    return $Radio;
}

?>
