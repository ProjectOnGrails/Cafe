
<div>
    <table class="table-striped" id="myTable">
        <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Price</th>
            <th scope="col">Discounted Price</th>
            <th scope="col">Image</th>
            <th scope="col">Created By</th>
            <th scope="col">Created Date</th>
            <th scope="col">Updated By</th>
            <th scope="col">Update Count</th>
            <th scope="col">Last Update</th>
            <th scope="col">Action</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${items}" var="item">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.description}</td>
                <td>${item.price}</td>
                <td>${item.discountedPrice}</td>
                <td>${item.image}</td>
                <td>${item.createdBy}</td>
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