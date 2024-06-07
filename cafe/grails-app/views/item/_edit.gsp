<div>
    <g:form action="update" enctype="multipart/form-data" id="${itemInstance.id}">
        <div class="row g-2 mb-2">
            <div class="col-3">
                <div class="form-floating">
                    <g:field type="number" class="form-control" name="id" value="${itemInstance.id}" disabled="true"/>
                    <label>Id</label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating">
                    <g:select name="category.id" class="form-control" from="${categories}" optionKey="id" value="${itemInstance.category.name}" optionValue="name"/>
                    <label>Select Category</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col-md">
                <div class="form-floating">
                    <g:textField class="form-control" name="name" id="name" placeholder="Item Name" value="${itemInstance.name}" required="true"/>
                    <label>Name</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col">
                <div class="form-floating">
                    <g:field type="file" class="form-control" name="image" value="${itemInstance.image}"/>
                    <label>Select Image</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col">
                <div class="form-floating">
                    <g:textArea class="form-control" name="description" id="description" value="${itemInstance.description}"/>
                    <label>Description</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col-md">
                <div class="form-floating">
                    <g:field type="number" class="form-control" name="price" id="price" placeholder="Item Price" value="${itemInstance.price}" required="true"/>
                    <label>Price</label>
                </div>
            </div>
            <div class="col-md">
                <div class="form-floating">
                    <g:field type="number" class="form-control" name="discountedPrice" id="discountedPrice" value="${itemInstance.discountedPrice}" placeholder="Leave empty to set as price above."/>
                    <label>Discount Price</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <g:submitButton class="btn btn-primary" name="update" value="Update"/>
        </div>
    </g:form>
</div>