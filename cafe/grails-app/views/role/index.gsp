<!doctype html>
<html>
<head>
    <title>role</title>
    <meta name="layout" content="main">
</head>
<body>
    <div class="container text-center" style="margin: 1rem">
        <g:render template="/Shared/message"/>

        %{--Role create start--}%
        <div class="row">
            <div class="col">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole" style="margin-bottom: 2rem">
                    Add Role
                </button>
                <div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Add Role</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <g:render template="create"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        %{--    Role create end--}%

        <!--Role data table start-->
        <div class="row">
            <div class="col">
                <table class="table table-striped" id="myTable">
                    <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Authority</th>
                        <th scope="col">Update Count</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:render template="show"/>
                    </tbody>
                </table>
            </div>
        </div>
        <!--Role data table end-->

        %{--Role edit start--}%
        <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="editModalLabel">Edit Role</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body" id="roleEdit"></div>
                </div>
            </div>
        </div>
        %{--Role edit end--}%
    </div>
<script>


    $(".editBtn").click(function() {
        var roleId = $(this).data('role-id');
        $.ajax({
            url: "${createLink(controller:'role',action:'edit')}",
            type: "post",
            data: {id: roleId},
            success: function (response) {
                $('#roleEdit').html(response);
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
