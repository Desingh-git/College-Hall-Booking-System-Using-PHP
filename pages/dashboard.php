<?php 
    $dbCon = DB::getInstance();

    $appendQuery = ' status != "rejected" ';
    if(Session::get('userRole') == 'user'){
        $appendQuery .= ' AND user_id = '. Session::get('userId');
    }

    $bookings = $dbCon->query("SELECT booking.id, halls.name as hallName, slots.name as slotName, users.name, status, booking_date as bookingDate, remarks
    FROM booking 
    LEFT JOIN halls on hall_id=halls.id 
    LEFT JOIN slots on slot_id=slots.id 
    LEFT JOIN users on user_id=users.id
    WHERE $appendQuery
    ORDER BY booking.created_at desc");

    $bookingResults = $bookings->results();

    $statusArray = [
        'approved' => 'btn-success',
        'pending' => 'btn-warning',
    ];

    $halls = $dbCon->query("SELECT * FROM `halls` WHERE 1 ORDER BY name ASC");
    $hallsResults = $halls->results();

    $users = $dbCon->query("SELECT * FROM `users` WHERE 1 ORDER BY name ASC");
    $usersResults = $users->results();

    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? 'https' : 'http';
    $host = $_SERVER['HTTP_HOST'];
    $appUrl = $protocol . '://' . $host . '/hallbookings';

?>

<section class="section">
    <style>
        .img{
            width: 25px;
            height: 25px;
            border-radius: 5px;
        }
    </style>
    <div class="row">
        <!-- Recent Sales -->
        <div class="col-12">
            <div class="card recent-sales overflow-auto">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center">    
                        <h5 class="card-title">Booking status</h5>
                        <a href="./index.php?book"><span class="badge bg-primary p-2 ms-2"><i class="bi bi-plus"></i>Book a slot</span></a>
                    </div>
                    <div class="form-row d-flex gap-3 filter-section">
                        <div class="form-group col-md-3">
                            <label for="userFilter" class="filter-label">User</label>
                            <select class="form-control" id="userFilter">
                                <option value="">All Users</option>
                                <?php 
                                    foreach($usersResults as $user) {
                                        echo '<option value="'.$user->id.'">'.ucfirst($user->name).'</option>';
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="hallFilter" class="filter-label">Venue</label>
                            <select class="form-control" id="hallFilter">
                                <option value="">All Venue</option>
                                <?php 
                                    foreach($hallsResults as $hall) {
                                        echo '<option value="'.$hall->id.'">'.ucfirst($hall->name).'</option>';
                                    }
                                ?>
                            </select>
                        </div>
                        <div class="form-group col-md-3">
                            <label for="dateFilter" class="filter-label">Booking Date</label>
                            <input type="date" class="form-control" id="dateFilter">
                        </div>

                        <div class="form-group col-md-2 filter-group"> 
                            <a href="javascript:void(0);" id="filter" class="btn btn-primary btn-sm btn-filter" title="Filter"><i class="bi bi-filter"></i>Filter</a>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-bootstrap-reboot" id="filter-svg" viewBox="0 0 16 16" title="Refresh">
                            <path d="M1.161 8a6.84 6.84 0 1 0 6.842-6.84.58.58 0 1 1 0-1.16 8 8 0 1 1-6.556 3.412l-.663-.577a.58.58 0 0 1 .227-.997l2.52-.69a.58.58 0 0 1 .728.633l-.332 2.592a.58.58 0 0 1-.956.364l-.643-.56A6.8 6.8 0 0 0 1.16 8z"/>
                            <path d="M6.641 11.671V8.843h1.57l1.498 2.828h1.314L9.377 8.665c.897-.3 1.427-1.106 1.427-2.1 0-1.37-.943-2.246-2.456-2.246H5.5v7.352zm0-3.75V5.277h1.57c.881 0 1.416.499 1.416 1.32 0 .84-.504 1.324-1.386 1.324z"/>
                            </svg>
                        </div>
                    </div>
                    <hr />
                    <table class="table table-borderless datatable" id="reportTable">
                        <thead>
                            <tr>
                            <th scope="col-1">#</th>
                            <th scope="col-1">User /<br/> Phone</th>
                            <th scope="col-2">Invitation</th>
                            <th scope="col-2">Invitation1</th>
                            <th scope="col-2">Department</th>
                            <th scope="col-1">Date</th>
                            <th scope="col-2">Hall</th>
                            <th scope="col-1">Slot</th>
                            <th scope="col-1">Participants</th>
                            <th scope="col-2">Remarks</th>
                            <th scope="col-1">Status</th>
                            </tr>
                        </thead>
                        <tbody id="bookingReport">
                        </tbody>
                    </table>
                </div>
            </div>
        </div><!-- End Recent Sales -->
    </div>

    <div class="modal fade" id="confirmModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirmation</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to <strong id="status" class="text-capitalize"> </strong> ? 
                <div class="form-group m-t-15">
                    <label for="remarks">Remarks</label>
                    <textarea class="form-control" id="remarks" rows="3"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="refIds" value="" />
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">NO</button>
                <button type="button" class="btn btn-primary update-status">YES</button>
            </div>
            </div>
        </div>
    </div><!-- End Basic Modal-->

</section>

<script type="text/javascript">
     $(document).ready(function() {
        
        const apiUrl = 'http://localhost/hallbookings/business.php';

        loadBookingReport();

        $("#reportTable").on("click", ".confirm-status", function(){
            const refData = $(this).attr("data-ref");
            const refDataArray = refData.split("-");
            const showText = (refDataArray[0] == 'pending') ? 'Reject' : refDataArray[0];
            $("#status").html(showText);
            $("#refIds").val(refData);
            $('#confirmModal').modal('show');
        });

       $(".update-status").on("click", function() {
            const refIds  = $("#refIds").val();
            const refIdsArray = refIds.split("-");
            const params = {
                status: refIdsArray[0],
                bookingId: refIdsArray[1],
                remarks: $("#remarks").val() || '',
                action: 'update'
            }
            $.post(apiUrl, params, function(response) {
                loadBookingReport();
                $('#confirmModal').modal('hide');
            }).fail(function() {
                $('#confirmModal').modal('hide');
            });
        });

        $('#confirmModal').on('hidden.bs.modal', function () {
            $("#status").html("");
            $("#refIds").val("");
        });

        function loadBookingReport(){
            const params = {
                action: 'dashboard',
                user: $("#userFilter").val(),
                hall: $("#hallFilter").val(),
                bookingDate: $("#dateFilter").val()
            }
            $.post(apiUrl, params, function(response) {
                buildBookingReport(response);
            }).fail(function() {
            });
        }

        function buildBookingReport(bookingData=[]) {
            const statusArray = [
                {'status':'approved','class':'btn-success'},
                {'status':'pending','class':'btn-warning'},
                {'status':'rejected','class':'btn-danger'}
            ];
            let bookingReport = '';
            $.each(JSON.parse(bookingData), function( key, bookings ) {
                const currentStatusObj = statusArray.find(({ status }) => status === bookings.status);
                const count = key+1;
                bookingReport +=`<tr><td scope="row">${count}</td><td>${bookings.name}<br/>${bookings.phone_number}</td><td><a href="<?php echo $appUrl ?>/uploads/${bookings.image1}" target="_blank"><img src="<?php echo $appUrl ?>/uploads/${bookings.image1}" class="img"> </a></td><td><a href="<?php echo $appUrl ?>/uploads/${bookings.image}" target="_blank"><img src="<?php echo $appUrl ?>/uploads/${bookings.image}" class="img"> </a></td><td>${bookings.dept}</td><td>${bookings.bookingDate}</td><td>${bookings.hallName}</td><td>${bookings.slotName}</td><td>${bookings.no_of_participants}</td><td class="width-100">${bookings.remarks}</td><td><div class="btn-group">`;
                bookingReport +=`<button type="button" class="btn ${currentStatusObj.class} btn-sm dropdown-toggle drodown-text <?php echo (Session::get('userRole') == 'user') ? 'disabled': ''  ;?>" data-bs-toggle="dropdown" aria-expanded="false">${bookings.status}</button><div class="dropdown-menu">`;
                if(bookings.status == 'rejected') {
                    bookingReport +=`<a class="dropdown-item confirm-status drodown-text disabled" href="javascript:void('0')" >${bookings.status}</a>`;
                }else {
                    $.each(statusArray.slice(0,2), function(k, v) {
                        const showText = (v.status == 'pending') ? 'Rejected' : v.status;
                        const refId = `${v.status}-${bookings.id}`;
                        bookingReport +=`<a class="dropdown-item confirm-status drodown-text" href="javascript:void('0')" data-ref="${refId}">${showText}</a>`;
                    });
                }
                bookingReport +=`</div></div></td></tr>`;
            });
            
            $("#bookingReport").html(bookingReport);
        }

        $("#filter").on("click", function(){
            loadBookingReport();
        });

        $("#filter-svg").on("click", function(){
            $("#userFilter").val('');
            $("#hallFilter").val('');
            $("#dateFilter").val('');
            loadBookingReport();
        });
       
     });
</script>