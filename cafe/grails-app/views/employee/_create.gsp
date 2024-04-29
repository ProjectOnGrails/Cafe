<%@ page import="user.Employee" %>
<div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#employeeModal" id="addEmployee" style="margin-bottom: 2rem">
        Add Employee
    </button>

    <div class="modal fade" id="employeeModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="employeeModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="employeeModalLabel">Add Employee</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="create">
                    <div class="modal-body">
                        <label>Employee Name:</label>
                        <g:textField  name="name"/><br/>
                        <br/>
                        <label>Employee Gender</label>
                        <g:select name="gender" from="${Employee.Gender.values()}"/><br/>
                        <br/>
                        <label>Employee Email:</label>
                        <g:field type="email" name="email"/><br/>
                        <br/>
                        <label>Employee Number:</label>
                        <g:field type="number" name="number"/><br/>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>
    <!-- Modal -->
</div>