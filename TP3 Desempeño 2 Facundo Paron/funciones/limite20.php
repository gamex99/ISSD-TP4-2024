<?php
function limitarA20Palabras($cadena) {
   
    $numPalabras = str_word_count($cadena);

    
    $arrayPalabras = str_word_count($cadena, 1);


    $arrayPalabrasLimitado = array_slice($arrayPalabras, 0, 20);

  
    $cadenaLimitada = implode(' ', $arrayPalabrasLimitado);

    return $cadenaLimitada;
}


?>