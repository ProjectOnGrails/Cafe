<!doctype html>
<html>
<head>
    <title>Category</title>
    <meta name="layout" content="main">
</head>
<body>
<div class="container text text-center">
    <g:render template="/Shared/message"/>
    %{--Category create start--}%
    <div class="row mt-3">
        <div class="col">
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
        </div>
    </div>
    %{--    Category create end--}%

    <!-- Data Table start-->
    <div class="row">
        <div class="col">
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
        </div>
    </div>
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

</body>
</html>
