<?php
/*function Listar($vId_Usuario, $vId_Rol, $vConexion){
$Listado = array();

$SQLAdmin="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli FROM solicitud JOIN usuarios ON solicitud.id_usuario = usuarios.id JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id ORDER BY solicitud.fecha_de_carga ASC;";

$SQLUsuarioNormal="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli FROM solicitud JOIN usuarios ON solicitud.id_usuario = usuarios.id JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id WHERE solicitud.id_usuario = '$vId_Usuario' ORDER BY solicitud.fecha_de_carga ASC;";

$SQLTecnico="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli 
FROM solicitud 
JOIN usuarios ON solicitud.id_usuario = usuarios.id 
JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id 
WHERE solicitud.id_tipo = 3
ORDER BY solicitud.fecha_de_carga ASC;";

$SQLAnalista="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli 
FROM solicitud 
JOIN usuarios ON solicitud.id_usuario = usuarios.id 
JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id 
WHERE solicitud.id_tipo = 1 OR solicitud.id_tipo = 2
ORDER BY solicitud.fecha_de_carga ASC;";

if($vId_Rol == '1' ){
    $SQL = $SQLAdmin;
}else{
    if($vId_Rol == '2' ){
        $SQL = $SQLUsuarioNormal;
    }else{
        if($vId_Rol == '3' ){
            $SQL = $SQLTecnico;
        } else{
            $SQL = $SQLAnalista;
        }
    }
}
$rs = mysqli_query($vConexion, $SQL);
$data = mysqli_fetch_array($rs) ;

 
$i=0;
    while ($data = mysqli_fetch_array($rs)) {
            $Listado[$i]['ID'] = $data['id'];
            $Listado[$i]['TITULO'] = $data['titulo'];
            $Listado[$i]['DESCRIPCION'] = $data['descripcion'];
            $Listado[$i]['FECHA_DE_CARGA'] = $data['fecha_de_carga'];
            $Listado[$i]['FECHA_EST'] = $data['fecha_est'];
            $Listado[$i]['NOMBRE'] = $data['nombre'];
            $Listado[$i]['APELLIDO'] = $data['apellido'];
            $Listado[$i]['TIPO_SOLI'] = $data['tipo_soli'];
            $Listado[$i]['ID_TIPO'] = $data['id_tipo'];
            $i++;
    }


    return $Listado;
}*/

function Listar($vId_Usuario, $vId_Rol, $vConexion){
    $Listado = array();

    $SQLAdmin="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli FROM solicitud JOIN usuarios ON solicitud.id_usuario = usuarios.id JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id ORDER BY solicitud.fecha_de_carga ASC;";

    $SQLUsuarioNormal="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli FROM solicitud JOIN usuarios ON solicitud.id_usuario = usuarios.id JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id WHERE solicitud.id_usuario = '$vId_Usuario' ORDER BY solicitud.fecha_de_carga ASC;";

    $SQLTecnico="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli 
    FROM solicitud 
    JOIN usuarios ON solicitud.id_usuario = usuarios.id 
    JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id 
    WHERE solicitud.id_tipo = 3
    ORDER BY solicitud.fecha_de_carga ASC;";

    $SQLAnalista="SELECT solicitud.*, usuarios.nombre, usuarios.apellido, solicitud_tipo.tipo_soli 
    FROM solicitud 
    JOIN usuarios ON solicitud.id_usuario = usuarios.id 
    JOIN solicitud_tipo ON solicitud.id_tipo = solicitud_tipo.id 
    WHERE solicitud.id_tipo = 1 OR solicitud.id_tipo = 2
    ORDER BY solicitud.fecha_de_carga ASC;";

    if ($vId_Rol == '1') {
        $SQL = $SQLAdmin;
    } else {
        if ($vId_Rol == '2') {
            $SQL = $SQLUsuarioNormal;
        } else {
            if ($vId_Rol == '3') {
                $SQL = $SQLTecnico;
            } else {
                $SQL = $SQLAnalista;
            }
        }
    }

    $rs = mysqli_query($vConexion, $SQL);

    $i = 0;
    while ($data = mysqli_fetch_array($rs)) {
        $Listado[$i]['ID'] = $data['id'];
        $Listado[$i]['TITULO'] = $data['titulo'];
        $Listado[$i]['DESCRIPCION'] = $data['descripcion'];
        $Listado[$i]['FECHA_DE_CARGA'] = $data['fecha_de_carga'];
        $Listado[$i]['FECHA_EST'] = $data['fecha_est'];
        $Listado[$i]['NOMBRE'] = $data['nombre'];
        $Listado[$i]['APELLIDO'] = $data['apellido'];
        $Listado[$i]['TIPO_SOLI'] = $data['tipo_soli'];
        $Listado[$i]['ID_TIPO'] = $data['id_tipo'];
        $i++;
    }

    return $Listado;
}





?>