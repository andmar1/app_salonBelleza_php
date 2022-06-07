<?php

function obtenerServicos(){
    try {
        // importar conexion 
        require 'database.php';

        // var_dump($db);

        // escribir el código sql

        $sql = "SELECT * FROM servicios";

        // mysqli_query(  base de datos, consulta a ejecutar)
        $consulta = mysqli_query($db, $sql);

        // obtener los resultados 

        echo "<pre>";
            var_dump( mysqli_fetch_assoc( $consulta ));
        echo "</pre>";
        


    } catch (\Throwable $th) {
        
        var_dump($th);
    }
}

obtenerServicos();