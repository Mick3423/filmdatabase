<?php
require "classes/classDB.php";

define("CONFIG_LIVE", "1"); // 0: Test enviroment || 1: Live enviroment

if(CONFIG_LIVE == 0){
    $DB_SERVER = "localhost";
    $DB_NAME = "film";
    $DB_USER = "root";
    $DB_PASS = "";
}else{
    $DB_SERVER = "mysql97.unoeuro.com";
    $DB_NAME = "multimediemichael_dk_db";
    $DB_USER = "multimediemichael_dk";
    $DB_PASS = "rGxcfewpdhBgmARnEFtD";
}

$db = new db($DB_SERVER, $DB_NAME, $DB_USER, $DB_PASS);