<?php
session_start();
include_once('includes/config.php');
if (strlen($_SESSION['uid']==0)) {
  header('location:logout.php');
  } else{

?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Vaccine| Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
       <?php include_once('includes/sidebar.php');?>
        <!-- End of Sidebar -->

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
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        
                    </div>

                    <!-- Content Row -->
                    <div class="row">

<?php 
//Total tests
$query=mysqli_query($con,"select id from tbltestrecord");
$totaltest=mysqli_num_rows($query);
//Assigned tests
$query1=mysqli_query($con,"select id from tblgs");
$totalgs=mysqli_num_rows($query1);
//On the way for sample collection
$query6=mysqli_query($con,"select id from tbltestrecord where ReportStatus='On the Way for Collection'");
$totalontheway=mysqli_num_rows($query6);
//Sample Collected
$query3=mysqli_query($con,"select id from tbltestrecord where ReportStatus='Sample Collected'");
$totalsamplecollected=mysqli_num_rows($query3);
//Sent for lab
$query4=mysqli_query($con,"select id from tbltestrecord where ReportStatus='Sent to Lab'");
$totalsenttolab=mysqli_num_rows($query4);

//Report Delivered
$query5=mysqli_query($con,"select id from tbltestrecord where ReportStatus='Delivered'");
$totaldelivered=mysqli_num_rows($query5);

//Totall Registered Patients 
$query2=mysqli_query($con,"select id from tbluser");
$totalusers=mysqli_num_rows($query2); 

//Totall Registered Phlebotomist 
$query7=mysqli_query($con,"select id from tblmoh");
$totalmoh=mysqli_num_rows($query7);
?>
          
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
           <?php include_once('includes/footer2.php');?>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>
<?php } ?>