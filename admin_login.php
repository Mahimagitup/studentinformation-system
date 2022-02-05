<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<style type="text/css"> 
#form_deg{
 padding-top:200px;
}
#login_form{
	background-color:black;
	width:400px;
	padding-top:70px;
	padding-bottom:70px;
	color:skyblue;
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
	
	<center><br><br>
	
	<h3 id="tltle_deg">Admin Login</h3><br><br>
	
	<form action="" method="POST" id="login_form">
	Email:<input type="text" name="email" required><br><br>
	Psaaword:<input type="password" name="password" required><br><br>	
	<input class="btn btn-primary" type="submit" name="submit" value="Submit">
	</form>
	<br>
	<?php
	session_start();
		if(isset($_POST['submit']))
		{
			$connection=mysqli_connect("localhost","root","");
			$db=mysqli_select_db($connection,"sms");
			$query="select * from login where email='$_POST[email]'";
			$query_run=mysqli_query($connection,$query);
			while($row = mysqli_fetch_assoc($query_run))
			{
				if($row['email']==$_POST['email'])
				{
					if($row['password']==$_POST['password'])
					{
						$_SESSION['email']= $row['email'];
						$_SESSION['name']= $row['name'];
						header("Location: admin_dashboard.php");
					}
					else
					{
						echo"Wrong password";
					}
				}
					else
					{
						echo"Wrong email id";
					}
			}
			
		}			
		?>
	</center>
	
</body>
</html>