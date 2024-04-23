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
        <div class="modal-body" id="roleEdit"></div>
        <!-- Data Table -->
        <g:render template="show"/>
    </div>
<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });


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
