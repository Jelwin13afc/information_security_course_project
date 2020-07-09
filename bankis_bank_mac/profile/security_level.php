<?php
session_start();
$account_no = $_SESSION['account_no'];
$con = mysqli_connect("localhost","root","Jelwin,2000","db_bank");
$result = mysqli_query($con, "SELECT * FROM loan_info WHERE account_no = '$account_no'");
$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
$ac1=$row['account_no'];

$resultr = mysqli_query($con, "SELECT * FROM register WHERE account_no = '$account_no'");
$rowr = mysqli_fetch_array($resultr,MYSQLI_ASSOC);
$user_type=$rowr['type_user'];

$resultmac = mysqli_query($con, "SELECT * FROM mac_user WHERE subject_name = 'admin'");
$rowmac = mysqli_fetch_array($resultmac,MYSQLI_ASSOC);
$dashboard=$rowmac['Dashboard(C)'];
$profile=$rowmac['Profile(C)'];
$transfer_money=$rowmac['Transfer_Money(S)'];
$transactions=$rowmac['Transactions(T.S.)'];
$loan = $rowmac['Loan(C)'];

$resultmac = mysqli_query($con, "SELECT * FROM mac_user WHERE subject_name = 'employee'");
$rowmac = mysqli_fetch_array($resultmac,MYSQLI_ASSOC);
$dashboard1=$rowmac['Dashboard(C)'];
$profile1=$rowmac['Profile(C)'];
$transfer_money1=$rowmac['Transfer_Money(S)'];
$transactions1=$rowmac['Transactions(T.S.)'];
$loan1 = $rowmac['Loan(C)'];

$resultmac = mysqli_query($con, "SELECT * FROM mac_user WHERE subject_name = 'customer'");
$rowmac = mysqli_fetch_array($resultmac,MYSQLI_ASSOC);
$dashboard2=$rowmac['Dashboard(C)'];
$profile2=$rowmac['Profile(C)'];
$transfer_money2=$rowmac['Transfer_Money(S)'];
$transactions2=$rowmac['Transactions(T.S.)'];
$loan2 = $rowmac['Loan(C)'];

?>
<!DOCTYPE html>
<html>
<head>
  <title>BANKIS BANK</title>
  <link rel="icon" href="../img/profile.jpg" type="image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/response.css">
<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>
<style type="text/css">
  table { border: 1px solid black; border-collapse: collapse; }
  table td {border: 1px solid black; border-right: 1px solid white; border-left: 1px solid white}
</style>
</head>
<body style="background-color:#474B4F;">

<div class="topnav" id="myTopnav">
  <img style="float:right; right:1" src="../img/profile.jpg" height="50" width="150">
  <a href="dashboard.php"><i class="fa fa-fw fa-calculator "></i>Dashboard</a>
  <a href="profile.php"><i class="fa fa-fw fa-id-card-o "></i>Profile</a>
  <a href="transfer.php"><i class="fa fa-fw fa-cogs "></i>Transfer Money</a>
  <a href="transactions.php"><i class="fa fa-fw fa-file-text "></i>Transactions</a>
  <a href="Loan.php" ><i class="fa fa-fw fa-sliders "></i>Loan</a>
      <a href="security_level.php" class="active"><i class="fa fa-fw fa-sliders "></i>Security Level</a>

  <a href="logout.php" style="float: right"><i class="fa fa-fw fa-sign-out "></i>Logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<br><br>
<center>
  <div style="background-color: #4EB1BA; height: 45px; width: 100%; color: white; "><h1>Security Levels</h1></div>
  <table cellpadding="10">
    <col width="400">
    
    <tr style="background-color:#86C232">
      <td><b>User Type: </b></td>
      <td><b>Dashboard(Confidential)</b></td>
      <td><b>Profile(Confidential)</b></td>
      <td><b>Tranfer_Money(Secret)</b></td>
      <td><b>Transactions(Top_Secret)</b></td>
      <td><b>Loan(Confidential)</b></td>
    </tr>
    <tr style="background-color:#86C232">
      <td>Admin (Top Secret)</td>
      <td><?php echo $dashboard ?></td>
      <td><?php echo $profile ?></td>
      <td><?php echo $transfer_money ?></td>
      <td><?php echo $transactions ?></td>
      <td><?php echo $loan ?></td>
    </tr>
    <tr style="background-color:#86C232">
      <td>Employee(Secret) </td>
      <td><?php echo $dashboard1 ?></td>
      <td><?php echo $profile1 ?></td>
      <td><?php echo $transfer_money1 ?></td>
      <td><?php echo $transactions1 ?></td>
      <td><?php echo $loan1 ?></td>
    </tr>

    <tr style="background-color:#86C232">
      <td>Customer(Confidential) </td>
      <td><?php echo $dashboard2 ?></td>
      <td><?php echo $profile2 ?></td>
      <td><?php echo $transfer_money2 ?></td>
      <td><?php echo $transactions2 ?></td>
      <td><?php echo $loan2 ?></td>
    </tr>

	

	
  </table>
</center>
</body>
</html>
