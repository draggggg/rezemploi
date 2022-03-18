<?php
// Establish Connection to Database
function connect() {
    static $conn;
    if ($conn === NULL){ 
        $conn = mysqli_connect('localhost','root','1ZWcoe0AunnxSmbF','socialnetwork');
    }
    return $conn;
}

?>