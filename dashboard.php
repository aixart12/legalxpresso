<?php 
 session_start();
  require(ROOT_PATH . '/app/database/connect.php');
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    if(isset($_POST['uname']) && isset($_POST['upassword'])){
    $ok=0;
    $set=-1;
    try{
    $stmt=$conn->query(" SELECT * FROM sachine.log_in ");
    while($row=$stmt->fetch(PDO::FETCH_ASSOC)){
    if($row['email']===$_POST['uname'] && $row['passwords']===md5($_POST['upassword'])){
        echo 'register succesfully';
        print_r($row);


        $_SESSION['email_id']=$row['email_id'];

        //this is for admin of the website
    if($row['levels']==0){
    header('Location:index.php');
    }

    if($row['levels']==1){

        //for student database chaeck.
    try{
        $stmt1=$conn->query(" SELECT * FROM sachine.log_in");
        while($row=$stmt1->fetch(PDO::FETCH_ASSOC)){
        if($row['email']===$_POST['uname']){
            $ok=1;
            $set=$row['levels'];
            
            $_SESSION['user_name']=$row['name'];
            $_SESSION['user_id']=$row['email'];

            header('Location:student/std_dashboard.php');
            break;
        }
        }
        if($ok===0){
            echo "string";
            header('Location:student/std_from.php');
        }

        }catch(Exception $err){
        echo $err->getMessage();
        }
        }
    
    }
    } 
    echo '<script>alert("you are not register yet");</script>';
    echo '<script>location.replace("log_in.php")</script>';

    }
    catch(Exception $err){
        echo $err->getMessage();
        }
    unset($_POST);
    }
    ?>
</body>
</html>
</body>
</html>