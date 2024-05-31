
        <g:each in="${employees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.gender}</td>
                <td>${employee.email}</td>
                <td>${employee.number}</td>

                <td>
                    <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">View</g:link>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">Update</g:link>
                    <g:link action="delete" id="${employee.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">Delete</g:link>
                </td>
            </tr>
        </g:each>