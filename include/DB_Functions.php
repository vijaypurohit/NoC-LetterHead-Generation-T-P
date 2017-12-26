<?php
/**
 * Created by PhpStorm.
 * User: Vijay Purohit
 * Date: 2/25/2017
 * Time: 6:32 PM
 */
class DB_Functions {
    private $conn;

    /**
     * DB_Functions constructor.
     */
    function __construct() {
        require_once 'DB_Connect.php';
        // connecting to database
        $db = new Db_Connect();
        $this->conn = $db->connect();
    }

    /**
     * destructor
     */
    function __destruct() {
//        session_destroy();
    }

    public function getUserByRollNo($rollNo) {
        $stmt = $this->conn->prepare("SELECT * FROM cit_users WHERE rtu_roll = ?");
        $stmt->bind_param("s", $rollNo);
        if ($stmt->execute()) {

            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        } else {
            return false;
        }
    }

    public function updateEmail($rtuRollNo, $newEmail){
        $stmt = $this->conn->prepare("UPDATE cit_users SET email = ? ,  updated_at = NOW() WHERE rtu_roll = ?");
        $stmt->bind_param("ss", $newEmail, $rtuRollNo);
        $updateOTP = $stmt->execute();
        $stmt->close();
        // check for successful store
        if ($updateOTP) {
            $stmt = $this->conn->prepare("SELECT * FROM cit_users WHERE rtu_roll = ?");
            $stmt->bind_param("s", $rtuRollNo);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        }
        else {   //email does not match up
            return false;
        }
    } // updateEmail Closed

    public function updatePhone($rtuRollNo, $newPhone){
        $stmt = $this->conn->prepare("UPDATE cit_users SET mobile = ? ,  updated_at = NOW() WHERE rtu_roll = ?");
        $stmt->bind_param("ss", $newPhone, $rtuRollNo);
        $updateOTP = $stmt->execute();
        $stmt->close();
        // check for successful store
        if ($updateOTP) {
            $stmt = $this->conn->prepare("SELECT * FROM cit_users WHERE rtu_roll = ?");
            $stmt->bind_param("s", $rtuRollNo);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        }
        else {   //email does not match up
            return false;
        }
    } // updateEmail Closed

    public function updateEmailPhone($rtuRollNo, $newEmail, $newPhone){
        $stmt = $this->conn->prepare("UPDATE cit_users SET email = ?, mobile = ? ,  updated_at = NOW() WHERE rtu_roll = ?");
        $stmt->bind_param("sss", $newEmail, $newPhone,  $rtuRollNo);
        $updateOTP = $stmt->execute();
        $stmt->close();
        // check for successful store
        if ($updateOTP) {
            $stmt = $this->conn->prepare("SELECT * FROM cit_users WHERE rtu_roll = ?");
            $stmt->bind_param("s", $rtuRollNo);
            $stmt->execute();
            $user = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $user;
        }
        else {   //email does not match up
            return false;
        }
    } // updatePhoneEmail Closed

    public function sendBranch($usBranch) {
        switch ($usBranch) {
            case 'CSE':   $branch = "Computer Science Engineering";           break;
            case 'EE':   $branch = "Electrical Engineering";             break;
            case 'ME':   $branch = "Mechanical Engineering";                     break;
            case 'ECE':   $branch = "Electronics And Communication Engineering";                      break;
            default:    $branch = "Unknown";
        }
        return $branch;
    } // sendBranch function closed

    public function sendBranchCode($usBranch) {
        switch ($usBranch) {
            case 'CSE':   $branchCode = "1";           break;
            case 'EE':   $branchCode = "2";             break;
            case 'ME':   $branchCode = "3";                     break;
            case 'ECE':   $branchCode = "4";                      break;
            default:    $branchCode = "0";
        }
        return $branchCode;
    } // sendBranchCode function closed

    public function sendRtuCode($rtuRoll) {
        $lastTwo = substr($rtuRoll,-2);
        return $lastTwo;
    } // sendRtuCode function closed

    public function OTP_verification($rtuRoll, $otpReceived) {
        $stmt = $this->conn->prepare("SELECT m_otp from cit_users WHERE rtu_roll = ?");
        $stmt->bind_param("s", $rtuRoll);
        $dbOTP = $stmt->execute();
        if ($dbOTP == $otpReceived) {
            $stmt->close();
            return true;
        } else {
            $stmt->close();
            return false;
        }
    }

