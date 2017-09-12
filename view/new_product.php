<?php
session_start();

if ($_SESSION['loggedin'] != 2){
    header( 'Location: http://www.google.com/' ) ;
}

 

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
<h2>New Product</h2>
</div>

<nav class="links">
   
<form action="index.php" method="post">
        
        <br>
        
            
        <label>Project Title:</label>
        <input type="text" name="projectName" size="35" id="pName" required/>
        <br>

        <label>Project Description:</label>
        <input type="text" name="projectDescription" id="aComments"  />
        <br>

        <label>If you're using an image, enter the filename. If you're using a youtube video enter the identifier code. (It will look like this. '1XCOdq3jSmU'):</label>
        <input type="text" name="image" id="aImage"  />
        <br>
        <label>If you're using a video check this box. If it's an image leave it unchecked.</label>
        <input type="checkbox" name="letter" value="letter" id="letter" >
        <br>

        <label>&nbsp;</label>
        <input type="submit" value="Add2" name="action" class="button-link"/>
        <br>
         
         
         
    </form>

<form action="upload.php" method="post" enctype="multipart/form-data">
    You may use any of the images below for this product. If you would like to add a new image click choose file and then upload image:<br>
    <input type="file" name="fileToUpload" id="fileToUpload">
    <input type="submit" value="Upload Image" name="submit" class="button-link">
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


<a href="?action=products_edit" class="button-link">Back</a></nav>
</body>
</html>