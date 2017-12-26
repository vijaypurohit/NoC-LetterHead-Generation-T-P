<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 08-Mar-17
 * Time: 9:46 AM
 */

require_once '../include/DB_Functions.php';

$db = new DB_Functions();

$user = array();
$TodayDateYear = date('Y');

if (isset($_POST['c_designation']) && isset($_POST['c_name']) && isset($_POST['c_addr']) && isset($_POST['c_city']) && isset($_POST['c_state']) && isset($_POST['c_PinCode']) && isset($_POST['c_mobileNo']) && isset($_POST['c_emailAddr']) && isset($_POST['rollNo'])) {
    // receiving the post params
    $rtu_roll = strtoupper($_POST['rollNo']);
    $c_designation = strtoupper($_POST['c_designation']);
    $c_name = $_POST['c_name'];
    $c_addr = ucwords($_POST['c_addr']);
    $c_city = ucfirst($_POST['c_city']);
    $c_state = ucwords($_POST['c_state']);
    $c_pinCode = $_POST['c_PinCode'];
    $c_mobileNo = $_POST['c_mobileNo'];
    $c_emailAddr = $_POST['c_emailAddr'];
    // get the user by email and password
    $user = $db->getUserByRollNo($rtu_roll);

     $BranchCode = $db->sendBranchCode($user["branch"]);
     $RtuCode = $db->sendRtuCode($rtu_roll);

    if ($user != false) {
            $user["branch"] = $db->sendBranch($user["branch"]);
        $companyDetails = $db->insertCompany($c_designation, $c_name, $c_addr, $c_city, $c_state, $c_pinCode,  $c_mobileNo, $c_emailAddr);
        $letterInserted = $db->insertLetters($rtu_roll, $companyDetails["id"]);

            $NoOfLetters = $db->getAllLettersOfUsers($rtu_roll);

        $firstTwoDigitOfRoll = substr($rtu_roll,0, 2) ;

        $admYear = strtotime ( '-3 year' , strtotime ( $TodayDateYear ) ) ;
        $admYear = date ( 'y' , $admYear );

        if($firstTwoDigitOfRoll == $admYear) {
            $uniqueUserLetterID = (int)$BranchCode.$RtuCode.count($NoOfLetters);
        } else{
            $uniqueUserLetterID = (int)"1".$BranchCode.$RtuCode.count($NoOfLetters);
        }

        $uniqueResult = $db->updateUniqueId($uniqueUserLetterID, $rtu_roll, $companyDetails["id"]);

//        echo json_encode($companyDetails);
//        echo json_encode($letterInserted);
//        echo $uniqueUserLetterID;
//        echo json_encode($uniqueResult);
//        echo json_encode($NoOfLetters);
        if($companyDetails && $letterInserted && $uniqueResult) {
            if($db->sendMail($user, $companyDetails, $uniqueUserLetterID)){
                echo '<script language="javascript">';
                echo 'alert("Email has been sent")';
                echo '</script>';
                require_once '../_HTMLFile/5.0_FinalLetter.html';
            }
        } else {
            echo "</br>"."Letter Not Generated, Unknown error occurred!";
        }

    } else {
        echo "</br>"."Hey Sorry! Could Not Find the Required Details. Please check it again!";
    }
} else {
    // required post params is missing
    echo "</br>"."Required parameters are missing! Please Fill out All Details.";

}