    public function updateOTP($rtuRollNo, $sendOTP){
            $stmt = $this->conn->prepare("UPDATE cit_users SET m_otp = ? ,  updated_at = NOW() WHERE rtu_roll = ?");
            $stmt->bind_param("ss", $sendOTP, $rtuRollNo);
            $updateOTP = $stmt->execute();
            $stmt->close();
            // check for successful store
            if ($updateOTP) {
                $stmt = $this->conn->prepare("SELECT * FROM cit_users WHERE rtu_roll = ?");
                $stmt->bind_param("s", $rtuRollNo);
                $stmt->execute();
                $user = $stmt->get_result()->fetch_assoc();
                $stmt->close();
                return $user;
            }
             else {   //email does not match up
                return false;
            }
    } // updateName Closed

    public function insertCompany($designation, $company, $st_addr, $city, $state, $pinCode, $mobile, $email){

        $companyExist =  $this->getCompany($designation, $company, $st_addr, $city, $state, $pinCode, $mobile, $email);
        if($companyExist){
            return $companyExist;
        }else{
            $stmt = $this->conn->prepare("INSERT INTO cit_company(c_designation, c_company, c_st_addr, c_city, c_state, c_pincode, c_mobile, c_email) VALUES(?, ?, ?, ?, ?, ?, ?, ?)");
            $stmt->bind_param("sssssiss", $designation, $company, $st_addr, $city, $state, $pinCode, $mobile,$email );
            $CompanyResult = $stmt->execute();
            $stmt->close();
            // check for successful store
            if ($CompanyResult) {
                $companyExist =  $this->getCompany($designation, $company, $st_addr, $city, $state, $pinCode, $mobile, $email);
                return $companyExist;
            }
            else {   //email does not match up
                return false;
            }
        }
    }// updateAddrCity Closed

    public function getCompany($designation, $company, $st_addr, $city, $state, $pinCode, $mobile, $email) {
        $stmt = $this->conn->prepare("SELECT * FROM cit_company WHERE (c_designation = ? AND c_company = ? AND c_st_addr = ? AND c_city = ? AND c_state = ? AND c_pincode = ? AND c_mobile = ? AND c_email=?)");
        $stmt->bind_param("sssssiss", $designation, $company, $st_addr, $city, $state, $pinCode, $mobile, $email);
        if ($stmt->execute()) {
            $company = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $company;
        }
        else {
            $stmt->close();
            return NULL;
        }
    } //getLetters() function closed

    public function getCompanyByID($cid) {
        $stmt = $this->conn->prepare("SELECT * FROM cit_company WHERE id = ? ");
        $stmt->bind_param("i", $cid);
        if ($stmt->execute()) {
            $companyDet = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $companyDet;
        }
        else {
            $stmt->close();
            return NULL;
        }
    } //getCompanyByID() function closed

    public function insertLetters($rtuRoll, $companyID){
        $letterExist = $this->getLettersByCid($rtuRoll, $companyID);
        if($letterExist){
            return $letterExist;
        } else{
            $stmt = $this->conn->prepare("INSERT INTO cit_letter_generated(user_rtu_roll, c_id) VALUES(?, ?)");
            $stmt->bind_param("si", $rtuRoll, $companyID );
            if ($stmt->execute()) {
                $lettersResult = $this->getLettersByCid($rtuRoll, $companyID);
                $stmt->close();
                return $lettersResult;
//                  print(json_encode($lettersResult));
            } else {
                $stmt->close();
                return NULL;
            }
        }

    }// updateAddrCity Closed

    public function getLettersByRtu($rtu_roll) {
        $stmt = $this->conn->prepare("SELECT * FROM cit_letter_generated WHERE user_rtu_roll= ?");
        $stmt->bind_param("s", $rtu_roll);
        if ($stmt->execute()) {
            $lettersR = $stmt->get_result()->fetch_assoc();
            $stmt -> close();
            return $lettersR;
        }
        else {
            $stmt->close();
            return NULL;
        }
    } //getLetters() function closed

    public function getLettersByCid($Roll, $cid)
    {
        $stmt = $this->conn->prepare("SELECT * FROM cit_letter_generated WHERE user_rtu_roll = ? AND c_id = ? ");
        $stmt->bind_param("si", $Roll, $cid);
        if ($stmt->execute()) {
            $lettersCid = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $lettersCid;
//            print json_encode($lettersCid);
        } else {
            $stmt->close();
            return false;
        }
    }

