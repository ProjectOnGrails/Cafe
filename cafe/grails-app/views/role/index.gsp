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
        <div style="float: right;margin-bottom: 2rem">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole">
                Add Role
            </button>
            <div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="exampleModalLabel">Add role</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <g:form action="add">
                        <div class="modal-body">
                            <div id="role">
                                <label for="id">Role Id:</label>
                                <g:textField type="number"  name="id" id="editId" disabled="disabled"/><br/>
                            </div>
                            <label for="authority">Role Name:</label>
                            <g:textField  name="authority" id="editAuthority"/><br/>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button class="btn btn-primary edit" name="Edit" value="Update" id="edit">Update</button>
                                <g:submitButton id="create" class="btn btn-primary" name="Create" value="Submit"/>
                        </div>
                        </g:form>
                    </div>
                </div>
            </div>
            <!-- Modal -->
        </div>
        <!-- Data Table -->
        <div>
            <table class="table-striped" id="myTable">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Authority</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${roles}" var="role">
                        <tr>
                            <td>${role.id}</td>
                            <td>${role.authority}</td>
                            <td>
                                <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}" data-role-authority="${role.authority}" >Update</g:link>
                                <g:link action="delete" id="${role.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this role?')">Delete</g:link>
                            </td>
                        </tr>

                    </g:each>
                </tbody>
            </table>
        </div>

    </div>
<script>

   $("#addRole").click(function(){
       $('.edit').hide();
       $('#create').show();
       $('#role').hide();
       $('#editAuthority').val('');
   });
   $("#edit").click(function(){
       var id = $("#editId").val()
       var authority = $("#editAuthority").val()

       var requestData = {
           param1: id,
           param2: authority
       };
       console.log(id,authority);
       $.ajax({
           url: "${createLink(controller:'role',action:'update')}",
           type:"post",
           data: requestData,
           success: function(response) {
               console.log('Controller action called successfully.');
               console.log(response);
               location.reload();// Log the response from the controller
           },
           error: function(xhr, status, error) {
               console.error('Error calling controller action:', error);
           }
       });
   });
    $(".editBtn").click(function(){
        var roleId = $(this).data('role-id');
        var roleAuthority = $(this).data('role-authority');
        $('#editAuthority').val(roleAuthority);
        $('#editId').val(roleId);
        $('.edit').show();
        $('#create').hide();
        $('#role').show();
        $('#exampleModal').modal('show');
    });

    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
