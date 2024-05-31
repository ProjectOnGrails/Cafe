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
<div class="container" style="margin: 1rem">
    <g:render template="/Shared/message"/>

%{--Category create start--}%
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#categoryModal" id="addCategory" style="margin-bottom: 2rem">
        Add Category
    </button>
    <div class="modal fade" id="categoryModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="categoryModalLabel">Add Category</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="categoryCreate"></div>
            </div>
        </div>
    </div>
%{--    Category create end--}%

<!-- Data Table start-->
    <table class="table table-striped" id="myTable">
        <thead>
            <tr>
                <th scope="col">Id</th>
                <th scope="col">Name</th>
                <th scope="col">Description</th>
                <th scope="col">Item Count</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <tbody>
        <g:render template="show"/>
        </tbody>
    </table>

%{--Date Table end--}%

%{--    Details modal start--}%
    <div class="modal fade" id="detailModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="detailModalLabel">Category Details</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="categoryDetail"></div>
            </div>
        </div>
    </div>
%{--    Details modal end--}%

%{--    Category edit start--}%
    <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editModalLabel">Edit Category</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body" id="categoryEdit"></div>
            </div>
        </div>
    </div>
%{--    Category edit end--}%


</div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
    $("#addCategory").click(function (){
        $.ajax({
            url: "${createLink(controller:'category',action:'createForm')}",
            type:"post",
            success: function(response) {
                $('#categoryCreate').html(response);
                $('#categoryModal').modal('show');
            },
        });
    });
    $(".viewBtn").click(function() {
        var categoryId = $(this).data('category-id');
        $.ajax({
            url: "${createLink(controller:'category',action:'details')}",
            type: "post",
            data: {id: categoryId},
            success: function (response) {
                $('#categoryDetail').html(response);
                $('#detailModal').modal('show');
                console.log('Controller action called successfully.');
            },
            error: function (xhr, status, error) {
                console.error('Error calling controller action:', error);
            }
        });
    });

    $(".editBtn").click(function() {
        var categoryId = $(this).data('category-id');
        $.ajax({
            url: "${createLink(controller:'category',action:'edit')}",
            type: "post",
            data: {id: categoryId},
            success: function (response) {
                $('#categoryEdit').html(response);
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
