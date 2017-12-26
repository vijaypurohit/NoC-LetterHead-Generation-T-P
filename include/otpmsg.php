<?php
/**
 * Created by PhpStorm.
 * User: vijay
 * Date: 26-Feb-17
 * Time: 5:02 PM
 */


class OTPMSG
{
    private $conn;
    function __construct() {
        require_once '_otp/otpGent.php';
    }

    function __destruct() {
        // TODO: Implement __destruct() method.
    }

    public function callingOTPFile($msg, $userEmail, $userMobile)
    {
        $_REQUEST["otp_msg"]=$msg;
        $_REQUEST["otp_email"]=$userEmail;
        $_REQUEST["otp_number"]=$userMobile;
        $otpResARet = require_once '_otp/submit-post.php';

        return $otpResARet;
    }

    public function sendOTP($phoneNo, $userName ,$userEmail){
        $otpGent = new otpGent();
        $j=0;
        $newPhoneArr= array();
        $base32check = array('2', '3', '4', '5', '6', '7'); //base32 numbers
        //converting string phone to array then looping individual variables to get only desired numbers
        for ($phoneArr = str_split($phoneNo), $i = count($phoneArr)-1   ; $i >= 0 ; $i-- ) {
            if( in_array($phoneArr[$i], $base32check)) {
                $newPhoneArr[$j] = $phoneArr[$i];
                $j++;
            }
        }
            $newPhoneStr = implode($newPhoneArr);  //converting array to string
        $InitalizationKey = "MSKALGOEZ7VJ4LD".$newPhoneStr;

        $TimeStamp    = otpGent::get_timestamp();
        $secretkey    = $otpGent->base32_decode($InitalizationKey);
        $otp          = otpGent::oath_hotp($secretkey, $TimeStamp);

//        echo "</br>".$otp."</br>";
        $otpMsg = "Hey ".$userName.". Thank You For Registration for T&P Division. Your OTP is ".$otp.". It is valid for 1 min.";
        $otpResRet = $this->callingOTPFile($otpMsg, $userEmail, $phoneNo);
//        return $otpResRet;
        return $otp;
    }

    public function sendOTPconf($phoneNo, $usOTPCode){

        $j=0;
        $newPhoneArr= array();
        $base32check = array('2', '3', '4', '5', '6', '7'); //base32 numbers
        //converting string phone to array then looping individual variables to get only desired numbers
        for ($phoneArr = str_split($phoneNo), $i = count($phoneArr)-1   ; $i >= 0 ; $i-- ) {
            if( in_array($phoneArr[$i], $base32check)) {
                $newPhoneArr[$j] = $phoneArr[$i];
                $j++;
            }
        }
        $newPhoneStr = implode($newPhoneArr);  //converting array to string
        $InitalizationKey = "MSKALGOEZ7VJ4LD".$newPhoneStr;
        $result       = otpGent::verify_key($InitalizationKey, $usOTPCode);
//        echo "</br>".$otp."</br>";
//        echo $result."</br>";

        return $result;
    }

} //class otpmsg closes
//$dm = new OTPMSG();
//$dm->sendOTPconf(7737817012);
