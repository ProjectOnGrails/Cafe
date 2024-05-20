<div class="card">
    <div class="card-body">
        <h5 class="card-title">${category.name}</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary">Created on:
            <g:dateFormat format="yyyy-MM-dd HH:mm:ss" date="${category.dateCreated}" />
        </h6>
        <p class="card-text">${category.description}</p>
        <p class="card-text">
            Created by: ${category.createdBy}<br/>
            Last updated on: ${category.lastUpdated}<br/>
            Updated by: ${category.updatedBy}<br/>
            Total updates: ${category.updateCount}<br/>
        </p>
        <a href="/item/index" class="card-link">Check Food Items</a>
    </div>
</div>