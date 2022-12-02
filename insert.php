<?php

$connect = mysqli_connect("localhost","root","","covidtmsdb");
if (isset($_POST['submit'])) {
    /*if (isset($_POST['username']) && isset($_POST['email']) &&
        isset($_POST['password']) && isset($_POST['cpassword']) &&
        isset($_POST['usertype'])) {*/
        
        $username = $_POST['username'];
        $email = $_POST['email'];
        $password = $_POST['password'];
        $cpassword = $_POST['cpassword'];

        /*$host = "localhost";
        $dbUsername = "root";
        $dbPassword = "";
        $dbName = "vaccination_management_system";

        $conn = new mysqli($host, $dbUsername, $dbPassword, $dbName);*/

        /*if ($conn->connect_error) {
            die('Could not connect to the database.');
        }*/
        /*else {
            $Select = "SELECT email FROM register WHERE email = ? LIMIT 1";*/
            $query = "INSERT INTO register(username, email, password, cpassword) values('$username', '$email', '$password', '$cpassword')";

            $result = mysqli_query($connect,$query);

            if ($result) {
                echo "<script>alert('You have successfully register')</script>";
            }
            else{
                 echo "<script>alert('Failed to register')</script>";
            }

           /* $stmt = $conn->prepare($Select);
            $stmt->bind_param("s", $email);
            $stmt->execute();
            $stmt->bind_result($resultEmail);
            $stmt->store_result();
            $stmt->fetch();
            $rnum = $stmt->num_rows;

            if ($rnum == 0) {
                $stmt->close();

                $stmt = $conn->prepare($Insert);
                $stmt->bind_param("ssssii",$username, $email ,$password, $cpassword, $usertype);
                if ($stmt->execute()) {
                    echo "New record inserted sucessfully.";
                }
                else {
                    echo $stmt->error;
                }
            }
            else {
                echo "Someone already registers using this email.";
            }
            $stmt->close();
            $conn->close();
        //}
    //}
    else {
        echo "All field are required.";
        die();
    }*/
}
/*else {
    echo "Submit button is not set";
}*/
?>