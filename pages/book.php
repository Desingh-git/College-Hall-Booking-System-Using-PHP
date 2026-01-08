<style >
    .temp-class {
        background-color: #ccc !important;
    }

    #profileImagePreview{
        width: 300px;
        height: 300px;
        text-align: center;
        border-radius: 8px;
        display: flex;
        justify-content: center;
        margin: 0 auto;
        padding: 15px !important;
    }
</style>
<section class="section">
    <div class="row">
        <div class="col-lg-7">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Book a slot</h5>
                    <!-- General Form Elements -->
                    <form>
                    <div class="row mb-3">
    <label for="inputDate" class="col-sm-2 col-form-label">Date</label>
    <div class="col-sm-10 d-flex align-items-center">
        <input type="text" class="form-control datepicker" value="<?php echo date('d-m-Y', strtotime('+1 day')); ?>">
    </div>
</div>

                        <div class="row mb-3 justify-content-center">
                            <h5 class="card-title pl-15 pr-15">Available Venues</h5>
                            <!-- Default Accordion -->
                            <div class="accordion" id="accordionExample">
                                <!-- slot content will be loaded -->                            
                            </div><!-- End Default Accordion Example -->
                        </div>
                    </form><!-- End General Form Elements -->
                </div>
            </div>
        </div>
        
        <div class="col-lg-5">
        <div class="card">
            <div class="card-body">
                <form id="imageUploadForm" name="imageUploadForm" enctype="multipart/form-data">
                <div class="container">
        <h2>Download PDF</h2>
        <a href="/hallbookings/pages/venue2024.pdf" class="download-button" download="venue2024.pdf">Download PDF</a>
    </div>
                    <h5 class="card-title">Selected slots</h5>
                    <!-- Default List group -->
                    <ul class="list-group" id="selected-slots">
                    
                    </ul><!-- End Default List group -->
                    
                    <div class="container mt-4" id="remark-section">
                    <div class="form-group mb-3">
                        <label for="dept">Department / Association</label>
                        <input type="text" class="form-control" name="dept" id="dept" placeholder="Name of the Department / Association" required>
                    </div>

                    <div class="form-group mb-3">
                        <label for="no_of_participants">Number of Participants</label>
                        <input type="number" class="form-control" name="no_of_participants" id="no_of_participants" placeholder="Enter participants count">
                    </div>

                    <div class="form-group mb-3">
                        <label for="profileImageInput">Brochure (Image):</label>
                        <input type="file" name="profileImageInput" id="profileImageInput" class="form-control-file" accept="image/*">
                    </div>
                    <div class="form-group mb-3">
                        <label for="permissionletter">DJB Permission Letter</label>
                        <input type="file" name="permissionletter" id="permissionletter" class="form-control-file" accept="image/*">
                    </div>

                    <div class="form-group mb-3">
                        <label for="remarks">Remarks</label>
                        <textarea class="form-control" id="remarks" name="remarks" rows="3"></textarea>
                    </div>

                    <div class="form-group mb-3" id="profileImagePreview">
                        <img id="profileImage" src="#" alt="Profile Image" style="display: none; max-width: 100%; height: auto;" />
                    </div>
                    <div class="form-group mb-3" id="permissionletter">
                        <img id="profileImage" src="#" alt="Profile Image" style="display: none; max-width: 100%; height: auto;" />
                    </div>
                </div>

                        <div class="pt-3 modal-footer">
                            <button type="button" class="btn btn-secondary mx-3" data-bs-dismiss="modal">Cancel</button>
                            <button type="button" class="btn btn-primary open-modal px-3">Save</button>
                        </div>
                    </div>
                </form>
            </div>
            
          </div>
        </div>
    </div>

    <div class="modal fade" id="basicModal" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Confirmation</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Are you sure you want to book the slot(s) ? 
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary save-slot">Save</button>
            </div>
            </div>
        </div>
    </div><!-- End Basic Modal-->

</section>

