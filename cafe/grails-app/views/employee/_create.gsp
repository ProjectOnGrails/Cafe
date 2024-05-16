<%@ page import="user.Employee" %>

<g:form action="create">
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Name:</label>
        <div class="col-sm-9">
            <g:textField class="form-control" name="name"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Gender</label>
        <div class="col-sm-9">
            <g:select class="form-control" name="gender" from="${Employee.Gender.values()}"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Email:</label>
        <div class="col-sm-9">
            <g:field class="form-control" type="email" name="email"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Number:</label>
        <div class="col-sm-9">
            <g:field class="form-control" type="number" name="number"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Username:</label>
        <div class="col-sm-9">
            <g:field class="form-control" name="username"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Employee Password:</label>
        <div class="col-sm-9">
            <g:field class="form-control" name="password"/><br/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-6 col-form-label">Assign Role:</label>
        <div class="col-sm-9">
            <g:select name="roleId" from="${roles}" optionKey="id" optionValue="authority" noSelection="['': 'Select a role...']"/>
            <br/>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <g:submitButton class="btn btn-primary" name="Create" value="Submit"/>
    </div>
</g:form>