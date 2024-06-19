<!doctype html>
<html>
<head>
    <title>Bill</title>
    <meta name="layout" content="main">
    <style>
    #counterInput {
        width: 10px; /* Adjust this value to set the desired width */
        text-align: center;
    }
    </style>
</head>
<body>
<div class="container text-center" style="margin: 1rem">
    <g:render template="/Shared/message"/>
    <div class="row">
        <div class="col-6">
            <h3>Select Category</h3>
            %{--Category List show start--}%
            <div class="d-grid gap-2 d-md-block">
                <g:each in="${categories}" var="category">
                    <a href="${createLink(controller:'bill',action:'index',params: [id: category.id])}">
                        <button class="btn btn-primary">
                            ${category.name}
                        </button>
                    </a>
                </g:each>
            </div>
            <hr/>
            <h3>Select Item</h3>
            %{--    Select items start--}%
            <div class="row row-cols-1 row-cols-md-4 g-6">
                <g:each in="${items}" var="item">
                    <div class="col">
                        <div class="card h-100">
                            <img src="${createLink(action:'viewPic', params: [id:item.id])}" class="card-img-top" alt="momo">
                            <div class="card-body">
                                <h5 class="card-title">${item.name}</h5>
                                <button class="btn btn-primary" id="itemAdd" data-item-id="${item.id}">Add</button>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="price">
                                        <span class="text-muted mr-2">Regular Price:</span>
                                        <del class="text-danger">${item.price}</del>
                                    </div>
                                    <div class="discount">
                                        <span class="text-muted mr-2">Discount Price:</span>
                                        <span class="text-success">${item.discountedPrice}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer">
                                <small class="text-body-secondary">Last updated
                                <my:updateTime date="${item.lastUpdated}" />
                                mins ago</small>
                            </div>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
        <div class="col border">
            <h3>Bill</h3>
            <div class="d-flex justify-content-between align-items-center">
                <div class="price">
                    <span class="text-danger">${user.username}</span>
                </div>
                <div class="discount">
                    <span class="text-success">
                        <g:dateFormat format="yyyy-MM-dd HH:mm:ss" date="${date}" />
                    </span>
                </div>
            </div>
            <hr/>
            <div class="table-responsive overflow-auto">
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Total</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                        <g:render template="create"/>
                    </tbody>
                </table>
            </div>
            <a class="btn btn-primary" href="${createLink(controller:'bill',action:'cancelBill')}" role="button">Cancel</a>
        </div>
    </div>
</div>
<script>
    $("#itemAdd").click(function(){
        var itemId = $(this).data('item-id');
        $.ajax({
            url: "${createLink(controller:'bill',action:'createBill')}",
            type:"post",
            data:{id:itemId},
            success: function(data) {
                $('table tbody').html(data);
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
    });
    document.getElementById('decrease').addEventListener('click', function() {
        let input = document.getElementById('counterInput');
        let currentValue = parseInt(input.value);
        if (currentValue > 1) {
            input.value = currentValue - 1;
        }
    });

    document.getElementById('increase').addEventListener('click', function() {
        let input = document.getElementById('counterInput');
        let currentValue = parseInt(input.value);
        input.value = currentValue + 1;
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
</body>
</html>
