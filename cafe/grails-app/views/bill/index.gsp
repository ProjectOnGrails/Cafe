<!doctype html>
<html>
<head>
    <title>Bill</title>
    <meta name="layout" content="main">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
</head>
<body>

<div class="container" style="margin: 3rem">
    <g:render template="/Shared/message"/>

%{--    Bill create start--}%
    <div>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" id="addBill" data-bs-target="#billModal" style="margin-bottom: 2rem">
            Create Bill
        </button>
        <div class="modal fade" id="billModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="billModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="billModalLabel">Create Bill</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-header">
                        <div class="col-sm-9">
                            <g:textField class="form-control"  name="orderDate" value="${date}" disabled="true"/><br/>
                        </div>
                        <div class="col-sm-3">
                            <g:textField class="form-control"  name="createdby" value="${user.username}" disabled="true"/><br/>
                        </div>
                    </div>
                    <div class="modal-body" id="billCreate"></div>
                </div>
            </div>
        </div>
    </div>
%{--Bill create end--}%
    <h1>Index</h1>
</div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });

    $("#addBill").click(function(){
        $.ajax({
            url: "${createLink(controller:'bill',action:'createBill')}",
            type:"post",
            success: function(data) {
                $('#billCreate').html(data);
                $('#billModal').modal('show');
            },
        });
    });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
