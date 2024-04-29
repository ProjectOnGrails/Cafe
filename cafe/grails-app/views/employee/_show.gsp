
<div>
    <table class="table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Gender</th>
            <th scope="col">Email</th>
            <th scope="col">Contact No.</th>
            <th scope="col">Joined Days</th>
            <th scope="col">Created By</th>
            <th scope="col">Created Date</th>
            <th scope="col">Updated By</th>
            <th scope="col">Update Count</th>
            <th scope="col">Last Update</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${categories}" var="category">
            <tr>
                <td>${category.id}</td>
                <td>${category.name}</td>
                <td>${category.description}</td>
                <td>${category.createdBy}</td>
                <td>
                    <g:dateFormat format="yyyy-MM-dd HH:mm:ss" date="${category.dateCreated}" />
                </td>
                <td>${category.updatedBy}</td>
                <td>${category.updateCount}</td>
                <td>${category.lastUpdated}</td>

                <td>
                    <g:link class="btn btn-primary editBtn" data-bs-toggle="modal" data-category-id="${category.id}">Update</g:link>
                    <g:link action="delete" params="[id:category.id]" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete this category?')">Delete</g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>