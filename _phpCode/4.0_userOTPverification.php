<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 07-Mar-17
 * Time: 1:35 PM
 */
require_once '../include/DB_Functions.php';
require_once '../include/otpmsg.php';

$db = new DB_Functions();
$op = new OTPMSG();

$user = array();

if ( isset($_POST['rollNo']) && isset($_POST['otp_received']) ) {
            // receiving the post params
    $rtu_roll = strtoupper($_POST['rollNo']);
    $otp_received = $_POST['otp_received'];
            // get the user by email and password
    $user = $db->getUserByRollNo($rtu_roll);

    if ($user != false) {
            $user["branch"] = $db->sendBranch($user["branch"]);

        $otpVerifyByFunc = $op->sendOTPconf($user["mobile"], $otp_received);
        $otpVerifyByDB   = $db->OTP_verification($user["rtu_roll"], $otp_received);

        if($otpVerifyByFunc && $otpVerifyByDB) {
            require_once '../_HTMLFile/4.0_userCompanyDetails.html';
        } else {
            echo "</br>"."Verification Failed. Please enter correct OTP."."</br>";
        }

    } else {
        // user is not found with the credentials
        $response["error"] = TRUE;
        $response["error_msg"] = "Hey Sorry! Could Not Find the Required Roll No. Please check it again!";
        echo json_encode($response);
    }
} else {
    // required post params is missing
    $response["error"] = TRUE;
    $response["error_msg"] = "Required parameters are missing!";
    echo json_encode($response);
}
