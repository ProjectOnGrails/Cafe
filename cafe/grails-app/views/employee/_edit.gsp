

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