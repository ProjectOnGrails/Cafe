<!doctype html>
<html>
<head>
    <title>Item</title>
    <meta name="layout" content="main">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
</head>
<body>
<div class="container" style="margin: 1rem">
    <g:render template="/Shared/message"/>

%{--Item create start--}%
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal" id="addItem" style="margin-bottom: 2rem">
    <i class="bi bi-plus-lg"></i>
    Add Item
    </button>
    <div class="modal fade" id="addModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Add Item</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="itemCreate"></div>
            </div>
        </div>
    </div>
%{--Item create end--}%

%{--Item list data table start--}%
    <table class="table table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Price</th>
            <th scope="col">Discounted Price</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:render template="show"/>
        </tbody>
    </table>
%{--    Item list data table end--}%

%{--    Item data edit modal start--}%
    <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Edit Item</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="itemEdit"></div>
            </div>
        </div>
    </div>
%{--    Item data edit modal end--}%

%{--    Item details card start--}%
    <div class="modal fade" id="detailsModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="detailsModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5">Item Details</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="itemDetails"></div>
            </div>
        </div>
    </div>
%{--    Item details card end--}%
</div>
<script>

    $(document).ready(function () {
        $('#myTable').DataTable();
    });

    $("#addItem").click(function(){
        $.ajax({
            url: "${createLink(controller:'item',action:'createForm')}",
            type:"post",
            success: function(data) {
                $('#itemCreate').html(data);
                $('#addModal').modal('show');
            },
            error: function (xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });

    $(".viewBtn").click(function(){
        var itemId = $(this).data('item-id');
        $.ajax({
            url: "${createLink(controller:'item',action:'detailCard')}",
            type:"post",
            data: {id: itemId},
            success: function(data) {
                $('#itemDetails').html(data);
                $('#detailsModal').modal('show');
            },
            error: function (xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });

    $(".editBtn").click(function() {
        var itemId = $(this).data('item-id');
        $.ajax({
            url: "${createLink(controller:'item',action:'edit')}",
            type: "post",
            data: {id: itemId},
            success: function (response) {
                $('#itemEdit').html(response);
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
