<div>
    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#itemModal" id="addItem" style="margin-bottom: 2rem">
        Add Item
    </button>

    <div class="modal fade" id="itemModal" data-bs-backdrop="static" tabindex="-1" aria-labelledby="itemModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="categoryModalLabel">Add Item</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <g:form action="create">
                    <div class="modal-body">
                        <label for="name">Item Name:</label>
                        <g:textField  name="name"/><br/>
                        <br>
                        <label for="description">Item Description:</label>
                        <g:textArea  name="description"/><br/>
                        <br/>
                        <label for="price">Item Price:</label>
                        <g:textField type="number"  name="price"/><br/>
                        <br>
                        <label for="discountedPrice">Discounted Price:</label>
                        <g:textField type="number"  name="discountedPrice"/><br/>
                        <br>
                        <label for="category">Category:</label>

                        <g:textField type="number"  name="category"/><br/>
                        <br>
                        <label for="image">Item Image:</label>
                        <g:textField type="number"  name="image"/><br/>
                        <br>
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