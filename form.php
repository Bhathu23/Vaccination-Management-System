<?php

session_start();
error_reporting(0);
//DB conncetion
include_once('includes/config.php');

if(isset($_POST['submit'])){
//getting post values
$fullname=$_POST['fullname'];
$mobilenumber=$_POST['mobilenumber'];
$dob=$_POST['dob'];
$nic=$_POST['nic'];
$address=$_POST['address'];
$vaccineproduct=$_POST['vaccineproduct'];
$bno=$_POST['bno'];
$gno=$_POST['gno'];
$age=$_POST['age'];
$date=$_POST['date'];
$sex=$_POST['sex'];
$allergies=$_POST['allergies'];
$chronic=$_POST['chronic'];
$criteria=$_POST['criteria'];
$combid=$_POST['combid'];

$chk="";
foreach ($criteria as $chk1) {
  $chk.=$chk1.",";
}

$chks="";
foreach ($combid as $chks1) {
  $chks.=$chks1.",";
}

$query="insert into form(fullname,mobilenumber,dob,nic,address,vaccineproduct,bno,gno,age,date,sex,allergies,chronic,criteria,combid) values('$fullname','$mobilenumber','$dob','$nic','$address','$vaccineproduct','$bno','$gno','$age','$date','$sex','$allergies','$chronic','$chk','$chks1');";

$result = mysqli_multi_query($con, $query);
if ($result) {

  echo "<script>window.location.href='new-user-testing.php'</script>";
} 
else {
    echo "<script>alert('Something went wrong. Please try again.');</script>";  
echo "<script>window.location.href='new-user-testing.php'</script>";
}
}

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vaccination Management System | New User Vaccinating</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
label{
    font-size:16px;
    font-weight:bold;
    color:#000;
}

</style>
  <script>
