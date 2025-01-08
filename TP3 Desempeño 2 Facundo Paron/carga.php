<?php 
require_once 'funciones/conexion.php';
session_start();
$MiConexion=ConexionBD();
//si tengo vacio mi elemento de sesion me tiene q redireccionar al login.. 
//al cerrarsesion para que mate todo de la sesion y el se encarga de ubicar en el login
if (empty($_SESSION['Usuario_Nombre']) ) {
    header('Location: cerrarsesion.php');
    exit;
}
require_once 'funciones/carga.php';




$mensaje='';
if (!empty($_POST)) {

   
  
    $mensaje = DatosCarga($_POST['titulo'], $_POST['descripcion'], $_POST['radio'], $MiConexion);
    
    

}
$radios = Radios($MiConexion);
$cant_radios = count($radios);


?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->    
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Registro - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>
  <body class="app sidebar-mini">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.html">Mi Panel</a>
      <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
      <!-- Navbar Right Menu-->
      <ul class="app-nav">
        <li class="app-search">
          <input class="app-search__input" type="search" placeholder="Search">
          <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i class="fa fa-bell-o fa-lg"></i></a>
          <ul class="app-notification dropdown-menu dropdown-menu-right">
            <li class="app-notification__title">You have 4 new notifications.</li>
            <div class="app-notification__content">
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Lisa sent you a mail</p>
                    <p class="app-notification__meta">2 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Mail server not working</p>
                    <p class="app-notification__meta">5 min ago</p>
                  </div></a></li>
              <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                  <div>
                    <p class="app-notification__message">Transaction complete</p>
                    <p class="app-notification__meta">2 days ago</p>
                  </div></a></li>
              <div class="app-notification__content">
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Lisa sent you a mail</p>
                      <p class="app-notification__meta">2 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Mail server not working</p>
                      <p class="app-notification__meta">5 min ago</p>
                    </div></a></li>
                <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                    <div>
                      <p class="app-notification__message">Transaction complete</p>
                      <p class="app-notification__meta">2 days ago</p>
                    </div></a></li>
              </div>
            </div>
            <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
          </ul>
        </li>
        <!-- User Menu-->
       <?php require_once 'usermenu.php'; ?>
    <!-- Sidebar menu-->
    <?php require_once 'sidebar.php'; ?>
    
    <!-- fin Sidebar menu-->
   
    <main class="app-content">
      <div class="app-title">
        <div>
          <h1><i class="fa fa-edit"></i> Registra aqui tu solicitud</h1>
          <p>Detalla lo mas que puedas para que un encargado pueda asesorarte.</p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
          <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
          <li class="breadcrumb-item">Inicio</li>
          <li class="breadcrumb-item"><a href="#">Registro</a></li>
        </ul>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="tile">
            <h3 class="tile-title">Ingresa los datos solicitados</h3>
            <div class="bs-component">
            <?php if ($mensaje == 'no1') { ?>    
    <div class="alert alert-dismissible alert-danger">
        <strong>Debes ingresar más de 5 caracteres en el Titulo.</strong> 
    </div>
<?php } ?>
<?php if ($mensaje == 'no2') { ?>    
    <div class="alert alert-dismissible alert-danger">
        <strong>Debes ingresar más de 5 caracteres en la descripcion.</strong> 
    </div>
<?php } ?>

<?php if ($mensaje == 'ok') { ?>
    <div class="bs-component">
        <div class="alert alert-dismissible alert-success">
            <strong>Solicitud almacenada!</strong>
        </div>
    </div>
<?php } ?>

<?php if ($mensaje == 'no') { ?>
    <div class="bs-component">
        <div class="alert alert-dismissible alert-info">
            <strong>Los campos con <i class="fa fa-asterisk" aria-hidden="true"></i> son obligatorios</strong>
        </div>
    </div>
<?php } ?>












            <div class="tile-body">
            <form role="form" method='post'> <!-- ira aca el form? seee rey iba aca-->
                <div class="form-group">
                  <label class="control-label">Título</label> <i class="fa fa-asterisk" aria-hidden="true"></i>
                  <input class="form-control" name="titulo">
                </div>
                
                <div class="form-group">
                  <label class="control-label">Descripción de solicitud <i class="fa fa-asterisk" aria-hidden="true"></i></label>
                  <textarea name="descripcion" class="form-control" rows="4" placeholder="Ingresa los detalles..."></textarea>
                </div>
                <div class="form-group">
                  <label class="control-label">Tipo de solicitud</label> <i class="fa fa-asterisk" aria-hidden="true"></i>
                  <?php for ($j = 0; $j < $cant_radios;$j++) {?>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio"  name="radio" value="<?php echo $radios[$j]['ID'] ?>"><?php echo $radios[$j]['TIPO_SOLI'] ?>
                    </label>
                  </div>
                  <?php } ?>
                  <!--<div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="radio" value="2" >Reporte de error
                    </label>
                  </div>
                  
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="form-check-input" type="radio" name="radio" value="3" >Soporte Tecnico
                    </label>
                  </div>
              -->
                </div>
                <!--
                <div class="form-group">
                  <label class="control-label">Puedes subir una captura de pantalla</label>
                  <input class="form-control" type="file">
                </div>
                -->
                <div class="tile-footer">
              <button class="btn btn-primary" type="submit" ><i class="fa fa-fw fa-lg fa-check-circle"></i>Registrar</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-secondary" href="index.php"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancelar</a>
            </div>
            </div>
          </div>
        </div>
        </form>
      </div>
    </main>
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
   
  </body>
</html>