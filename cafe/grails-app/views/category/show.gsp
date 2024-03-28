<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
    <div id="content" role="main">
        <div class="container">
            <section class="row">
                <h1 style="text-align: center">Category List - (${category.size()})</h1>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>

                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${category}" var="temp">
                    <tr>
                            <th scope="row">${temp.id}</th>
                            <td>${temp.name}</td>
                            <td>${temp.description}</td>
                    </tr>
                    </g:each>
                    </tbody>
                </table>
            </section>
        </div>
    </div>
    </body>
</html>
