<g:form>
    <div class="row g-2 mb-2">
      <div class="col-3">
        <div class="form-floating">
            <g:textField type="number" class="form-control"  name="id" disabled="disabled" value= '${employeeInstance.id}'/>
            <label>Id</label>
        </div>
      </div>
      <div class="col">
        <div class="form-floating">
            <g:textField type="number" class="form-control" name="name" disabled="disabled" value= '${employeeInstance.name}'/>
            <label>Name</label>
        </div>
      </div>
    </div>
    <div class="row g-2 mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField type="number" class="form-control" name="username" disabled="disabled" value= '${userInstance.username}'/>
                <label>Username</label>
            </div>
        </div>
        <div class="col-4">
            <div class="form-floating">
                <g:textField type="number" class="form-control" name="gender" disabled="disabled" value= '${employeeInstance.gender}'/>
                <label>Gender</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField type="email" class="form-control" name="email" disabled="disabled" value= '${employeeInstance.email}'/>
                <label>Email</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField type="number" class="form-control" name="number" disabled="disabled" value= '${employeeInstance.number}'/>
                <label>Contact Number</label>
            </div>
        </div>
    </div>
    <div class="row g-2 mb-2">
        <div class="col-md">
            <div class="form-floating">
                <g:textField type="text" class="form-control" name="createdBy" disabled="disabled" value= '${employeeInstance.createdBy}'/>
                <label>Created By</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating">
                <g:textField type="text" class="form-control" name="dateCreated" disabled="disabled" value= '${employeeInstance.dateCreated}'/>
                <label>Created On</label>
            </div>
        </div>
    </div>
    <div class="row g-2 mb-2">
        <div class="col-md">
            <div class="form-floating">
                <g:textField type="text" class="form-control" name="updatedBy" disabled="disabled" value= '${employeeInstance.updatedBy}'/>
                <label>Last Update By</label>
            </div>
        </div>
        <div class="col-md">
            <div class="form-floating">
                <g:textField type="text" class="form-control" name="lastUpdate" disabled="disabled" value= '${employeeInstance.lastUpdated}'/>
                <label>Last Update On</label>
            </div>
        </div>
    </div>
    <div class="row mb-2">
        <div class="col">
            <div class="form-floating">
                <g:textField type="number" class="form-control" name="number" disabled="disabled" value= '${employeeInstance.updateCount}'/>
                <label>Total Updates</label>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Close</button>
    </div>
</g:form>
