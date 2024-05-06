<div>
    <div class="modal fade" id="detailModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="detailModalLabel">Employee Details</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form>
                    <div class="modal-body">
                        <div id="employee">
                            <label>Employee Id:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.id}'/><br/>
                            <br/>
                            <label>Name:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.name}'/><br/>
                            <br/>
                            <label>Gender:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.gender}'/><br/>
                            <br/>
                            <label>Email:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.email}'/><br/>
                            <br/>
                            <label>Number:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.number}'/><br/>
                            <br/>
                            <label>Created Date:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.dateCreated}'/><br/>
                            <br/>
                            <label>Created By:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.createdBy}'/><br/>
                            <br/>
                            <label>Last Update Date:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.lastUpdated}'/><br/>
                            <br/>
                            <label>Last Update By:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.updatedBy}'/><br/>
                            <br/>
                            <label>Total Updates:</label>
                            <g:textField type="number"  name="id" id="editId" disabled="disabled" value= '${employeeInstance.updateCount}'/><br/>
                        </div>
                        <br>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>