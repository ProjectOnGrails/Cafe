<g:each in="${bills}" var="bill">
    <tr>
        <td>${bill.billNumber}</td>
        <td>${bill.orderDate}</td>
        <td>${bill.amount}</td>
        <td>
            <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-item-id="${bill.id}">
                <i class="bi bi-eye-fill"></i>
            </g:link>
            <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-item-id="${bill.id}">
                <i class="bi bi-pencil-square"></i>
            </g:link>
            <g:link controller="bill" action="delete" params="[id:bill.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">
                <i class="bi bi-trash3"></i>
            </g:link>
        </td>
    </tr>
</g:each>