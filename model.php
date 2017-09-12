<?php
// Get your database connection
require_once 'support/database.php';

function getfeatproject() {
    global $db;
  $practiceQuery = 'SELECT * FROM featproject;';
    $statement = $db->prepare($practiceQuery);
    $statement->execute();
    $regResult = $statement->fetchAll();
    $statement->closeCursor();
    return $regResult;

}

function getproduct() {
    global $db;
// Use a prepared statement to write the data to the visitors.registration table
  $practiceQuery = 'SELECT * FROM products;';
    
    $statement = $db->prepare($practiceQuery);
    $statement->execute();
    $regResult = $statement->fetchAll();
    $statement->closeCursor();
    return $regResult;

}



function getproject() {
    global $db;
// Use a prepared statement to write the data to the visitors.registration table
  $practiceQuery = 'SELECT * FROM projects;';
    
    $statement = $db->prepare($practiceQuery);
    $statement->execute();
    $regResult = $statement->fetchAll();
    $statement->closeCursor();
    return $regResult;

}

function verifyLogin()  {
    global $db;
    
    $sql = 'SELECT * FROM User 
            WHERE userId = 1';
    $statement = $db->prepare($sql);
    $statement->execute();
    $user = $statement->fetch();
    $statement->closeCursor();
    return $user;
    
       
}
function edit_featproject($projectName, $comments, $image, $video) {
    global $db;
    $query = 'UPDATE featproject
                 SET 
                 projectName = :projectName,
                 projectDescription = :projectDescription,
                 image = :image,
                 video = :video
              WHERE
                 projectId = 1';
    $statement = $db->prepare($query);
    $statement->bindValue(':projectName', $projectName);
    $statement->bindValue(':projectDescription', $comments);
    $statement->bindValue(':image', $image);
    $statement->bindValue(':video', $video);
    $statement->execute();
    $statement->closeCursor();
}

function edit_product($productid, $productName, $comments, $image) {
    global $db;
    $query = 'UPDATE products
                 SET 
                 productName = :productName,
                 productDescription = :productDescription,
                 image = :image
              WHERE
                 productId = :productid';
    $statement = $db->prepare($query);
    $statement->bindValue(':productid', $productid);
    $statement->bindValue(':productName', $productName);
    $statement->bindValue(':productDescription', $comments);
    $statement->bindValue(':image', $image);
    $statement->execute();
    $statement->closeCursor();
}

function edit_project($projectid, $projectName, $comments, $image) {
    global $db;
    $query = 'UPDATE projects
                 SET 
                 projectName = :projectName,
                 projectDescription = :projectDescription,
                 image = :image
              WHERE
                 projectId = :projectid';
    $statement = $db->prepare($query);
    $statement->bindValue(':projectid', $projectid);
    $statement->bindValue(':projectName', $projectName);
    $statement->bindValue(':projectDescription', $comments);
    $statement->bindValue(':image', $image);
    $statement->execute();
    $statement->closeCursor();
}

function delete_product($productid) {
    global $db;
    $query = 'DELETE FROM products
              WHERE
                 productid = :productid';
    $statement = $db->prepare($query);
    
    $statement->bindValue(':productid', $productid);
    
    $statement->execute();
    $statement->closeCursor();
}

function delete_project($projectid) {
    global $db;
    $query = 'DELETE FROM projects
              WHERE
                 projectid = :projectid';
    $statement = $db->prepare($query);
    
    $statement->bindValue(':projectid', $projectid);
    
    $statement->execute();
    $statement->closeCursor();
}


function add_product($productName, $productDescription, $image, $video) {
    global $db;
    $query = 'INSERT INTO products
                 (productName, productDescription, image, video)
              VALUES
                 (:productName, :productDescripition, :image, :video)';
    $statement = $db->prepare($query);
    $statement->bindValue(':productName', $productName);
    $statement->bindValue(':productDescripition', $productDescription);
    $statement->bindValue(':image', $image);
    $statement->bindValue(':video', $video);
    $statement->execute();
    $statement->closeCursor();
}

function add_project($projectName, $projectDescription, $image, $video) {
    global $db;
    $query = 'INSERT INTO projects
                 (projectName, projectDescription, image, video)
              VALUES
                 (:projectName, :projectDescripition, :image, :video)';
    $statement = $db->prepare($query);
    $statement->bindValue(':projectName', $projectName);
    $statement->bindValue(':projectDescripition', $projectDescription);
    $statement->bindValue(':image', $image);
    $statement->bindValue(':video', $video);
    $statement->execute();
    $statement->closeCursor();
}

function changepw($newPassword1) {
    global $db;
    $query = 'UPDATE User
                 SET 
                 password = :newPassword1                
            ';
    $statement = $db->prepare($query);
    $statement->bindValue(':newPassword1', $newPassword1);
    $statement->execute();
    $statement->closeCursor();
}
// execute makes the statement happen, rowCount states how many rows have changed within a table as a result.
// Test if the insertion worked, if yes display a confirmation, if not show a failure message

?>