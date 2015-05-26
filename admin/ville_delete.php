<?php session_start();

/*
 * Following code will delete a product from table
 * A product is identified by product id (id)
 */
require_once 'functions.php';
// array for JSON response
$response = array();

// check for required fields
if (isset($_GET['id']) ) {
    $id = $_GET['id'];

    // include db connect class
    require_once 'db_connect.php';

    // connecting to db
    $db = new DB_CONNECT();

  
    
    // check if row deleted or not
    if (mysql_query("DELETE FROM ville WHERE ID_VILLE = $id")) {

       // successfully updated
        $_SESSION["success"] = 1;
        $_SESSION["message"] = "cette ville a ete supprimé";

    } else {
        // no product found
        $_SESSION["success"] = 0;
        $_SESSION["message"] = "cette n'exist plus";

    }
} else {
    // required field is missing
    $_SESSION["success"] = 0;
    $_SESSION["message"] = "identifiant est obligatoire";

}
print_r($_SESSION);
header("Location:villes.php");
?>