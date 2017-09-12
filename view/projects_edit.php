<?php
session_start();

if ($_SESSION['loggedin'] != 2){
    header( 'Location: http://www.google.com/' ) ;
}

 $result = getproject(); 

?>

<html>

<head>
	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">


	<title>Cedar Creek WOODCRAFTING</title>
	<link href="./css/cpanel.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One|Open+Sans" rel="stylesheet">
</head>
<body>
<div class="title">
<h2>Edit Products</h2>
</div>

<nav class="links">
    

<?php foreach ($result as $one) : ?>   
    <div class='sector'>
<form action="index.php" method="post">
        
        <br>
        
            
        <input type="hidden" name="projectid" value= '<?php echo $one['projectid'];?>' >
        <label>Project Title:</label>
        <input type="text" name="projectName"  size="35" id="pName" required value="<?php echo $one['projectName'];?>"/>
        <br>

        <label>Project Description:</label>
        <input type="text" name="projectDescription" id="aComments"  value="<?php echo $one['projectDescription'];?>"/>
        <br>

        <label><?php
        if($one['video'] == 1) {
            echo 'Video:';
        } else {
            echo 'Image:';
        }
        
        ?></label>
        <input type="text" name="image" id="aImage"  value="<?php echo $one['image'];?>"/>
        <br>

        <label>&nbsp;</label>
        <input type="submit" value="Update3" name="action" class="button-link"/>
        <input type="submit" value="Delete2" name="action" class="button-link"/>
        <br>
         
</form></div><br>
 <?php endforeach; ?>
<a href=".?action=newproject" class="button-link">New Project</a><br><BR><BR>
<a href=".?action=login" class="button-link">Back</a></nav>
</body>
</html>