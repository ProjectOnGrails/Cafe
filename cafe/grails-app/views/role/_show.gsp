<g:each in="${roles}" var="role">
    <tr>
        <td>${role.id}</td>
        <td>${role.authority}</td>
        <td>${role.updateCount}</td>
        <td>
            <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}">Update</g:link>
            <g:link action="delete" params="[id:role.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this role?')">Delete</g:link>
        </td>
    </tr>
</g:each>