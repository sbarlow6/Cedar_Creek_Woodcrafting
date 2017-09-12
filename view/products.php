 <?php $result = getproduct(); ?>

<!doctype html>
<html>

<head>
	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
	<title>Cedar Creek WOODCRAFTING</title>
	<link href="./css/style.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css?family=Alfa+Slab+One|Open+Sans" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="./js/javascript.js"></script>

</head>

<body>
    <div id="counter" class="counter">counter...</div>
    <div id="demo" class="demo">1</div>
        <div id="scrwidth" class="scrwidth">1</div>

    <div class="allcontent">

    <a href="index.php">
        <div class="logo"><img src="./layoutimages/logobg.png" width="110">
</div>
        <div class="header">
            <div>
                <h1 class="titletext"><test2 >Cedar Creek</test2> <test class="subtext">WOODCRAFTING</test></h1></div>
	</div>	
    </a>
        <div class="blocker"></div>
            <div class="outernavbar">
            <div class="navbar">  
            <ul>
                <li><a href= ".?action=products" title= "Go to the products page" class="active">Products</a></li>
                <li><a href= ".?action=recentprojects" title= "Go to the recent projects page">Recent Projects</a></li>
                <li><a href= ".?action=contact" title= "Go to the contact page">Contact</a></li>
            </ul>
                </div> </div>
      
            
        <BR><BR><BR><BR><BR><BR>
            <div class="container"><div class="col-xs-12"><h2>Products</h2></div></div>
             <?php foreach ($result as $one) : ?>
           <div class="proj container">
           	<div class="col-sm-6 projdesc">
           	<h3><?php echo $one['productName'];?></h3>
            <?php echo $one['productDescription'];?></div><div class="col-sm-6">
            <?php 
            if($one['video'] == 1) {
                echo '<div class="projimg"><iframe class="video" src="https://www.youtube.com/embed/' . $one['image'] . '" frameborder="0" allowfullscreen></iframe></div><br>';
            } else {
                echo '<div class="projimg"><img src="images/' . $one['image'] . '" width="100%"></div><br>';
            }
            
            ?></div></div><br>
            
            
            
            <?php endforeach; ?>
        </div>
          
       
	
    

</body>

</html>

