<!doctype html>
<html>
<head>
    <title>Order</title>
    <meta name="layout" content="main">
</head>
<body>
<div class="container text-center">
    <g:render template="/Shared/message"/>
    <div class="row mt-3 mb-2">
        <div class="col-7">
            <div class="row">
                <h3>Select Category</h3>
                %{--Category List show start--}%
                <div class="d-grid gap-2 d-md-block">
                    <g:each in="${categories}" var="category">
                        <a class="btn btn-primary" href="${createLink(controller:'Orderitem',action:'index',params: [id: category.id])}">
                            ${category.name}
                        </a>
                    </g:each>
                </div>
            </div>
            <hr/>
            <h3>Select Item</h3>
            <div class="row row-cols-1 row-cols-md-3 g-4">
                <g:each in="${items}" var="item">
                    <div class="col">
                        <div class="card">
                            <img src="${createLink(action:'viewPic', params: [id:item.id])}" class="card-img-top"  alt="item" width="150px" height="150px">
                            <div class="card-body">
                                <h5 class="card-title">${item.name}</h5>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="price">
                                        <span class="text-danger"><del>${item.price}</del></span>
                                    </div>
                                    <div class="discount">
                                        <span class="text-success">
                                            <span class="text-success">${item.discountedPrice}</span>
                                        </span>
                                    </div>
                                </div>
                                <button class="btn btn-primary addItem" data-order-id="${item.id}">Add</button>
                            </div>
                        </div>
                    </div>
                </g:each>
            </div>
        </div>
        <div class="col mt-3 border">
            <h3>Bill - ${bill}</h3>
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
            <g:form controller="bill" action="submitBill">
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
                        <span>${total}</span>
                        </tbody>
                    </table>
                </div>
                <div class="row">
                    <div class="col">
                        <span>Grant Total:</span>
                    </div>
                    <div class="col">
                        <g:field class="text-center float-right" id="grandTotal" type="number" name="amount" value="${total}"/>
                    </div>
                </div>
                <hr/>
                <div class="mb-2">
                    <a class="btn btn-secondary" href="${createLink(controller:'orderitem',action:'cancelOrder')}" role="button">Cancel</a>
                    <button class="btn btn-primary" type="submit" role="button">Submit</button>
                </div>
            </g:form>

        </div>
    </div>
    <div class="row">
        <div class="col">
            <table class="table table-striped" id="myTable">
                <thead>
                <tr>
                    <th scope="col">Bill No.</th>
                    <th scope="col">Order Date</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>
                    <g:render template="show"/>
                </tbody>
            </table>
        </div>
    </div>
<script>
    $(".addItem").click(function(){
        var id = $(this).data('order-id');
        $.ajax({
            url: "${createLink(controller:'orderitem',action:'addItem')}",
            type:"post",
            data: {id:id},
            success: function(data) {
                $('table tbody').html(data);
                var totalValue = $(data).find(${total}).val();
                console.log("Total value:", totalValue);
                console.log("Response HTML:", response);

            },
            error: function(xhr, status, error) {
                alert('Error updating item: ' + error);
            }
        });
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
