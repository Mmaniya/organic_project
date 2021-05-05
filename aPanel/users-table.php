<?php  
define('ABSPATH', dirname(__DIR__, 1));
require ABSPATH . "/includes.php";

$draw = $_POST['draw'];
$row = $_POST['start'];
$rowperpage = $_POST['length']; // Rows display per page
$columnIndex = $_POST['order'][0]['column']; // Column index
$columnName = $_POST['columns'][$columnIndex]['data']; // Column name
$columnSortOrder = $_POST['order'][0]['dir']; // asc or desc
$searchValue = $_POST['search']['value']; 


$subQry = array();
if($_POST['if_deposited'] != ''){
    $subQry[] = "if_deposited =".$_POST['searchByState'];
}
if($_POST['searchByDistrict'] != ''){
    $subQry[] = "if_credited =".$_POST['searchByDistrict'];
}
if($_POST['searchByConstituency'] != ''){
    $subQry[] = "status =".$_POST['searchByConstituency'];
}

if($searchValue != ''){
    $subQry[] = " name like '%".$searchValue."%' or mobile like '%".$searchValue."%' or userid like '%".$searchValue."%'";
}

if(count($subQry)>0) {
    $subQuery = " WHERE ".implode(' AND ',$subQry).""; 
}   

$query ="SELECT count(*) AS total FROM ".TBL_USERS. $subQuery; 
$rsTotal = dB::sExecuteSql($query);	
$totalRecords = $rsTotal->total;

$query ="select count(*) as allcount from ".TBL_USERS. $subQuery; 
$records = dB::sExecuteSql($query);	
$totalRecordwithFilter = $records->allcount;

$query ="SELECT * FROM ".TBL_USERS." $subQuery ORDER BY id  ASC limit ".$row.",".$rowperpage.""; 
$result = dB::mExecuteSql($query);

foreach ($result as $key =>$value){

   $qry = 'SELECT * FROM tbl_approved_uesrs WHERE userid ="'.$value->userid.'"';
    $rsParent = dB::sExecuteSql($qry);

    if($value->if_deposited == 'N'){
        $action  = '<a href="javascript:void(0);" onclick="approvedusers('.$value->id.')" class="btn btn-grd-success btn-sm" >Approve</a>';
    }else{
        $action  = '<label class="label label-inverse">Approved</label>';
    }
    $data[] = array(
        $key+1,           
        $username = '<span style="font-weight:bold;">'. ucwords($value->name) .'</span>',
        $value->userid, 
        $value->mobile,  
        $value->email,              
        $view ='<span><a href="javascript:void(0);" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal'.$value->id.'"> View <i class="fa fa-eye"></i></a><div id="myModal'.$value->id.'" class="modal fade" role="dialog"> <div class="modal-dialog"> <div class="modal-content"> <div class="modal-header"> <button type="button" class="close" style="right:20px;position:absolute" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true"><i class="fa fa-times"></i></span> </button></div> <div class="modal-body"> <p> AMOUNT : '.$rsParent->amount_credited.' RS </p> </div> <div class="modal-footer"> <button type="button" class="btn btn-default" data-dismiss="modal">Close</button> </div> </div> </div> </div></span>',
        $action,
       );
}

$response = array(
    "draw" => intval($draw),
    "iTotalRecords" => $totalRecords,
    "iTotalDisplayRecords" => $totalRecordwithFilter,
    "aaData" => $data,
    );

echo json_encode($response);
?>