<?php
require_once 'db.php';

function getContactosList($pagina = 1, $orden = 'id'){

    $resultado = '<table class="table table-striped">';
    foreach (getContactosListDB($pagina, $orden) as $fila) {
        $resultado .= '<tr>';
        $resultado .= '<td>' .$fila['id'].'</td>';
        $resultado .= '<td>' .$fila['cognoms'].'</td>';
        $resultado .= '<td>' .$fila['nom'].'</td>';
        $resultado .= '</tr>';
    }
    $resultado .= '</table>';

    return $resultado;
}

function getContactosNavPrimero($orden = 'id'){
    return '<a href="index.php?pagina=1&orden='.$orden.'"><img src="img/home.png"></a>'.PHP_EOL;
}

function getContactosNavUltimo($total,$orden){
    return '<a href="index.php?pagina='.$total."&orden=$orden".'"><img src="img/end.png"></a>'.PHP_EOL;
}

function getContactosNavAnterior($pagina,$orden){
    return '<a href="index.php?pagina='.$pagina."&orden=$orden".'"><img src="img/left.png"></a>'.PHP_EOL;
}

function getContactosNavSiguiente($pagina,$orden){
    return '<a href="index.php?pagina='.$pagina."&orden=$orden".'"><img src="img/right.png"></a>'.PHP_EOL;
}

function getContactosNav($total, $pagina = 1, $orden = 'id'){
    $resultado = '<div>';

    //Mostramos el enlace a la página anterior, si procede.

    $resultado .= getContactosNavPrimero($orden);

    //if ($pagina > 1){
        $resultado .= getContactosNavAnterior($pagina-1,$orden);
    //}

    
    //if ($pagina < $total){
        $resultado .= getContactosNavSiguiente($pagina+1,$orden);
    //}
    $resultado .= getContactosNavUltimo($total,$orden);

    $resultado .= '</div>';

    return $resultado;
}

function getOrderBar($pagina){
    $resultado = "<a href=\"index.php?pagina=$pagina&orden=id\">Id </a>";
    $resultado .= "<a href=\"index.php?pagina=$pagina&orden=cognoms\">Cognoms+Nom</a>";

    return $resultado;
}