<?php
require_once "conf/conf.php";
/*if(isset($_SESSION['user_id'])!="") {
header("Location: dashboard.php");
}*/
if (isset($_POST['signup'])) {
$name = mysqli_real_escape_string($conn, $_POST['name']);
$email = mysqli_real_escape_string($conn, $_POST['email']);
$password = mysqli_real_escape_string($conn, $_POST['password']);
$cpassword = mysqli_real_escape_string($conn, $_POST['cpassword']); 
$usertype = mysqli_real_escape_string($conn, $_POST['usertype']);
if (!preg_match("/^[a-zA-Z ]+$/",$name)) {
$name_error = "Name must contain only alphabets and space";
}
if(!filter_var($email,FILTER_VALIDATE_EMAIL)) {
$email_error = "Please Enter Valid Email ID";
}
if(strlen($password) < 6) {
$password_error = "Password must be minimum of 6 characters";
}       
/*if(strlen($mobile) < 10) {
$mobile_error = "Mobile number must be minimum of 10 characters";
}*/
if($password != $cpassword) {
$cpassword_error = "Password and Confirm Password doesn't match";
}
if(mysqli_query($conn, "INSERT INTO register(name, email, password, cpassword, usertype) VALUES('" . $name . "', '" . $email . "', '" . md5($password) . "','" . $cpassword . "', '" . $usertype . "')")) {
//header("location: login.php");
exit();
} else {
echo "Error: " ; "" . mysqli_error($conn);
}
mysqli_close($conn);
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>register now</title>

   <!-- custom css file link  -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   <link rel="stylesheet" href="style.css">

</head>
<body>
   
<div class="form-container">

   <form action="" method="post">
      <h3>register </h3>
	   <div class="form-icon">
                <span><i class="icon icon-user"></i></span>
            </div>
   
	   <input type="text" name="name" required placeholder="enter user name">
      <input type="email" name="email" required placeholder="enter your email">
      <input type="password" name="password" required placeholder="enter your password">
      <input type="password" name="cpassword" required placeholder="confirm your password">
       <select name="usertype">
	   <option value="" disabled selected hidden>User Type</option>
        <option class="gs" value="gs">GS</option>
        <option value="moh officer">MOH Officer</option>
		    <option value="admin">Admin</option>
		    <optgroup label="Normal user">
		    <option value="guest">Guest</option>
		    <option value="user">User</option>
		 </optgroup>
      </select>
      <input type="submit" name="submit" value="SIGN UP" class="form-btn">
      <p>already have an account? <a href="signup.php"><b>Sign in</b></a></p>
   </form>

</div>

</body>
</html>