<?php

require "konek.php";

if($_SERVER['REQUEST_METHOD'] == "POST"){
    $response = array();
    $email = $_POST['email'];
    $password = $_POST['password'];
    
    $cek = "SELECT * FROM users WHERE email='$email' and password='$password'";
    $result = mysqli_fetch_array(mysqli_query($con, $cek));

    if(isset($result)){
        $response['status'] = 1;
        $response['status_text'] = 'Login Success';
        $response['user_arr'] = $result;
        echo json_encode($response);

    } else{
            $response['status'] = 0;
            $response['status_text'] = "login Failed";
            echo json_encode($response);
        }
    }

?>