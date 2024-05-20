<!doctype html>
<html>
<head>
    <title>role</title>
    <meta name="layout" content="main">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
</head>
<body>
<div class="container" style="margin: 3rem">

    <g:render template="/Shared/message"/>

%{--    Employee create modal start--}%
    <div>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#employeeModal" id="addEmployee" style="margin-bottom: 2rem">
            Add Employee
        </button>
        <div class="modal fade bd-example-modal-lg" id="employeeModal" role="dialog" data-bs-backdrop="static" tabindex="-1" aria-labelledby="employeeModalLabel" aria-hidden="true">
            <div class="modal-dialog ">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="employeeModalLabel">Add Employee</h1>
                        <button type="button" id="btnClose" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body" id="employeeCreate"></div>
                </div>
            </div>
        </div>
    </div>
%{--    Employee create model end--}%

    <div class="modal-body" id="employeeDetail"></div>
    <div class="modal-body" id="employeeEdit"></div>

    <g:render template="show"/>
</div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });

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

    $("#btnClose").click(function(){
        window.location.reload();
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
