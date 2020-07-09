<?php
session_start();
if(isset($_POST['submit'])){
	echo $id = $_POST['id'];
	$password = $_POST['password'];

$con = mysqli_connect("localhost","root","","online_bank");
$result = mysqli_query($con, "SELECT * FROM login WHERE id='$id' && pwd='$password'");
$row = mysqli_fetch_assoc($result);
$accno = $row['account_no'];
$role = $row['role'];
echo $count = mysqli_num_rows($result);
if($count==1)
{
	$_SESSION['account_no'] = $accno;
	$_SESSION['role'] = $role;
	header("refresh:0;url=../profile/dashboard.php");
	
}
else
{
	header("refresh:0;url=../login/loginW.html");
}
}
?>