 <?php $result = getfeatproject(); ?>

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

    
        <div class="logo"><img src="./layoutimages/logobg.png" width="110">
</div>
        <div class="header">
            <div>
                <h1 class="titletext"><test2 >Cedar Creek</test2> <test class="subtext">WOODCRAFTING</test></h1></div>
	</div>	
	
        <div class="blocker"></div>
            <div class="outernavbar">
            <div class="navbar1">  
            <ul>
                <li><a href= ".?action=products" title= "Go to the products page">Products</a></li>
                <li><a href= ".?action=recentprojects" title= "Go to the recent projects page">Recent Projects</a></li>
                <li><a href= ".?action=contact" title= "Go to the contact page">Contact</a></li>
            </ul>
                </div> </div>
        <div class="banner container-fluid">
            <div class="col-xs-12">
                <div class="intro">
                <h2>Hand Crafted Quality</h2>
            <p>When it comes to furniture, no one does it like Cedar Creek. Each piece is a unique symphony of craftsmanship. When Cedar Creek does it, it is high quality, hand made, and totally one of a kind. Guaranteed.</p>
             
                </div>
            </div>
        <div class="featproject">
            <?php foreach ($result as $one) : ?>
            <h2><?php echo $one['projectName'];?></h2>
            <div class="projdesc col-md-6"><?php echo $one['projectDescription'];?></div>
            <?php 
            if($one['video'] == 1) {
                echo '<div class="projimg col-md-6""><iframe class="video" src="https://www.youtube.com/embed/' . $one['image'] . '" frameborder="0" allowfullscreen></iframe></div><br>';
            } else {
                echo '<div class="projimg col-md-6""><img src="images/' . $one['image'] . '" width="100%"></div><br>';
            }
            
            ?>
            <?php endforeach; ?>
        </div>
        <!--<div class="testimonials" width="498" height="280">
            <h2>Testimonials</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        </div>  -->   
        </div>
	
    </div>

</body>

</html>

