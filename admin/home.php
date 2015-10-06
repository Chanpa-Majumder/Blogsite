<?php
    
	session_start();
	
	if(isset($_SESSION['username'])|| isset($_COOKIE['username'])){
		header ("Location: index.php");	
	}
	
	  include_once('resources\init.php');
	
	error_reporting(0);
	
	if($_POST['submit'])
	{
		
		if(isset($_POST['remember'])){
           $_SESSION['cookie'] = 'enable';  
        // setcookie('useremail', $_SESSION['username'], time()+3600);	
         	
     }
		
	 if(!in_array(null, $_POST)){
      $check = login_checker($_POST);
       if($check === 1){
           $useremail = $_POST['email'];
           $_SESSION['username'] = $useremail;           
           header('Location: index.php');
       }else{
           $message = $check;
       }
   }
   
   
	
	}
	
	
?>	
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap.min.css">
</head>
<body>
		<div class="container" style="background-color: lightgreen;">

			<div class="row">
				<div class="col-md-12">
				    <img src="Image/header.jpg" style="width:100%;height:200px;">
				</div>
			</div>

			<div class="row">
				<div class="col-md-12">
					<ul class="nav  nav-justified" style="background-color: limegreen; width:100%;height:60px;">
						<li class="active"><a href="home.php">Home</a></li>
						<li class="active"><a href="contact.php">Contact Me</a></li>
						<li class="active"><a href="#">Help</a></li>
					</ul>
				</div>
			</div>
				
			<div class="row">
				<div class="col-md-4">
					<div class="well" style="background-color: lightcyan; color: black;">
                        <h2 align="center"><font color="navy">Login</font></h2><br><br>
							  
							<form action="home.php" method="post" class="form-horizontal" role="form">
							  <h2 class="alert-warning"><?php if(isset($message)) echo $message ?></h2>
										
								<div class="form-group">
									<label class="control-label col-sm-3" for="email">Email:</label>
									<div class="col-sm-9">
										<input type="email" name="email" class="form-control" id="email" placeholder="Enter email">
											
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-sm-3" for="pwd">Password:</label>
									<div class="col-sm-9">
										<input type="password" name="pass" class="form-control" id="pwd" placeholder="Enter password">
									</div>
								</div>
										
								<div class="form-group">
									<div class="col-sm-offset-3 col-sm-9">
										<label align="left"><input type="submit" name="submit" value="Login" class="btn btn-success"></label>
												
										<label class="checkbox pull-center"><br>
											<input type="checkbox" value="rememberme" name="remember">
												Remember me
										</label>
										<a href="register.php" class="text-left new-account"><p align="left"><font color="navy">Create an account</font></a></p>
									</div>
								 </div>
										
							</form>
                    </div>
				</div>
						
				<div class="col-md-8">
				  <div class="well" style="background-color: lightcyan;color: black;">
				  
					   <h2 align="left"><font color="navy">Real Life for English</font></h2><hr>
					   
					   <p align="left">There is something for everyone at this comprehensive website. 
					   It is suitable for beginners, intermediates and advanced English language speakers. 
					   ‘Real Life for English’ puts the student firmly in the driving seat of their learning with videos, podcasts and blogs.
					   The blog section is vast and constantly updated with lessons and cultural insights.</p>
					   
					   <h2 align="left"><font color="navy">Bonding through language....</font></h2><hr>
					   
					   <p align="left">Mother tongue is the language which a person speaks from the birth.
					   The language in which you uttered your first words.
					   The language which you first heard when you were in the warmth of your mother's womb.</p>
					   
					   <h2 align="left"><font color="navy">Tools for teachers</font></h2><hr>
					   
					   <p align="left">The British Council and the BBC offer this place for teachers.
					   As they say: " This is the place to come for tools to help you inside and outside the classroom - 
					   from software to help you prepare classes to a glossary of ELT terms."</p>
				   
				  </div> 
				</div>
			</div>
							
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<div class="well" style="background-color: green; color: navy;">
							<p align="center">Copyright@2015.All Rights Reserved</p>
							<p align="center">All information of this blogsite is deemed accurate but not guaranteed.</p>
							<p align="right">Blogsite design by Chanpa Majumder.</p>
							<h4 align="right">
								<span class="label label-primary">f</span>
								<span class="label label-info">t</span>
								<span class="label label-danger">g+</span>
								<span class="label label-primary">in</span>
							</h4>
						</div>
					</div>
			    </div>
		</div>
</body>	