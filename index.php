<?php
session_start();
//get the model or connect to the support code so that the variables can function
require_once 'model.php';

// we have to have some way to figure out if we have an action, we need to acknowledge GET it or POST, which are the two options of method in PHP.

if(filter_input(INPUT_GET, 'action')) {
$action = filter_input(INPUT_GET, 'action');
}
else {
    $action = filter_input(INPUT_POST, 'action');
    
}
// the above is just accounting for if there was a request.
 
// Control structures
switch($action) {
    default:
        include 'view/home.php';
        break;
    
        
    case "products":
     if ($action == 'products') {    
       
       
    include('view/products.php');
    }
    break;
    
    case "recentprojects":
     if ($action == 'recentprojects') {    
       
       
    include('view/recentprojects.php');
    }
    break;
    
    case "contact":
     if ($action == 'contact') {    
       
       
    include('view/contact.php');
    }
    break;
    
    case "featproject_edit":
     if ($action == 'featproject_edit') {    
       
       
    include('view/featproject_edit.php');
    }
    break;
    
    case "login":
        

     if ($action == 'login') {   
         if($_SESSION['loggedin'] == 2){
             include('view/cpanel.php');
         } else {
         
         
       $password = filter_input(INPUT_POST, 'password');
        $name = filter_input(INPUT_POST, 'username');     
        $user = verifyLogin();
        
        
        if($password == $user['password'] && $name == $user['username']){
         
         $_SESSION['loggedin'] = 2;
         include('view/cpanel.php');
         
         
    } else {
        echo 'Incorrect credentials, please try again';
         include('view/login.php');}}
    break;

    
    
}

case 'logout':
    if ($action == 'logout') {
        session_destroy();
        $_SESSION['loggedin'] = 1;
        header ("location: index.php");
        exit();
        break;
    }
    
    case "Update":
       $projectName = filter_input(INPUT_POST, 'projectName', FILTER_SANITIZE_STRING); 
       $comments = filter_input(INPUT_POST, 'projectDescription', FILTER_SANITIZE_STRING);
       $image = filter_input(INPUT_POST, 'image', FILTER_SANITIZE_STRING); 
       if(isset($_POST['letter'])) {
    edit_featproject($projectName, $comments, $image, 1);
   
} else {
    edit_featproject($projectName, $comments, $image, 0);
    
}
      
          
           
           include('view/cpanel.php');
           
           exit;
        //echo $user_id; echo $assignmentId; echo $assignmentName; echo $comments; echo $date; exit;
        
            break;
        
    case "products_edit":
     if ($action == 'products_edit') {    
       
       
    include('view/products_edit.php');
    }
    break; 
    
    case "projects_edit":
     if ($action == 'projects_edit') {    
       
       
    include('view/projects_edit.php');
    }
    break; 
    
    case "Update2":
       $productid =  filter_input(INPUT_POST, 'productid');
       $productName = filter_input(INPUT_POST, 'productName', FILTER_SANITIZE_STRING); 
       $comments = filter_input(INPUT_POST, 'productDescription', FILTER_SANITIZE_STRING);
       $image = filter_input(INPUT_POST, 'image', FILTER_SANITIZE_STRING); 

      
          edit_product($productid, $productName, $comments, $image);
           
           include('view/cpanel.php');
           
           exit;
        
            break;
        
        
        
        
        
        case "Delete":
       $productid =  filter_input(INPUT_POST, 'productid');
       
          delete_product($productid);
           
           include('view/cpanel.php');
           
           exit;
        
            break;
        
        
         case "Update3":
       $projectid =  filter_input(INPUT_POST, 'projectid');
       $projectName = filter_input(INPUT_POST, 'projectName', FILTER_SANITIZE_STRING); 
       $comments = filter_input(INPUT_POST, 'projectDescription', FILTER_SANITIZE_STRING);
       $image = filter_input(INPUT_POST, 'image', FILTER_SANITIZE_STRING); 

      
          edit_project($projectid, $projectName, $comments, $image);
           
           include('view/cpanel.php');
           
           exit;
        
            break;
        
        
        
        
        
        case "Delete2":
       $projectid =  filter_input(INPUT_POST, 'projectid');
       
          delete_project($projectid);
           
           include('view/cpanel.php');
           
           exit;
        
            break;
        
        
        case "newproduct":

           include('view/new_product.php');
           
           exit;
        
            break;
        
         case "newproject":

           include('view/new_project.php');
           
           exit;
        
            break;
        
       case "Add":
       $productName = filter_input(INPUT_POST, 'productName', FILTER_SANITIZE_STRING);
          
       $productDescription = filter_input(INPUT_POST, 'productDescription', FILTER_SANITIZE_STRING);
    
       $image = filter_input(INPUT_POST, 'image', FILTER_SANITIZE_STRING);
   
       if(isset($_POST['letter']))
{
    add_product($productName, $productDescription, $image, 1);
   
} else {
    add_product($productName, $productDescription, $image, 0);
    
}
       
          
           
           include('view/cpanel.php');
           
           exit;
        
            break;
            
              case "Add2":
       $projectName = filter_input(INPUT_POST, 'projectName', FILTER_SANITIZE_STRING);
         
       $projectDescription = filter_input(INPUT_POST, 'projectDescription', FILTER_SANITIZE_STRING);
   
       $image = filter_input(INPUT_POST, 'image', FILTER_SANITIZE_STRING);
   
       if(isset($_POST['letter']))
{
    add_project($projectName, $projectDescription, $image, 1);

} else {
    add_project($projectName, $projectDescription, $image, 0);

}
       
          
           
           include('view/cpanel.php');
           
           exit;
        
            break;
            
     case "pwchange":
            if ($action == 'pwchange') {
           include('view/pwchange.php');
            }
           exit;
        
            break;
            
     case "changepw":
       $oldPassword = filter_input(INPUT_POST, 'oldPassword', FILTER_SANITIZE_STRING);
       $newPassword1 = filter_input(INPUT_POST, 'newPassword1', FILTER_SANITIZE_STRING);
       $newPassword2 = filter_input(INPUT_POST, 'newPassword2', FILTER_SANITIZE_STRING);
       $user = verifyLogin();
       
        if($oldPassword == $user['password']) {
            if($newPassword1 == $newPassword2) {
                changepw($newPassword1);
            } else { echo 'Passwords do not match';}
        } else { echo 'Old password is incorrect'; }
       
       changepw($newPassword1);
       include('view/cpanel.php');
           
           exit;
        
            break;
      
}
?>