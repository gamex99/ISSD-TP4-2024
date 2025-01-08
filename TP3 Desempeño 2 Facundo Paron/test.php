<?php
//usando un ejemplo


$fechahoy=date('Y-m-d H:i:s');
echo $fechahoy; echo '<br>';
echo date('Y-m-d H:i:s' , strtotime($fechahoy.'+ 2 days'));


echo '<br>';
echo date('Y-m-d H:i:s' , strtotime($fechahoy.'+ 1 week'));

//detalles en:  https://elinawebs.com/como-sumar-y-restar-fechas-con-php-con-strtotime-y-date/
?>