<g:form action="update" id="${roleInstance.id}">
    <div class="row g-2 mb-2">
        <div class="col-3">
            <div class="form-floating">
                <g:textField type="number" class="form-control"  name="id" disabled="disabled" value= '${roleInstance.id}'/>
                <label>Id</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating">
                <g:textField  name="authority" class="form-control" value="${roleInstance.authority}"/>
                <label>Authority Name</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
    </div>
</g:form>