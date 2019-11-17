<?php
/*
 * cobros.php
 * 
 * Copyright 2019 Juanmanuel <jmdedio@jgmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
?>

<?php

include_once 'db.php';

// Clase para manejar la tabla cobros
class Cobro extends DB{
    
    function obtenerCobros(){
        $query = $this->connect()->query('SELECT * FROM cobros');
        return $query;
    }

    function obtenerCobro($doc){
        $query = $this->connect()->prepare('SELECT * FROM cobros WHERE doc_id = :doc');
        $query->execute(['id' => $doc]);
        return $query;
    }
}

?>
