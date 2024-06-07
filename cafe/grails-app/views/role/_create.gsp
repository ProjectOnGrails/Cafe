<g:form action="add">
    <div class="row g-2">
        <div class="col">
            <div class="form-floating">
                <g:textField class="form-control" name="authority"/>
                <label>Authority Name</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
    </div>
</g:form>
