
<g:form action="update" id="${category.id}">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Id</label>
        <div class="col-sm-9">
            <g:textField  name="id" value="${category.id}" disabled="true"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Name</label>
        <div class="col-sm-9">
            <g:textField  name="Name" value="${category.name}"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Description</label>
        <div class="col-sm-9">
            <g:textArea  name="description" value="${category.description}"/><br/>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
    </div>
</g:form>
