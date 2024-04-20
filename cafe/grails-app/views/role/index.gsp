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
        <g:render template="create"/>
        <!-- Data Table -->
        <g:render template="show"/>
    </div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });

   $("#addRole").click(function(){
       $('.edit').hide();
       $('#create').show();
       $('#role').hide();
       $('#editAuthority').val('');
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

    $(".deleteBtn").click(function (){
        var roleId = $(this).data('role-id');
        var requestData = {
            param1: roleId,
        };
        $.ajax({
            url: "${createLink(controller:'role',action:'delete')}",
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
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
