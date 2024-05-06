
<div>
    <table class="table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Gender</th>
            <th scope="col">Email</th>
            <th scope="col">Contact No.</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${employees}" var="employee">
            <tr>
                <td>${employee.id}</td>
                <td>${employee.name}</td>
                <td>${employee.gender}</td>
                <td>${employee.email}</td>
                <td>${employee.number}</td>

                <td>
                    <g:link class="viewBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">View</g:link>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-employee-id="${employee.id}">Update</g:link>
                    <g:link action="delete" id="${employee.id}" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>