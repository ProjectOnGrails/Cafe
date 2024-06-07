<g:each in="${itemList}" var="item">
    <tr>
        <td>${itemList.indexOf(item)}</td>
        <td>${item.name}</td>
        <td id="price">${item.discountedPrice}</td>
        <td>
            <div class="input-group">
                <button class="btn btn-outline-primary" type="button" id="decrease">-</button>
                <input type="text" class="form-control" placeholder="" value="1" min="1" id="counterInput">
                <button class="btn btn-outline-primary" type="button" id="increase">+</button>
            </div>
        </td>
        <td>${item.discountedPrice}</td>
        <td>
            <a href="${createLink(controller:'bill',action:'cancelItem',params:[id:itemList.indexOf(item)])}">
                <i class="bi bi-x"></i>
            </a>
        </td>
    </tr>
</g:each>