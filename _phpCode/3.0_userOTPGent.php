<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 07-Mar-17
 * Time: 3:16 PM
 */

require_once '../include/DB_Functions.php';
require_once '../include/otpmsg.php';

$db = new DB_Functions();
$op = new OTPMSG();

$user = array();

if ( isset($_POST['rollNo']) ) {
    // receiving the post params
    $rtu_roll = strtoupper($_POST['rollNo']);
    $user = $db->getUserByRollNo($rtu_roll);

    if ($user != false) {
        // get the user by email and password
            $user["branch"] = $db->sendBranch($user["branch"]);
        $otpResult = $op->sendOTP($user["mobile"], $user["name"], $user["email"]);
        $user = $db->updateOTP($user["rtu_roll"],$otpResult);
        if ($otpResult && $user){
            require_once '../_HTMLFile/3.0_userOTPGent.html';
        }
    } else {
        // user is not found with the credentials
        $response["error"] = TRUE;
        $response["error_msg"] = "Hey Sorry! Could Not Find the Required Details. Please check it again!";
        echo json_encode($response);
    }
} else {
    // required post params is missing
    $response["error"] = TRUE;
    $response["error_msg"] = "Required parameters are missing!!";
    echo json_encode($response);
}
