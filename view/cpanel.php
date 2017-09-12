<?php
session_start();

if ($_SESSION['loggedin'] != 2){
    header( 'Location: http://www.google.com/' ) ;
}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
<h2>Control Panel</h2>
</div>

<nav class="links">
    <a href= ".?action=featproject_edit" title= "Edit the featured project" class="button-link">Featured Project</a><br><br><br>
<a href= ".?action=products_edit" title= "Edit the products page" class="button-link">Products</a><br><br><br>
<a href= ".?action=projects_edit" title= "Edit the recent projects page" class="button-link">Recent Projects</a><br><br><br>
<a href= ".?action=pwchange" title= "Change your password" class="button-link">Change Password</a><br><br><br>
<a href= ".?action=logout" title= "Edit the featured project" class="button-link">Logout</a><br><br><br>
</nav>
</body>
</html>