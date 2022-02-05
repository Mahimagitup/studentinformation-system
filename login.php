<!DOCTYPE html>
<html>
<head>
<title>Login page</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<style type="text/css"> 
#form_deg{
 padding-top:50px;
}
#login_form{
	background-color:black;
	width:400px;
	padding-top:70px;
	padding-bottom:70px;
}

#tltle_deg{
	background-color:skyblue;
	color:black;
	text-align:center;
	font-weight:bold;
	width:400px;
	padding-top:10px;
	padding-bottom:20px;
	font-size:20px;
}

</style>
</head>
<body>
	<div id="form_deg">
	<center>
	
	<h3 id="tltle_deg">LOGIN FORM</h3><br>
	
	<form action="" method="POST" id="login_form" >
	<input class="btn btn-primary" type="submit" name="admin_login" value="ADMIN LOGIN"><br><br>
	<input class="btn btn-primary" type="submit" name="student_login" value="STUDENT LOGIN"><br><br>
	<a href="index.php"><h1>Home</h1></a>
	</form>
	<?php
		if(isset($_POST['admin_login']))
		{
			header("Location: admin_login.php");
		}
		if(isset($_POST['student_login']))
		{
			header("Location: student_login.php");
		}
	?>
	</center>
	</div>
</body>
</html>