<div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#categoryModal" id="addCategory" style="margin-bottom: 2rem">
        Add Category
    </button>

    <div class="modal fade" id="categoryModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="categoryModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="categoryModalLabel">Add Category</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="create">
                    <div class="modal-body">
                        <label for="name">Category Name:</label>
                        <g:textField  name="name"/><br/>
                        <br>
                        <label for="description">Category Description:</label>
                        <g:textArea  name="description"/><br/>
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