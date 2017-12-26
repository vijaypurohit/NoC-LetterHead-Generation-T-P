<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 09-Mar-17
 * Time: 11:42 AM
 */

require_once '../include/DB_Functions.php';
$db = new DB_Functions();

if ( isset($_POST['rtuRoll']) && isset($_POST['newEmail']) && isset($_POST['newPhone']) )
{
    $rtuRoll = strtoupper($_POST['rtuRoll']);
    $newEmail = $_POST['newEmail'];
    $newPhone = $_POST['newPhone'];

    $user = $db->updateEmailPhone($rtuRoll,$newEmail,$newPhone);

    if ($user != false) {
        $user["branch"] = $db->sendBranch($user["branch"]);
        $rtu_roll = strtoupper($user['rtu_roll']);
        require_once '../_HTMLFile/2.0_userInfo.html';
    } else {
        echo "</br>"."Hey Sorry! There is Error Updating the Email!. Please check it again!"."</br>";
    }
} else {
    // required post params is missing
    echo "</br>"."Required Roll No, Mobile and Email is missing!"."</br>";
}// main if closed

