<?php include('server-user.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Vaccination Management System | Register</title>
  <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
  <div class="head">
    <h3>Vaccination Management System</h3>
  </div>
  
  <div class="header">
  	<h2>Welcome Back!</h2>
  </div>
	
  <form method="post" action="register-user.php">
  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <input type="text" name="username" placeholder="Username" value="<?php echo $username; ?>">
  	</div>
  	<div class="input-group">
  	  <input type="email" name="email" placeholder="Email" value="<?php echo $email; ?>">
  	</div>
  	<div class="input-group">
  	  <input type="password" name="password_1" placeholder="Password">
  	</div>
  	<div class="input-group">
  	  <input type="password" name="password_2" placeholder="Confirm password">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Signup</button>
  	</div>
  	<p>
  		Already have an account? <a href="login-user.php">Login</a>
  	</p>
    <div class="text-center">
                                        
          <a class="small" href="index.php" style="font-weight:bold;"><i class="fa fa-home" aria-hidden="true"></i> Home Page</a>
          </div>
  </form>
</body>
</html>