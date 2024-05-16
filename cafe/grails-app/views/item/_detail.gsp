<div class="card">
    <div class="card-header" style="text-align: center">
        ${itemInstance.name}
    </div>
    <div class="card-body">
        <img src="https://th.bing.com/th/id/R.dbebfe183ab4a92765119dc0623136bb?rik=5lYZ0fHGadTqOw&riu=http%3a%2f%2fimg.taste.com.au%2fEnoUrlY0%2ftaste%2f2016%2f11%2fbacon-cheddar-and-pineapple-pizza-77250-1.jpeg&ehk=8KCqFLnGx1Gbr0IWG%2fZSbC0bcR%2b0uw%2bDec1knTPHETg%3d&risl=&pid=ImgRaw&r=0" class="card-img-top" alt="momo">
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