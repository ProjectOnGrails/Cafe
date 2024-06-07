
        <g:each in="${employees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.gender}</td>
                <td>${employee.email}</td>
                <td>${employee.number}</td>

                <td>
                    <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">
                        <i class="bi bi-eye-fill"></i>
                    </g:link>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">
                        <i class="bi bi-pencil-square"></i>
                    </g:link>
                    <g:link action="delete" id="${employee.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">
                        <i class="bi bi-trash3"></i>
                    </g:link>
                </td>
            </tr>
        </g:each>