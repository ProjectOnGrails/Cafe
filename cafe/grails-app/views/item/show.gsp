<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title>Items</title>
</head>
<body>
<g:render template="/grails-app/views/category/Shared/message"/>
<div id="content" role="main">
    <div class="container">
        <section class="row">
            <h1 style="text-align: center">Items List - (${item.size()})</h1>
            <div class="table-responsive">
                <table class="table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col" >Image</th>
                        <th scope="col" >Category</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${item}" var="temp">
                        <tr>
                            <th>${temp.id}</th>
                            <td>${temp.name}</td>
                            <td>${temp.price}</td>
                            <td>
                                <img src="${createLink(controller: 'item', action: 'getImage', id: temp.id)}" alt="Image" />
                            </td>
                            <td>${temp.category}</td>
                            <td>
                                <div>
                                    <g:link action="update" id="${temp.id}">
                                        <asset:image src="pencil.png" alt="Edit" width="30px" height="30px"/>
                                    </g:link>

                                    <g:link action="delete" id="${temp.id}" onclick="return confirm('Are you sure you want to delete this category?')">
                                        <asset:image src="bin.png" alt="Delete" width="30px" height="30px"/>
                                    </g:link>
                                </div>
                            </td>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
</div>
</body>
</html>
