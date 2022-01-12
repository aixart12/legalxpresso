<?php
// require(ROOT_PATH . '/app/database/connect.php');
?>
<!DOCTYPE html>
<html>
<head>
 <style type="text/css">
    :root{
            --background:#45b6f7;
            --header:#4a555c;
            --footer: #131521;
            --head_font_color: white;
            --foot_font_color: whitesmoke;
          }
          *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins" , sans-serif;
          }
          html{
            background-image: linear-gradient(15deg,white,var(--background));
            width: 100%;
            background-repeat: no-repeat;
            
          }
 </style>
</head>
<body>
<?php
if(isset($_POST['signup-btn'])){
  var_dump($_POST);
  die();
}








// $next=0;
// if(isset($_POST['level']) && isset($_POST['rname'])&& isset($_POST['rupassword']) && isset($_POST['remail'])){
//   try{
//   $sql="INSERT INTO sachine.log_in(name,email,passwords,level) VALUES (:name,:email,:passw, :level)";
//   $stmt=$conn->prepare($sql);
//   $stmt->execute(array(
//     ':name'=>$_POST['rname'],
//     ':email'=>$_POST['remail'],
//     ':passw'=>md5($_POST['rupassword']),
//     ':level'=> $_POST['level']
//   ));

//   $_SESSION['email']=$_POST['remail'];

//      if($_POST['level']==1){
//       header('Location:log_in.php');
//     }
//     unset($_POST);
//     print_r($_POST);
//     echo "data inserted";

//     }catch(Exception $err){
//        echo '<script>alert("your email id there in this data base");</script>';
//        echo '<script>location.replace("log_in.php")</script>';
//     }
// }
?>


  
</body>
</html>

