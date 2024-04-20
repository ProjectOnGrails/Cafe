<div>
    <table class="table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Authority</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${roles}" var="role">
            <tr>
                <td>${role.id}</td>
                <td>${role.authority}</td>
                <td>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-role-id="${role.id}" data-role-authority="${role.authority}" >Update</g:link>
                    <g:link action="delete" data-role-id="${role.id}" class="btn btn-danger deleteBtn" onclick="return confirm('Are you sure you want to delete this role?')">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>