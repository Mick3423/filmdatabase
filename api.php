<?php

require "settings/init.php";

$data = json_decode(file_get_contents('php://input'), true);

/*
 * password: skal udfyldes og være Filmbase
 * nameSearch: Valgfri
 * priceSearch
 */

header('Content-Type: application/json;');


    $data["password"] = "Filmbase";

if (isset($data["password"]) && $data["password"] == "Filmbase"){
    $sql = "SELECT * FROM filmoversigt WHERE 1=1";
    $bind = [];

    if (!empty($data["nameSearch"])) {
        $sql .= " AND FilmNavn = :FilmNavn";
        $bind[":FilmNavn"] = $data["nameSearch"] ;
    }


    if (!empty($data["priceSearch"])) {
        $sql .= " AND FilmPris = :FilmPris";
        $bind[":FilmPris"] = $data["priceSearch"] ;
    }

    $sql .= " ORDER BY FilmPris ASC";




   $Film = $db->sql($sql, $bind);
    header("HTTP/1.1 200 OK");

    echo json_encode($Film);

} else {

    header("HTTP/1.1 401 unauthorized");
    $error["errorMessage"] = "kodeord var forkert" ;

    echo json_encode($error);
}
?>
