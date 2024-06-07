<g:form action="create">
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField  name="name" class="form-control" required="true"/>
                <label>Name</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textArea  name="description" class="form-control" required="true"/>
                <label>Description</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
    </div>
</g:form>

