<?php

require "konek.php";

if($_SERVER['REQUEST_METHOD'] == "GET"){
    $response = array();
    
    $cek = "SELECT * FROM menus";
    $result = mysqli_fetch_array(mysqli_query($con, $cek));

    if(isset($result)){
        $response['status'] = 1;
        $response['status_text'] = 'Success';
        $response['menu'] = $result;
        echo json_encode($response);

    } else{
            $response['status'] = 0;
            $response['status_text'] = "Failed";
            echo json_encode($response);
        }
    }

?>