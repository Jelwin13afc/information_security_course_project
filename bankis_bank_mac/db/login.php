<?php
$id = $_POST['id'];
$password = $_POST['password'];
session_start();
$con = mysqli_connect("localhost","root","Jelwin,2000","db_bank");
$result = mysqli_query($con, "SELECT * FROM login WHERE id='$id' && pwd='$password'");

$row = mysqli_fetch_assoc($result);

$accno = $row['account_no'];
$resultr = mysqli_query($con, "SELECT * FROM register WHERE account_no = '$accno'");


$resultmac = mysqli_query($con, "SELECT * FROM mac_user WHERE subject_name='$acc_type'");
$rowmac=mysqli_fetch_array($resultmac,MYSQLI_ASSOC);

$subject_name=$rowmac['subject_name'];

$rowr = mysqli_fetch_array($resultr,MYSQLI_ASSOC);
$count = mysqli_num_rows($result);
$acc_type=$rowr['type_user'];
if($count==1)
{
	$_SESSION['account_no'] = $accno;
	if($acc_type==='admin')
		header("refresh:0;url=../profile/dashboard.php");
	else if($acc_type==='employee')
		header("refresh:0;url=../profile/dashboard_employee.php");
	else {
		header("refresh:0;url=../profile/dashboard_customer.php");}
		
}
else
{
	header("refresh:0;url=../login/loginW.html");
}
?>