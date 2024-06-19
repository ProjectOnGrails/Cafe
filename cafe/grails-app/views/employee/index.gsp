<!doctype html>
<html>
<head>
    <title>Employee</title>
    <meta name="layout" content="main">
</head>
<body>
<div class="container text-center">

    <g:render template="/Shared/message"/>
    %{--    Employee create modal start--}%
<div class="row mt-3">
    <div class="col">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#employeeModal" id="addEmployee" style="margin-bottom: 2rem">
            Add Employee
        </button>
        <div class="modal fade bd-example-modal-lg" id="employeeModal" role="dialog" data-bs-backdrop="static" tabindex="-1" aria-labelledby="employeeModalLabel" aria-hidden="true">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="employeeModalLabel">Add Employee</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="employeeCreate"></div>
                </div>
            </div>
        </div>
    </div>
</div>
%{--    Employee create model end--}%

%{--    Employee data table start--}%
<div class="row">
    <table class="table table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Gender</th>
            <th scope="col">Email</th>
            <th scope="col">Contact No.</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:render template="show"/>
        </tbody>
    </table>
</div>
    %{--    Employee data table end--}%


%{--Employee details start--}%
    <div class="modal fade" id="detailModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="detailModalLabel">Employee Details</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="employeeDetail">
                </div>
            </div>
        </div>
    </div>
%{--    Employee details end--}%

%{--    Employee edit start--}%
    <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editModalLabel">Edit Employee</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="employeeEdit"></div>
            </div>
        </div>
    </div>
    %{--    Employee edit start--}%


</div>
<script>
    $("#addEmployee").click(function(){
        $.ajax({
            url: "${createLink(controller:'employee',action:'createForm')}",
            type:"post",
            success: function(data) {
                $('#employeeCreate').html(data);
                $('#employeeModal').modal('show');
            },
        });
    });

    $(".viewBtn").click(function() {
        var employeeId = $(this).data('employee-id');
        $.ajax({
            url: "${createLink(controller:'employee',action:'details')}",
            type: "post",
            data: {id: employeeId},
            success: function (response) {
                $('#employeeDetail').html(response);
                $('#detailModal').modal('show');
                console.log('Controller action called successfully.');
            },
            error: function (xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });

    $(".editBtn").click(function() {
        var employeeId = $(this).data('employee-id');
        $.ajax({
            url: "${createLink(controller:'employee',action:'edit')}",
            type: "post",
            data: {id: employeeId},
            success: function (response) {
                $('#employeeEdit').html(response);
                $('#editModal').modal('show');
                console.log('Controller action called successfully.');
            },
            error: function (xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
