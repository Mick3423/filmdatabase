<?php
require "settings/init.php";

$Film = $db->sql("SELECT * FROM filmoversigt");

foreach ($Film as $oversigt){
    echo $oversigt->FilmNavn . "<br>";
}