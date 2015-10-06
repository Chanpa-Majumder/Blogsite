<?php
  
   include_once('resources\init.php');
         session_start();
if(!isset($_SESSION['username']) ){
    if(!isset($_COOKIE['username'])){
        header('Location: home.php') ;
    }
}
   
   if(!isset($_GET['id']))
   {
	   Header("Location: index.php");
	   die();
   }
   
   del("posts", $_GET['id']);
   
    Header("Location: index.php");
	die();
   
?>