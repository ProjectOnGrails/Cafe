<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Cafe</title>
</head>
<body>
<content tag="nav">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item">
                <g:link controller="category" action="show">View Category</g:link>
            </li>
            <li class="dropdown-item">
                <g:link controller="category" action="create">Create Category</g:link>
            </li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Items <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="dropdown-item"><a href="#">View Items</a></li>
            <li class="dropdown-item"><a href="#">Create Items</a></li>
        </ul>
    </li>
</content>



<div id="content" role="main">
    <div class="container">
        <section class="row colset-2-its">
            <h1>Welcome to Grails</h1>
            <div id="controllers" role="navigation">
                <h2>Available Controllers:</h2>
                <ul>
                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                        <li class="controller">
                            <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>
                        </li>
                    </g:each>
                </ul>
            </div>
        </section>
    </div>
</div>

</body>
</html>
