<div>
    <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editModalLabel">Edit Role</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="update" id="${roleInstance.id}">
                    <div class="modal-body">
                        <div id="role">
                            <label for="id">Role Id:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${roleInstance.id}'/><br/>
                        </div>
                        <br>
                        <label for="authority">Role Name:</label>
                        <g:textField  name="authority" id="editAuthority" value="${roleInstance.authority}"/><br/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>