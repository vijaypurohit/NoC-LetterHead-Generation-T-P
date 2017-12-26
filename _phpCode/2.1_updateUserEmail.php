<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 08-Mar-17
 * Time: 6:51 PM
 */

require_once '../include/DB_Functions.php';
$db = new DB_Functions();

if ( isset($_POST['rtuRoll']) && isset($_POST['newEmail']) )
{
    $rtuRoll = strtoupper($_POST['rtuRoll']);
    $newEmail = $_POST['newEmail'];

    $user = $db->updateEmail($rtuRoll,$newEmail);

        if ($user != false) {
            $user["branch"] = $db->sendBranch($user["branch"]);
            require_once '../_HTMLFile/2.0_userInfo.html';
        } else {
            echo "</br>"."Hey Sorry! There is Error Updating the Email!. Please check it again!"."</br>";
        }
} else {
    // required post params is missing
    echo "</br>"."Required Roll No and Email is missing!"."</br>";
}// main if closed

