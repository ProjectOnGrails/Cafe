
<g:form action="update" id="${category.id}">
    <div class="row mb-2">
        <div class="col-3">
            <div class="form-floating">
                <g:textField class="form-control"  name="id" value="${category.id}" disabled="true"/>
                <label>Id</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating">
                <g:textField class="form-control" name="Name" value="${category.name}"/><br/>
                <label>Name</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textArea class="form-control" name="description" value="${category.description}"/><br/>
                <label>Description</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
    </div>
</g:form>
