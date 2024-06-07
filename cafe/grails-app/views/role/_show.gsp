<g:each in="${roles}" var="role">
    <tr>
        <td>${role.id}</td>
        <td>${role.authority}</td>
        <td>${role.updateCount}</td>
        <td>
            <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}">
                <i class="bi bi-pencil-square"></i>
            </g:link>
            <g:link action="delete" params="[id:role.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this role?')">
                <i class="bi bi-trash3"></i>
            </g:link>
        </td>
    </tr>
</g:each>