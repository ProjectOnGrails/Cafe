<g:each in="${orderItems}" var="order">
    <tr>
        <td>${orderItems.indexOf(order)}</td>
        <td>${order.item.name}</td>
        <td id="price">${order.item.discountedPrice}</td>
        <td>
            <div class="input-group">
                <a href="${createLink(controller:'orderitem',action:'minusQuantity',params:[id:orderItems.indexOf(order)])}" class="btn btn-outline-primary" type="button" id="decrease">-</a>
                <g:field type="text" class="form-control text-center" name="quantity" placeholder="" id="counterInput" value="${order.quantity}" disabled="true" style="width: 1px"/>
                <a href="${createLink(controller:'orderitem',action:'addQuantity',params:[id:orderItems.indexOf(order)])}" class="btn btn-outline-primary" type="button" id="increase">
                    +
                </a>
            </div>
        </td>
        <td>${order.amount}</td>
        <td>
            <a href="${createLink(controller:'orderitem',action:'cancelItem',params:[id:orderItems.indexOf(order)])}">
                <i class="bi bi-x"></i>
            </a>
        </td>
    </tr>
</g:each>
<script>
    var abc = "${total}"
    $("#grandTotal").val(abc)
</script>