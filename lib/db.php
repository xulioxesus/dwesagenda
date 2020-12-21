<?php
define("PAGE_SIZE",5);

function connect()
{
    $enlace = mysqli_connect("127.0.0.1", "agenda", "agenda123", "agenda");

    return $enlace;

}

function select($enlace, $pagina = 1, $orden = 'id')
{

    $offset = ($pagina - 1) * PAGE_SIZE;
    $page_size = PAGE_SIZE;
    $consulta = 'select * from contactes ';
    $consulta .= "order by $orden ";
    $consulta .= "limit $page_size offset $offset;";

    $resultado_consulta = mysqli_query($enlace, $consulta);
    $resultado = array();

    if ($resultado_consulta) {
        if (mysqli_num_rows($resultado_consulta) > 0) {
            while ($row = mysqli_fetch_assoc($resultado_consulta)) {
                array_push($resultado, $row);
            }
        }
    }
    return $resultado;
}

function selectTotal($enlace)
{

    $resultado_consulta = mysqli_query($enlace, 'select count(*) from contactes');

    $fila = mysqli_fetch_array($resultado_consulta);
 
    return $fila[0];
}

function getContactosListDB($pagina = 1, $orden = 'id')
{

    $enlace = connect();

    if ($enlace) {
        $resultado = select($enlace, $pagina, $orden);
    } else {
        $resultado = array();
        setErrorMessage('Ha pasado algo. Vuelve a intentarlo...');
    }

    mysqli_close($enlace);
    return $resultado;
}

function getContactosTotalDB()
{

    $enlace = connect();

    if ($enlace) {
        $resultado = selectTotal($enlace);
    } else {
        $resultado = 0;
        setErrorMessage('Ha pasado algo. Vuelve a intentarlo...');
    }

    mysqli_close($enlace);
    return $resultado;
}


