<div>
    <div class="modal fade" id="editModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="editModalLabel">Edit Employee</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="update" id="${employeeInstance.id}">
                    <div class="modal-body">
                        <div id="employee">
                            <label>Employee Id:</label>
                            <g:textField type="number" name="id" value= '${employeeInstance.id}' disabled="disabled"/><br/>
                            <br/>
                            <label>Name:</label>
                            <g:textField type="number"  name="name" value= '${employeeInstance.name}'/><br/>
                            <br/>
                            <label>Gender:</label>
                            <g:textField type="number"  name="gender" value= '${employeeInstance.gender}'/><br/>
                            <br/>
                            <label>Email:</label>
                            <g:textField type="number"  name="email" value= '${employeeInstance.email}'/><br/>
                            <br/>
                            <label>Number:</label>
                            <g:textField type="number"  name="number" value= '${employeeInstance.number}'/><br/>
                            <br/>
                        </div>
                        <br>
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