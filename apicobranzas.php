<?php
/*
 * apicobranzas.php
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

include_once 'documentos.php';
include_once 'cobros.php';

// Funciones del Endpoint

// Devuelve todos los registros de la tabla documentos
function getDocumentos(){
    $documento = new Documento();
    $documentos = array();
    $documentos["items"] = array();

    $res = $documento->obtenerdocumentos();

    if($res->rowCount()){
        while ($row = $res->fetch(PDO::FETCH_ASSOC)){
            $item = array(
                "id"         => $row['id'],
                "cliente_id" => $row['cliente_id'],
                "fecha"      => $row['fecha'],
                "nro_fact"   => $row['nro_fact'],
                "importe"    => $row['importe'],
                "cod_barras" => $row['cod_barras']
            );
            array_push($documentos["items"], $item);
        }
        $this->printJSON($documentos);
    }else{
        echo json_encode(array('mensaje' => 'No hay elementos'));
    }
}

// Devuelve un documento según ID
function getDocumentoById($id){
    $documento = new documento();
    $documentos = array();
    $documentos["items"] = array();

    $res = $documento->obtenerdocumento($id);

    if($res->rowCount() == 1){
        $row = $res->fetch();
    
        $item = array(
            "id"         => $row['id'],
            "cliente_id" => $row['cliente_id'],
            "fecha"      => $row['fecha'],
            "nro_fact"   => $row['nro_fact'],
            "importe"    => $row['importe'],
            "cod_barras" => $row['cod_barras']
        );

        array_push($documentos["items"], $item);

        $this->printJSON($documentos);
    }else{
        echo json_encode(array('mensaje' => 'No hay elementos'));
    }
}

// Devuelve todos los registros de la tabla cobros
function getCobros(){
    $cobro = new cobro();
    $cobros = array();
    $cobros["items"] = array();

    $res = $cobro->obtenerCobros();

    if($res->rowCount()){
        while ($row = $res->fetch(PDO::FETCH_ASSOC)){
            $item = array(
                "id"      => $row['id'],
                "fecha"   => $row['fecha'],
                "importe" => $row['importe'],
                "doc_id"  => $row['doc_id']
            );
            array_push($cobros["items"], $item);
        }
        printJSON($cobros);
    }else{
        echo json_encode(array('mensaje' => 'No hay elementos'));
    }
}

// Devuelve todos los registros de la tabla cobros según el doc_id
function getCobroByDocId($doc){
    $cobro = new Cobro();
    $cobros = array();
    $cobros["items"] = array();

    $res = $cobro->obtenerCobro($doc);

    if($res->rowCount() == 1){
        $row = $res->fetch();
    
        $item = array(
            "id"      => $row['id'],
            "fecha"   => $row['fecha'],
            "importe" => $row['importe'],
            "doc_id"  => $row['doc_id']
        );

        array_push($cobros["items"], $item);

        printJSON($cobros);
    }else{
        echo json_encode(array('mensaje' => 'No hay elementos'));
    }
}

// Para codifcar el JSON
function printJSON($array){
    echo '<code>'.json_encode($array).'</code>';
}

?>
