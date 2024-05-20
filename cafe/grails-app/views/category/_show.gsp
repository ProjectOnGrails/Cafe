
<div>
    <table class="table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Item Count</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${categories}" var="category">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <td>${category.description}</td>
                <td>${category.items.size()}</td>
                <td>
                    <g:link class="btn btn-outline-info viewBtn" data-bs-toggle="modal" data-category-id="${category.id}">View</g:link>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-category-id="${category.id}">Update</g:link>
                    <g:link action="delete" params="[id:category.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>