<script type="text/javascript">
     $(document).ready(function() {
        const apiUrl = 'http://localhost/hallbookings/business.php';
        $("#remark-section").hide();
        $(".datepicker")
        .datepicker({
            dateFormat: 'dd-mm-yy',
            minDate: 1, 
            maxDate: 60
        })
        
        .on("change", function() {
            const bookingDate = formatDate($(".datepicker").val());
            renderSlots(bookingDate)
        });


        function renderSlots(bookingDate) {
            $("#accordionExample").html('');
            bookingDate = bookingDate ? bookingDate : formatDate($(".datepicker").val());
            const params = {
                bookingDate: bookingDate,
                action: 'getslots'
            }
            $.post(apiUrl, params, function(response) {
                //console.log(response);
                $("#accordionExample").html(response);
            }).fail(function() {
                console.log("failed");
            });
        }

        $(".save-slot").on("click", function(e) {
            e.preventDefault(); // Prevent default form submission
            const remarks = $("#remarks").val();
            $("#basicModal").modal('hide');
            const selectedSession = JSON.parse(sessionStorage.getItem("selectedSlots"));
            const bookingDate = formatDate($(".datepicker").val());
            const profileImageInput = $('#profileImageInput')[0].files[0]; 
            const permissionletter = $('#permissionletter')[0].files[0];
            const no_of_participants = $("#no_of_participants").val();
            const dept = $("#dept").val();

            var formData = new FormData();
            formData.append('data', JSON.stringify(selectedSession)); 
            formData.append('bookingDate', bookingDate); 
            formData.append('remarks', remarks); 
            formData.append('no_of_participants', no_of_participants); 
            formData.append('dept', dept);
            formData.append('profileImageInput', profileImageInput); 
            formData.append('permissionletter', permissionletter);
            formData.append('action', 'book'); 

            $.ajax({
                    url: apiUrl, // The URL to handle the file upload
                    type: 'POST',
                    data: formData,
                    contentType: false, // Let jQuery set content type
                    processData: false, // Let jQuery process the data
                    success: function(response) {
                        $("#remarks").val("");
                        $("#remark-section").hide();
                        buildSelectedSlots([]);
                        renderSlots(bookingDate);

                        $('#profileImageInput').val(''); // Clear the file input value
                        $('#permissionletter').val(''); // Clear the permission letter input
                        $('#profileImage').hide(); // Hide the profile image preview
                        selectedSlots = []; // Clear the array
                        sessionStorage.removeItem("selectedSlots");
                    },
                    error: function(xhr, status, error) {
                        console.log('Error: ' + error); // Show error if occurs
                    }
                });
        });
        renderSlots();
     });

     function formatDate(dateTobeFormat) {
        // Split the date value by "-"
        let dateParts = dateTobeFormat.split('-');
        // Re-arrange the parts to format it as "yy-mm-dd"
        const formattedDate = dateParts[2] + '-' + dateParts[1] + '-' + dateParts[0];
        return formattedDate;
     }

     var selectedSlots = [];
     $(document.body).on('click','.time-slot', function(e) {
            
            const hall = $(this).attr("data-hall");
            const slot = $(this).attr("data-slot");
            const refIds = $(this).attr("data-refIds");
            
            $("#refIds").val(refIds);
            $("#hall").text(hall);
            $("#slot").text(slot);

            const obj = {'id': refIds, 'hall': hall, 'slot': slot};
            const index = selectedSlots.findIndex(x => x.id === refIds);
            if(index == -1){
                selectedSlots.push(obj);
                $("#"+refIds).addClass('temp-class');
            } else {
                selectedSlots.splice(index,1);
                $("#"+refIds).removeClass('temp-class');
            }
            
            buildSelectedSlots(selectedSlots);

            sessionStorage.setItem("selectedSlots", JSON.stringify(selectedSlots));
    });

    // $(document.body).on('click', '.alert-dismissible', function() {
    //     const refId = $(this).attr("id");
    //     $("#"+refId).removeClass('temp-class');
    //     const selectedSession = JSON.parse(sessionStorage.getItem("selectedSlots"));
    //     console.log(selectedSession);
    //     const index = selectedSession.findIndex(x => x.id === refId);
    //     console.log(index);
    //     selectedSession.splice(index,1);
    // });

    function buildSelectedSlots(selectedSlots) {
        if(selectedSlots.length > 0){
            $("#remark-section").show();
        }
        let selectedSlotsDom = '';
        $.each(selectedSlots, function( key, value ) {
            selectedSlotsDom +=`<div class="alert alert-light border-light fade show d-flex justify-content-between p-2" role="alert" id="${value.id}"><span>${value.hall}</span><span>${value.slot}</span> </div>`;
        });
        $("#selected-slots").html(selectedSlotsDom);
    }

    $('.open-modal').on('click', function () {
        $("#basicModal").modal('show');
    });
    
    $('#basicModal').on('hidden.bs.modal', function () {
        $("#remarks").val("");
        $("#remark-section").hide();
        buildSelectedSlots([]);
    });

    $('#profileImageInput').on('change', function(event) {
        // Check if a file was selected
        console.log(event.target.files[0]);
        if (event.target.files && event.target.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                // Set the src of the image element to the selected file
                $('#profileImage').attr('src', e.target.result);
                $('#profileImage').show();
            };

            // Read the selected image file
            reader.readAsDataURL(event.target.files[0]);
        }
    });

    $('#permissionletter').on('change', function(event) {
        // Check if a file was selected
        console.log(event.target.files[0]);
        if (event.target.files && event.target.files[0]) {
            var reader1 = new FileReader();

            reader1.onload = function(e) {
                // Set the src of the image element to the selected file
                $('#profileImage').attr('src', e.target.result);
                $('#profileImage').show();
            };

            // Read the selected image file
            reader1.readAsDataURL(event.target.files[0]);
        }
    });
   
</script>