function mobileAvailability() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'mobnumber='+$("#mobilenumber").val(),
type: "POST",
success:function(data){
$("#mobile-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

<?php include_once('includes/sidebar.php');?>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
          <?php include_once('includes/topbar-user.php');?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">COVID 19 CONSENT FORM</h1>
<form name="newtesting" method="post">
  <div class="row">

                        <div class="col-lg-6">

                            <!-- Basic Card Example -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Personal Information</h6>
                                </div>
                                
                                <div class="card-body">
                        <div class="form-group">
                            <label>Full Name</label>
                                            <input type="text" class="form-control" id="fullname" name="fullname"  placeholder="Enter your full name..." pattern="[A-Za-z ]+" title="letters only" required="true">
                                        </div>

                                        <div class="form-group">
                                             <label>Mobile Number</label>
                                  <input type="text" class="form-control" id="mobilenumber" name="mobilenumber" placeholder="Please enter your mobile number" pattern="[0-9]{10}" title="10 numeric characters only" required="true" onBlur="mobileAvailability()">
                                                <span id="mobile-availability-status" style="font-size:12px;"></span>
                                        </div>

                                        <div class="form-group">
                                             <label>DOB</label>
                                            <input type="date" class="form-control" id="dob" name="dob" required="true">
                                        </div>

                                        <div class="form-group">
                                               <label>NIC Number</label>
                                            <input type="text" class="form-control" id="nic" name="nic" placeholder="Enter NIC Number" required="true">
                                        </div>

                                         <div class="form-group">
                                              <label>Address</label>
                                            <textarea class="form-control" id="address" name="address" required="true" placeholder="Enter your full addres here"></textarea>
                                        </div>

                                        <div class="form-group">
                                              <label>Vaccine Product </label>
                                            <input type="text" class="form-control" id="vaccineproduct" name="vaccineproduct" placeholder="Pfizer / Sinopharm / Moderna" required="true">
                                        </div>

                                         <div class="form-group">
                                              <label>Batch Number </label>
                                            <input type="text" class="form-control" id="bno" name="bno" placeholder="Enter your Batch number here" required="true">
                                        </div>
                        

                                      <div class="form-group">
                                              <label>GS Division and No</label>
                                      <input type="text" class="form-control" id="gno" name="gno" placeholder="Enter your GS Division Here" required="true">
                                      </div>

                                      <div class="form-group">
                                              <label>Age</label>
                                      <input type="text" class="form-control" id="age" name="age" placeholder="Age" required="true">
                                      </div>

                                      
                                      <label>Sex</label><br>
                                      <input type="radio" id="male" name="sex" value="Male">
                                      <label for="male">Male</label>

                                      <input type="radio" id="female" name="sex" value="Female">
                                      <label for="female">Female</label><br><br>


                                      <label>Allergies</label><br>
                                      <input type="radio" id="yes" name="allergies" value="Yes">
                                      <label for="yes">Yes</label>

                                      <input type="radio" id="no" name="allergies" value="No">
                                      <label for="no">No</label><br><br>


                                      <label>Taking treatement for any chronic disease</label><br>
                                      <input type="radio" id="yes" name="chronic" value="Yes">
                                      <label for="yes">Yes</label>

                                      <input type="radio" id="no" name="chronic" value="No">
                                      <label for="no">No</label><br><br>

                                      <label>Selection Criteria</label><br>
                                      <input type="checkbox" name="criteria[]" value="Health Staff"> Health Staff<br>
                                      <input type="checkbox" name="criteria[]" value="Front line workers - other than health staff and security forces"> Front line workers - other than health staff and security forces<br>
                                      <input type="checkbox" name="criteria[]" value="More than 60 years of age"> More than 60 years of age<br>
                                      <input type="checkbox" name="criteria[]" value="With comorbidities in 30-60 years age group"> With comorbidities in 30-60 years age group<br>
                                      <input type="checkbox" name="criteria[]" value="Security forces"> Security forces<br>
                                      <input type="checkbox" name="criteria[]" value="Without comorbidities in 30-60 years age group"> Without comorbidities in 30-60 years age group<br>
                                      <input type="checkbox" name="criteria[]" value="Less than 30 years of age"> Less than 30 years of age<br>
                                      <input type="checkbox" name="criteria[]" value="Pragnant Mother"> Pragnant Mother<br>
                                      <input type="checkbox" name="criteria[]" value="Education staff (Teachers and others)"> Education staff (Teachers and others)<br><br>

                                      <label>Comorbidities</label><br>
                                      <input type="checkbox" name="combid[]" value="Diabetes Mellitus"> Diabetes Mellitus<br>
                                      <input type="checkbox" name="combid[]" value="Hypertension"> Hypertension<br>
                                      <input type="checkbox" name="combid[]" value="Ischemic Heart Disease"> Ischemic Heart Disease<br>
                                      <input type="checkbox" name="combid[]" value="Bronchial Asthma"> Bronchial Asthma<br>
                                      <input type="checkbox" name="combid[]" value="Chronic Obstructive Airway Diseases"> Chronic Obstructive Airway Diseases<br>
                                      <input type="checkbox" name="combid[]" value="Chronic Kidney Disease"> Chronic Kidney Disease<br>
                                      <input type="checkbox" name="combid[]" value="Malignancies"> Malignancies<br>
                                      <input type="checkbox" name="combid[]" value="Other"> Other<br><br>
                                      

                                      <!--
                                      <div class="form-group">
                                              <label>Selection Criteria</label>
                                              <select class="form-control" id="select" name="select" required="true">
                                                  <option value="">Select</option> 
                                                  <option value="hs">Health staff</option>  
                                                  <option value="fw">Front line workers - other than health staff and security forces</option>
                                                  <option value="m60">More than 60 years of age</option>    
                                                 <option value="wc">With comorbidities in 30-60 years age group</option> 
                                                 <option value="sf">Security forces</option>  
                                                  <option value="wic">Without comorbidities in 30-60 years age group</option>
                                                  <option value="l30">Less than 30 years of age</option>    
                                                 <option value="pm">Pragnant Mother</option> 
                                                 <option value="es">Education staff (Teachers and others)</option>  
                       
                                              </select>
                                        </div>

                                        <div class="form-group">
                                              <label>Comorbidities</label>
                                              <select class="form-control" id="select1" name="select1" required="true">
                                                  <option value="">Select</option> 
                                                  <option value="dm">Diabetes Mellitus</option>  
                                                  <option value="ht">Hypertension</option>
                                                  <option value="ihd">Ischemic Heart Disease</option>    
                                                 <option value="ba">Bronchial Asthma</option> 
                                                 <option value="coad">Chronic Obstructive Airway Diseases</option>  
                                                  <option value="ckd">Chronic Kidney Disease</option>
                                                  <option value="m">Malignancies</option>    
                                                 <option value="o">Other</option>  
                       
                                              </select>
                                        </div>
                                        -->
                                        <div class="form-group">
                                             <label>Date</label>
                                            <input type="date" class="form-control" id="date" name="date" required="true">
                                        </div>

                                        <div class="form-group">
                                          <input type="submit" class="btn btn-primary btn-user btn-block" name="submit" id="submit">
                                        </div>
                                    
                                </div>
                            </div>

                        </div>
                       

                                </div>
                            </div>
                       

                        </div>

                    </div>
</form>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

           <?php include_once('includes/footer.php');?>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>



    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>
</html>