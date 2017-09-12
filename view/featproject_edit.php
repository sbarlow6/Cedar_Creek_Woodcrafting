<?php
session_start();

if ($_SESSION['loggedin'] != TRUE){
    header( 'Location: http://www.google.com/' ) ;
}

 $result = getfeatproject(); 

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
<h2>Edit Featured Project</h2>
</div>

<nav class="links">
<?php foreach ($result as $one) : ?>    
<form action="index.php" method="post">
        
        <br>
        
            
        
        <label>Project Title:</label>
        <input type="text" name="projectName"  size="35" id="pName" required value="<?php echo $one['projectName'];?>"/>
        <br>

        <label>Project Description:</label>
        <input type="text" name="projectDescription" id="aComments"  value="<?php echo $one['projectDescription'];?>"/>
        <br>

        <label>If you're using an image, enter the filename. If you're using a youtube video enter the identifier code. (It will look like this. '1XCOdq3jSmU'):</label>
        <input type="text" name="image" id="aImage"  value="<?php echo $one['image'];?>"/>
        <br>
        <label>If you're using a video check this box. If it's an image leave it unchecked.</label>
        <input type="checkbox" name="letter" value="letter" id="letter" <?php if ($one['video'] == 1) { echo 'checked'; }?> >
        <br>

        <label>&nbsp;</label>
        <input type="submit" value="Update" name="action" class="button-link" />
        <br>
         
    </form>
 <?php endforeach; ?>

<form action="upload.php" method="post" enctype="multipart/form-data">
    You may use any of the images below for this project. If you would like to add a new file click choose file and then upload image:<br>
    <input type="file" name="fileToUpload" id="fileToUpload" >
    <input type="submit" value="Upload Image" class="button-link" name="submit">
</form>
Available images:<br>
<?php
$dir    = './images';
$files1 = scandir($dir);
unset($files1[0]);
unset($files1[1]);
unset($files1[2]);

foreach($files1 as $value) {
  echo $value;
  echo '<br><img src="images/' . $value . '" height="50">';
  echo '<br><br>';
}
    ?>


<a href="?action=login" class='button-link'>Back</a></nav>
</body>
</html>