    public function getAllLettersOfUsers($rtu_roll)
    {
        $UsLettersOutput = array();
        $stmt = $this->conn->prepare("SELECT * FROM cit_letter_generated WHERE user_rtu_roll= ? ORDER BY created_at DESC");
        $stmt->bind_param("s", $rtu_roll);
        if ($stmt->execute()) {
            $lettersR = $stmt->get_result();  // ->fetch_assoc();
            while ($row = $lettersR->fetch_assoc()) {
                $UsLettersOutput[] = $row;
            }
            $stmt->close();
            return $UsLettersOutput;
        } else {
            $stmt->close();
            return NULL;
        }
    }

    public function updateUniqueId($uid, $rtuRoll, $companyID) {
        $stmt = $this->conn->prepare("UPDATE cit_letter_generated SET unique_id = ? WHERE user_rtu_roll = ? AND c_id = ? order by id desc limit 1");
        $stmt->bind_param("iii", $uid, $rtuRoll, $companyID);
        if ($stmt->execute() ) {
            $stmt->close();
            return true;
        } else {
            return false;
        }
    } //updateUniqueId function closed

    public function getLettersByUid($uid) {
        $stmt = $this->conn->prepare("SELECT * FROM cit_letter_generated WHERE unique_id = ?");
        $stmt->bind_param("i", $uid);
        if ($stmt->execute()) {
            $lettersUid = $stmt->get_result()->fetch_assoc();
            $stmt->close();
            return $lettersUid;
        } else {
            $stmt->close();
            return false;
        }
    }

    public function sendMail ($user, $company, $uniqueUserLetterID) {
        $to = $user["email"];
//        $to = 'vijay.pu9@gmail.com';
        $subject = 'CIT Training Letter';
        $from = 'tpo@citabu.ac.in';
        $CC = 'anubadola@citabu.ac.in';
        $BCc = 'priyanka@citabu.ac.in ';
//        $CC = 'info.ezindagi@gmail.com';

    // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
    // Create email headers
        $headers .= 'From: '.$from."\r\n".
            'Reply-To: '.$from."\r\n" .
            'cc: '.$CC."\r\n" .
            'Bcc: '.$BCc."\r\n" .
            'X-Mailer: PHP/' . phpversion();

    // Compose a simple HTML email message
        $message = '<html><body>';
        $message .= '<h1 style="color:#e91e63;">Dear, ' .$user["name"].'!</h1>';

        $message .= '<p style="color:#097cd4;font-size:18px;">Father Name - ' .$user["fname"].' </p>';
        $message .= '<p style="color:#097cd4;font-size:18px;">RTU Roll No - ' .$user["rtu_roll"].' </p>';
        $message .= '<p style="color:#097cd4;font-size:18px;">Branch - ' .$user["branch"].' </p>';
        $message .= '<p style="color:#097CD4;font-size:18px;">Registered Mobile - '.$user["mobile"].' </p>';
        $message .= '<p style="color:#e91e63;font-size:18px;">Your Training Letter has been generated with following details</p>';
        $message .= '<p style="color:#097CD4;font-size:18px;">Ref.: CIT/ 2016-17/T&P/TL/'.$uniqueUserLetterID.' ';
        $message .= '<p style="color:#097CD4;font-size:18px;">Company Name - '.$company["c_company"].' </p>';
        $message .= '<p style="color:#097CD4;font-size:18px;">Company Address - '.$company["c_st_addr"].' </p>';
        $message .= '<p style="color:#097CD4;font-size:18px;">'.$company["c_city"].', '.$company["c_state"].', '.$company["c_pincode"].'</p>';
        $message .= '<p style="color:#097CD4;font-size:18px;">'.$company["c_mobile"].',  '.$company["c_email"].'</p>';
        $message .= '<p style="color:#e91e63;font-size:18px;">To Reprint Your Letter - <a href="http://citabu.ac.in/tp.htm" target="_blank"> click here </a>   </p>';
        $message .= '</body></html>';

    // Sending email
        if(mail($to, $subject, $message, $headers)){
//            echo 'Your mail has been sent successfully.';
            return true;
        } else{
//            echo 'Unable to send email. Please try again.';
            return false;
        }
    }



}//Class DB_Functions Closed

 
 //  $rs = new DB_Functions();
 // $rs->getUserDet("vijay.pu9@gmail.com");
