<g:each in="${items}" var="item">
    <tr>
        <td>${item.id}</td>
        <td>${item.name}</td>
        <td>${item.category.name}</td>
        <td>${item.price}</td>
        <td>${item.discountedPrice}</td>
        <td>
            <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-item-id="${item.id}">
                <i class="bi bi-eye-fill"></i>
            </g:link>
            <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-item-id="${item.id}">
                <i class="bi bi-pencil-square"></i>
            </g:link>
            <g:link action="delete" params="[id:item.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">
                <i class="bi bi-trash3"></i>
            </g:link>
        </td>
    </tr>
</g:each>