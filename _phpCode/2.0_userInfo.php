<?php
/**Secrecy*/

require_once '../include/DB_Functions.php';

$db = new DB_Functions();
$user = array();
if ( isset($_POST['rtu_roll']) ) {
    // receiving the post params
    $rtu_roll = strtoupper($_POST['rtu_roll']);
    // get the user by email and password
    $user = $db->getUserByRollNo($rtu_roll);

    if ($user != false) {
        $user["branch"] = $db->sendBranch($user["branch"]);
        // user is found
        require_once '../_HTMLFile/2.0_userInfo.html';
    } else {
        // user is not found with the credentials
        echo "</br>"."Hey Sorry! Could Not Find the Required Roll No. Please check it again!"."</br>";
        echo "</br>"."If your Roll No. is not in the database. Please contact Secrecy Department."."</br>";
    }
} else {
    // required post params is missing
    echo "</br>"."Required Roll No is missing!"."</br>";
}
