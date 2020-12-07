<?php
	include("database.php");
	session_start();
	
	if(isset($_POST['submit']))
	{	
		$name = $_POST['name'];
		$name = stripslashes($name);
		$name = addslashes($name);

		$email = $_POST['email'];
		$email = stripslashes($email);
		$email = addslashes($email);

		$password = $_POST['password'];
		$password = stripslashes($password);
		$password = addslashes($password);

		$college = $_POST['college'];
		$college = stripslashes($college);
		$college = addslashes($college);

		$groupe = $_POST['groupe'];
		$groupe = stripslashes($groupe);
		$groupe = addslashes($groupe);

		$state = $_POST['state'];
		$state = stripslashes($state);
		$state = addslashes($state);

		$place = $_POST['place'];
		$place = stripslashes($place);
		$place = addslashes($place);

		$birth = $_POST['birth'];
		$birth = stripslashes($birth);
		$birth = addslashes($birth);

		$phone = $_POST['phone'];
		$phone = stripslashes($phone);
		$phone = addslashes($phone);
		$str="SELECT email from user WHERE email='$email'";
		$result=mysqli_query($con,$str);
		
		if((mysqli_num_rows($result))>0)	
		{
            echo "<center><h3><script>alert('Izvinite.. Ali ovaj email je već registrovan !!');</script></h3></center>";
            header("refresh:0;url=login.php");
        }
		else
		{
            $str="insert into user set name='$name',email='$email',password='$password',college='$college',groupe='$groupe',state='$state',place='$place',birth='$birth',phone='$phone'";
			if((mysqli_query($con,$str)))	
			echo "<center><h3><script>alert('Čestitamo.. Uspešno ste se registrovali !!');</script></h3></center>";
			header('location: welcome.php?q=1');
		}
    }
?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
		<title>Registracija | Online Kviz</title>
		<link rel="stylesheet" href="scripts/bootstrap/bootstrap.min.css">
		<link rel="stylesheet" href="scripts/ionicons/css/ionicons.min.css">
        <link rel="shortcut icon" type="image/png" href="image/logo.png" />
		<link rel="stylesheet" href="css/form.css">
        <style type="text/css">
            body{
                  width: 100%;
                  background: url(image/book.jpg) ;
                  background-position: center center;
                  background-repeat: no-repeat;
                  background-attachment: fixed;
                  background-size: cover;
                }
          </style>
	</head>

	<body>
		<section class="login first grey">
			<div class="container">
				<div class="box-wrapper">				
					<div class="box box-border">
						<div class="box-body">
							<center> <h5 style="font-family: Montserrat;">Registracija  </h5><h4 style="font-family: Montserrat;">Online Kviz</h4></center><br>
							<form method="post" action="register.php" enctype="multipart/form-data">
                                <div class="form-group">
									<label>Unesi Username:</label>
									<input type="text" name="name" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Email:</label>
									<input type="email" name="email" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Password:</label>
									<input type="password" name="password" class="form-control" required />
                                </div>
								<div class="form-group">
									<label>Unesi Ime i Prezime:</label>
									<input type="text" name="college" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Mesto:</label>
									<input type="text" name="place" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Država:</label>
									<input type="text" name="state" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Naziv Sportskog Saveza:</label>
									<input type="text" name="groupe" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Datum Rođenja:</label>
									<input type="text" name="birth" class="form-control" required />
								</div>
								<div class="form-group">
									<label>Unesi Telefon:</label>
									<input type="text" name="phone" class="form-control" required />
								</div>
                                
								<div class="form-group text-right">
									<button class="btn btn-primary btn-block" name="submit">Registruj se</button>
								</div>
								<div class="form-group text-center">
									<span class="text-muted">Već imaš nalog! </span> <a href="login.php">Login </a> Ovde..
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<script src="js/jquery.js"></script>
		<script src="scripts/bootstrap/bootstrap.min.js"></script>
	</body>
</html>