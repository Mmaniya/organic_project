<?php 
class MainClass {

    public function getuserexistornot(){
        $query = "SELECT *  from ".TBL_USERS." WHERE userid ='".$this->userid."'"; 
        return dB::sExecuteSql($query);   
    }

    function get_user_detils_by_id($userid){
        $query = "SELECT *  from ".TBL_USERS." WHERE id ='".$userid."'"; 
        return dB::sExecuteSql($query); 
    }


    function get_approved_user_count(){
        $query = "SELECT * from ".TBL_APPROVED_USERS.""; 
        return dB::sExecuteSql($query); 
    }

    function get_user_id_by_group($group){
        echo $query = "SELECT * from ".TBL_APPROVED_USERS." WHERE parent_id ='".$group."'";
        return dB::sExecuteSql($query); 
    }


    // function get_approved_user_detils_by_id($userid){
    //     $query = "SELECT *  from ".TBL_APPROVED_USERS." WHERE parent_id ='".$userid."'"; 
    //     return dB::sExecuteSql($query); 
    // }

    // public function get_all_rooms(){  
    //     if(!empty($this->id)){
    //         $query = "SELECT *  from ".TBL_ROOM." WHERE id =".$this->id.""; 
    //     } else { 
    //         $query = "SELECT *  from ".TBL_ROOM." ORDER BY position ASC";         
    //     }
    //     return dB::mExecuteSql($query);   
    // }

    public function get_user_details(){               
        $qry ="select id, count(*) total,
            sum(case when if_credited = 'Y' then 1 else 0 end) active_users,
            sum(case when if_credited = 'N' then 1 else 0 end) closed_users,
            sum(case when status = 'I' then 1 else 0 end) waiting_users
            from ".TBL_USERS."";
        return  dB::sExecuteSql($qry);  
    }

    static function checkUserId($username) {
        $admin_qry ="select * from `".TBL_USERS."` where mobile = '".$username."'"; 
           $rsUser = dB::sExecuteSql($admin_qry); 				 
           if($rsUser->id>0){ 			
               return 1;
           }else{
               return 0; 
           }
       }
   
       static function checkCredentials($username,$password) {
           $usernameExists = MainClass::checkUserId($username);			
           if($usernameExists == 1) {
                   $admin_qry ="select * from `".TBL_USERS."` where mobile = '".$username."' and password='".md5($password)."'";
                   $rsUser = dB::mExecuteSql($admin_qry);				
               if(count($rsUser)>0) {
                //    if($rsUser->status == 'A') { 
                       $returnArr = array("Success",$rsUser); 				 						
                //    } else { 
                //        $returnArr =  array("User is not active.Please contact webmaster"); 
                //    }
               } else {				
                   $returnArr =  array("Invalid Password"); }
               } else {
                   $returnArr =  array("Invalid UserName"); 
           }
           return $returnArr;
       }



}