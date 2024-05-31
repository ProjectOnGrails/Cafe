<div class="card">
    <div class="card-header" style="text-align: center">
        ${itemInstance.name}
    </div>
    <div class="card-body">
        <img src="${createLink(action:'viewPic', params: [id:itemInstance.id])}" class="card-img-top" alt="momo">
        <p>${itemInstance.description}</p>
        <div class="d-flex justify-content-between align-items-center">
            <div class="price">
                <span class="text-muted mr-2">Regular Price:</span>
                <span class="text-danger">${itemInstance.price}</span>
            </div>
            <div class="discount">
                <span class="text-muted mr-2">Discount Price:</span>
                <span class="text-success">${itemInstance.discountedPrice}</span>
            </div>
        </div>
        <br>
        <blockquote class="blockquote mb-0">
            <footer class="blockquote-footer">Category: <cite title="Source Title">${itemInstance.category.name}</cite></footer>
            <footer class="blockquote-footer">Added By: <cite title="Source Title">${itemInstance.createdBy}</cite></footer>
            <footer class="blockquote-footer">Created Date: <cite title="Source Title">${itemInstance.dateCreated}</cite></footer>
            <footer class="blockquote-footer">Last Updated By: <cite title="Source Title">${itemInstance.updatedBy}</cite></footer>
            <footer class="blockquote-footer">Last Update Date: <cite title="Source Title">${itemInstance.lastUpdated}</cite></footer>
            <footer class="blockquote-footer">Total Update Count: <cite title="Source Title">${itemInstance.updateCount}</cite></footer>
        </blockquote>
    </div>
</div>