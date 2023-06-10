<?php

try {
    $dbh = new PDO(
        'mysql:host=localhost;dbname=proyecto_omdb',
        'elo',
        'Skelo789134652',
        array(PDO::ATTR_PERSISTENT => true)
    );
    echo "Connected\n";
} catch (Exception $th) {
    die("Unable to connect: ". $th->getMessage());
}

try {
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $query = "SELECT * FROM idiomas;";
    $statement = $dbh->prepare($query);
    $dbh->beginTransaction();
    $statement->execute();
    $results = $statement->fetchAll();
    $statement->closeCursor();
    $dbh->commit();
} catch (Exception $e) {
    $dbh->rollBack();
    echo "Transaction failed " . $e->getMessage();
}
$reqArr = json_decode(file_get_contents("php://input"), true);
