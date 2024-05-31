<g:each in="${itemList}" var="item">
    <tr>
        <td>${itemList.indexOf(item)}</td>
        <td>${item.name}</td>
        <td id="price">${item.discountedPrice}</td>
        <td>
            <input type="number" id="quantity" value="1"/>
        </td>
        <td>${item.discountedPrice}</td>
        <td>
            <a href="${createLink(controller:'bill',action:'cancelItem',params:[id:itemList.indexOf(item)])}">
                <i class="bi bi-x"></i>
            </a>
        </td>
    </tr>
</g:each>