
    <g:form action="create" enctype="multipart/form-data">
        <div class="row g-2 mb-2">
            <div class="col-4">
                <div class="form-floating">
                    <g:select class="form-control" name="category.id" from="${categories}" optionKey="id" optionValue="name" noSelection="${['':'Select Category..']}"/>
                    <label>Assign Category</label>
                </div>
            </div>
            <div class="col">
                <div class="form-floating">
                    <g:textField class="form-control" name="name" id="name" placeholder="Item Name" required="true"/>
                    <label>Name</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col">
                <div class="form-floating">
                    <g:textArea class="form-control" name="description" id="description" />
                    <label>Description</label>
                </div>
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col">
                    <g:field class="form-control" type="file" name="image" />
            </div>
        </div>
        <div class="row g-2 mb-2">
            <div class="col-md">
                <div class="form-floating">
                    <g:field type="number" class="form-control" name="price" id="price" placeholder="Item Price" required="true"/>
                    <label>Price</label>
                </div>
            </div>
            <div class="col-md">
                <div class="form-floating">
                    <g:field type="number" class="form-control" name="discountedPrice" id="discountedPrice" placeholder="Leave empty to set as price above."/>
                    <label>Discount Price</label>
                </div>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
        </div>
    </g:form>
