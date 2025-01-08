<?php 
function DatosLogin($vUsuario, $vClave, $vConexion){
    $Usuario=array();
    
    $SQL="SELECT *
     FROM Usuarios 
     WHERE Email='$vUsuario' AND Clave=MD5('$vClave')  ";

    $rs = mysqli_query($vConexion, $SQL);
        
    $data = mysqli_fetch_array($rs) ;
    if (!empty($data)) {
        $Usuario['ID'] = $data['id'];
        $Usuario['NOMBRE'] = $data['nombre'];
        $Usuario['APELLIDO'] = $data['apellido'];
        $Usuario['IMAGEN'] = $data['imagen'];
        $Usuario['ID_ROL'] = $data['id_rol'];
        
        $SQLid="SELECT *
     FROM rol 
     WHERE id='$data[id_rol]'  ";

    $rsid = mysqli_query($vConexion, $SQLid);
    $dataid = mysqli_fetch_array($rsid) ;   
        
        
        $Usuario['IDROL'] = $dataid['nombre_rol'];
        $Usuario['ULTIMO_ACCESO'] = $data['ultimo_acceso'];
        

        

        if (empty( $data['imagen'])) {
            $data['Imagen'] = 'user.png'; 
        }
        $Usuario['IMG'] = $data['imagen'];
        $Usuario['ACTIVO'] = $data['activo'];
        


        //FECHA
        date_default_timezone_set('America/Argentina/Buenos_Aires');
        $fecha_acceso_actual = date("y-m-d h:i:s");
        $sqldata = "UPDATE `usuarios` SET `ultimo_acceso` = '$fecha_acceso_actual' WHERE `usuarios`.`id` = $data[id];";
        mysqli_query($vConexion, $sqldata);

        //
    }
    return $Usuario;
}

?>