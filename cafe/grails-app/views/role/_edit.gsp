<g:form action="update" id="${roleInstance.id}">
    <div class="modal-body">
        <div id="role">
            <label>Role Id:</label>
            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${roleInstance.id}'/><br/>
        </div>
        <br>
        <label>Role Name:</label>
        <g:textField  name="authority" id="editAuthority" value="${roleInstance.authority}"/><br/>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
    </div>
</g:form>