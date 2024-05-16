<div>
    <g:form action="update" enctype="multipart/form-data" id="${itemInstance.id}">
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Id</label>
            <div class="col-sm-9">
                <g:textField class="form-control" name="id" id="id" value="${itemInstance.id}" disabled="true"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Category</label>
            <div class="col-sm-9">
                <g:select name="category.id" from="${categories}" optionKey="id" value="${itemInstance.category.name}" optionValue="name"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Name</label>
            <div class="col-sm-9">
                <g:textField class="form-control" name="name" id="name" placeholder="Item Name" value="${itemInstance.name}" required="true"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Description</label>
            <div class="col-sm-9">
                <g:textArea class="form-control" name="description" id="description" value="${itemInstance.description}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Image</label>
            <div class="col-sm-9">
                <g:field type="file" name="image" value="${itemInstance.image}"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-3 col-form-label">Price</label>
            <div class="col-sm-9">
                <g:field type="number" class="form-control" name="price" id="price" placeholder="Item Price" value="${itemInstance.price}" required="true"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-6 col-form-label">Discounted Price</label>
            <div class="col-sm-9">
                <g:field type="number" class="form-control" name="discountedPrice" id="discountedPrice" value="${itemInstance.discountedPrice}" placeholder="Leave empty to set as price above."/>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <g:submitButton class="btn btn-primary" name="update" value="Update"/>
        </div>
    </g:form>
</div>