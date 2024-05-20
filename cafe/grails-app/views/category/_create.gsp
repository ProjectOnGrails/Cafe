<g:form action="create">
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Name</label>
        <div class="col-sm-9">
            <g:textField  name="name" required="true"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-3 col-form-label">Description</label>
        <div class="col-sm-9">
            <g:textArea  name="description" required="true"/><br/>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
    </div>
</g:form>

