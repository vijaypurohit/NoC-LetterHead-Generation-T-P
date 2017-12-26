<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 08-Mar-17
 * Time: 7:06 PM
 */
require_once '../include/DB_Functions.php';
$db = new DB_Functions();
$user = array();

if ( isset($_POST['unique_id']) ) {
    $uid = $_POST['unique_id'];
    $userLetter = $db->getLettersByUid($uid);

    $companyDetails = $db->getCompanyByID($userLetter["c_id"]);
    $user = $db->getUserByRollNo($userLetter["user_rtu_roll"]);

    $rtu_roll = strtoupper($user['rtu_roll']);

    $c_designation      = strtoupper($companyDetails['c_designation']);
    $c_addr             = ucwords($companyDetails['c_st_addr']);
    $c_city             = ucfirst($companyDetails['c_city']);
    $c_state            = ucwords($companyDetails['c_state']);
    $c_name             = $companyDetails['c_company'];
    $c_pinCode          = $companyDetails['c_pincode'];
    $c_mobileNo         = $companyDetails['c_mobile'];
    $c_emailAddr        = $companyDetails['c_email'];

    $BranchCode = $db->sendBranchCode($user["branch"]);
    $RtuCode = $db->sendRtuCode($rtu_roll);

    if ($user != false) {
        $user["branch"] = $db->sendBranch($user["branch"]);
         $uniqueUserLetterID = $uid;
        if($companyDetails && $uniqueUserLetterID) {
            require_once '../_HTMLFile/5.0_FinalLetter.html';
        } else {
            echo "</br>"."Letter Not Generated, Unknown error occurred!";
        }
    } else {
        echo "</br>"."Hey Sorry! Could Not Find the Required Details. Please check it again!";
    }
} else {
    echo "</br>"."Required parameters are missing! Please Fill out All Details.";
}