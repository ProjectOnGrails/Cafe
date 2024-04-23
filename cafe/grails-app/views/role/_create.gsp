<div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" id="addRole" style="margin-bottom: 2rem">
        Add Role
    </button>

    <div class="modal fade" id="exampleModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Add Role</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="add">
                    <div class="modal-body">
                        <label for="authority">Role Name:</label>
                        <g:textField  name="authority"/><br/>
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