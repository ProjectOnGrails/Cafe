<%@ page import="user.Employee" %>

<g:form action="create">
    <div class="row g-2 mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField class="form-control" name="name"/>
                <label>Name</label>
            </div>
        </div>
        <div class="col">
            <div class="form-floating">
                <g:select class="form-control" name="gender" from="${Employee.Gender.values()}" noSelection="['': 'Select a gender...']"/>
                <label>Gender</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField type="email" class="form-control" name="email"/>
                <label>Email</label>
            </div>
        </div>
    </div>
    <div class="row g-2 mb-2">
        <div class="col-md">
            <div class="form-floating">
                <g:textField class="form-control" name="username"/>
                <label>Username</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating">
                <g:field type="password" class="form-control" name="password"/>
                <label>Password</label>
            </div>
        </div>
    </div>
    <div class="row g-2 mb-2">
        <div class="col-md">
            <div class="form-floating">
                <g:field class="form-control" type="number" name="number"/>
                <label>Contact Number</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating">
                <g:select name="roleId" class="form-control" from="${roles}" optionKey="id" optionValue="authority" noSelection="['': 'Select a role...']"/>
                <label>Assign Role</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
    </div>
</g:form>