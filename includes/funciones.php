<?php

function obtenerServicos():array{
    try {
        // importar conexion 
        require 'database.php';

        // var_dump($db);

        // escribir el código sql

        $sql = "SELECT * FROM servicios";

        // mysqli_query(  base de datos, consulta a ejecutar)
        $consulta = mysqli_query($db, $sql);

        // crear un arreglo para vaciar los resultados 
        $servicios = [];
        $i = 0;

        // obtener los resultados iterando los elementos
        while( $row = mysqli_fetch_assoc($consulta) ){
            $servicios[$i]['id'] = $row['id'];
            $servicios[$i]['nombre'] = $row['nombre'];
            $servicios[$i]['precio'] = $row['precio'];
            $i++;

        }
        
        // echo '<pre>';
        //     var_dump( $servicios );
        // echo '</pre>';
        return $servicios;


        
    } catch (\Throwable $th) {
        
        var_dump($th);
    }
}

obtenerServicos();