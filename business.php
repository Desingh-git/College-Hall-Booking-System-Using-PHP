<?php
require_once './config/init.php';

$dbCon = DB::getInstance();
$action = $_POST['action'];

switch($action) {
    case 'getslots':
        $bookingDate = $_POST['bookingDate'];
        $halls = $dbCon->query("SELECT halls.name as hallName, halls.id as hallId, slots.name as slotName, slots.id as slotId 
        FROM halls
        LEFT JOIN slots ON halls.id=slots.hall_id");

        $hallsRecords = $dbCon->results();
        $availableSlots = [];
        foreach ($hallsRecords as $slotsInHalls) {
            $availableSlots[$slotsInHalls->hallName][] = $slotsInHalls->slotName."|".$slotsInHalls->hallId."_".$slotsInHalls->slotId; 
        }

        $bookings = $dbCon->query("SELECT halls.name as hallName, slots.name as slotName, status, booking_date 
        FROM booking 
        LEFT JOIN halls on hall_id=halls.id 
        LEFT JOIN slots on slot_id=slots.id 
        WHERE status !='rejected' AND booking_date = '". $bookingDate."'" );

        $bookingRecords = $dbCon->results();
        $bookedSlots = [];
        foreach ($bookingRecords as $slotsBooked) {
            $bHallRefId = strtolower(preg_replace('/\s+/', '', $slotsBooked->hallName ?? ''));
            $bSlotRefId = strtolower(preg_replace('/\s+/', '', $slotsBooked->slotName ?? ''));

            $bookedSlots[$bHallRefId][$bSlotRefId] = $slotsBooked->status; 
        }

// echo '<pre>';
// print_r( $availableSlots);
// print_r( $bookedSlots);die;

        $response = '';
        
        $count  = 0;
        foreach($availableSlots as $hall => $slots) { 
            $count ++;
            $showFirst = ($count == 1) ? 'show':'';
            $response .= '<div class="accordion-item">';
            $response .= '<h2 class="accordion-header" id="heading-'.$count.'">';
            $response .= '<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-'. $count.'" aria-expanded="true" aria-controls="collapse-'. $count.'">';
            $response .= $hall;
            $response .= '</button>';
            $response .= '</h2>';
            $response .= '<div id="collapse-'.$count.'" class="accordion-collapse collapse '.$showFirst.'" aria-labelledby="heading-'. $count.'" data-bs-parent="#accordionExample">';
            $response .= '<div class="accordion-body">';
                    $hallRefId = strtolower(preg_replace('/\s+/', '', $hall));
                    $thisHallBookedSlots = isset($bookedSlots[$hallRefId]) ? $bookedSlots[$hallRefId] : [];
                    foreach($slots as $slot) {
                        $clsName = 'bg-success cursor time-slot';
                        $title = ' Available';
                        list($formattedSlot, $refIds) = explode("|", $slot);
                        $slotRefId = strtolower(preg_replace('/\s+/', '', $formattedSlot));
                        if(count($thisHallBookedSlots) > 0) {
                            if(array_key_exists($slotRefId, $thisHallBookedSlots)) {
                                if($thisHallBookedSlots[$slotRefId] == 'approved') {
                                    $clsName = 'bg-danger';
                                    $title = ' Not available';
                                }else {
                                    $clsName = 'bg-warning';
                                    $title = ' Waiting for approval';
                                }
                            }
                        }
                        $response .= '<span style="margin:3px;" id="'.$refIds.'" class="badge '. $clsName.'" data-bs-toggle="tooltip" data-bs-placement="top" title="'. $title.'" data-hall="'. $hall.'" data-slot="'.$formattedSlot.'" data-refIds="'.$refIds.'">';
                        $response .= $formattedSlot; 
                        $response .= '</span>';
                    }
            $response .= '</div>';
            $response .= '</div>';
            $response .= '</div>';
        }

        echo $response;
        break;

    case 'book': 
       try {
            if($_POST['data'] != "") {
                $bookingSlots = json_decode($_POST['data'], true);
                $targetDir = "uploads/";
                $fileName = basename($_FILES["profileImageInput"]["name"]);
                $targetFilePath = $targetDir . $fileName;
                $fileName1 = basename($_FILES["permissionletter"]["name"]);
                $targetFilePath1 = $targetDir . $fileName1;
                // Check if the directory exists, if not create it
                if (!is_dir($targetDir)) {
                    mkdir($targetDir, 0755, true);
                }

                move_uploaded_file($_FILES["profileImageInput"]["tmp_name"], $targetFilePath);
                move_uploaded_file($_FILES["permissionletter"]["tmp_name"], $targetFilePath1);

                foreach($bookingSlots as $data) {
                    list($hallId, $slotId) = explode("_", $data['id']);
                    $fields = [
                        "hall_id" => $hallId,
                        "slot_id" => $slotId,
                        "booking_date" => $_POST['bookingDate'],
                        "remarks" => $_POST['remarks'],
                        "no_of_participants" => $_POST['no_of_participants'],
                        "dept" => $_POST['dept'],
                        "image" => $fileName,
                        "image1"=>$fileName1,
                        "user_id" => Session::get('userId')
                    ];

                    // echo "<pre>";
                    // print_r($fields );
                    // die;
                    
                    $status = $dbCon->insert('booking', $fields);
                }

            }
            $resonse = array("status" => true);
            echo json_encode($resonse);
        } catch( Exception $e ) {
            $resonse = array("status" => false);
            echo json_encode($resonse);
        }
        break;

    case 'update': 
    
        $id = $_POST['bookingId'];
        $fields = [
            "status" => ($_POST['status'] == 'pending') ? 'rejected' : $_POST['status'],
            "remarks" => $_POST['remarks']
        ];
        $status = $dbCon->update('booking', $id, $fields);

        $resonse = array("status" => $status);
        echo json_encode($resonse);

        break;

    case 'dashboard':
        //$appendQuery = ' status != "rejected" ';
        $appendQuery = ' status != "" ';
        if(Session::get('userRole') == 'user'){
            $appendQuery .= ' AND user_id = '. Session::get('userId');
        }
        $user = $_POST['user'];
        $hall = $_POST['hall'];
        $bookingDate = $_POST['bookingDate'];

        if($user) {
            $appendQuery .= ' AND booking.user_id = '. $user;
        }

        if($hall) {
            $appendQuery .= ' AND booking.hall_id = '. $hall;
        }

        if($bookingDate) {
            $appendQuery .= ' AND booking.booking_date = "'. $bookingDate.'"';
        }

        $bookings = $dbCon->query("SELECT booking.id, halls.name as hallName, slots.name as slotName, users.name, users.phone_number, status, booking_date as bookingDate, remarks, no_of_participants, dept, image, image1
        FROM booking 
        LEFT JOIN halls on hall_id=halls.id 
        LEFT JOIN slots on slot_id=slots.id 
        LEFT JOIN users on user_id=users.id
        WHERE $appendQuery
        ORDER BY booking.created_at desc");

        $bookingResults = $bookings->results();
        echo json_encode($bookingResults);
       
    break;
}

die;
?>