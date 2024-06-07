
    <g:each in="${categories}" var="category">
        <tr>
            <td>${category.id}</td>
            <td>${category.name}</td>
            <td>${category.description}</td>
            <td>${category.items.size()}</td>
            <td>
                <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-category-id="${category.id}">
                    <i class="bi bi-eye-fill"></i>
                </g:link>
                <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-category-id="${category.id}">
                    <i class="bi bi-pencil-square"></i>
                </g:link>
                <g:link action="delete" params="[id:category.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">
                    <i class="bi bi-trash3"></i>
                </g:link>
            </td>
        </tr>
    </g:each>