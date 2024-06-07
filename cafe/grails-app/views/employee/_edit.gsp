<%@ page import="user.Employee" %>

                <g:form action="update" id="${employeeInstance.id}">
                    <div class="row g-2 mb-2">
                        <div class="col-3">
                            <div class="form-floating">
                                <g:textField type="number" class="form-control"  name="id" disabled="disabled" value= '${employeeInstance.id}'/>
                                <label>Id</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <g:textField type="number" class="form-control" name="name" value= '${employeeInstance.name}'/>
                                <label>Name</label>
                            </div>
                        </div>
                    </div>
                    <div class="row g-2 mb-2">
                        <div class="col-4">
                            <div class="form-floating">
                                <g:select class="form-control" name="gender" from="${Employee.Gender.values()}" value= '${employeeInstance.gender}'/>
                                <label>Gender</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating">
                                <g:textField type="number" class="form-control" name="number" value= '${employeeInstance.number}'/>
                                <label>Contact Number</label>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col">
                            <div class="form-floating">
                                <g:textField type="email" class="form-control" name="email" value= '${employeeInstance.email}'/>
                                <label>Email</label>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <g:submitButton class="btn btn-primary" name="Update" value="Update"/>
                    </div>
                </g:form>