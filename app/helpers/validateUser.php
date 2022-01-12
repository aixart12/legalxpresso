<?php
function validateUser($user){

$errors = array();

if(empty($user['username'])){
    array_push($errors, "UserName name is Empty");
  }

if(empty($user['email'])){
    array_push($errors, " Email name is Empty");
  }
if(empty($user['password'])){
    array_push($errors, "Password Requrire");
  }

if($user['passwordConf'] != $user['password']){
    array_push($errors, "Password do not Match");
  }

$existingUser = selectOne('users', ['email' => $user['email']]);
if ($existingUser) {
    if (isset($user['update-user']) && $existingUser['id'] != $user['id']) {
        array_push($errors, 'Email already exists');
    }

    if (isset($user['create-admin'])) {
        array_push($errors, 'Email already exists');
    }
}
  
return $errors;
}

function validateLogin($user){

    $errors = array();

    if(empty($user['email'])){
        array_push($errors, " Email name is Empty");
    }
    if(empty($user['password'])){
        array_push($errors, "Password Requrire");
    }
    
    return $errors;
}