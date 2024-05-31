<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <g:layoutHead/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <asset:stylesheet href="main.css" />

</head>
<body>
    <div class="container-fluid text-center">
        <div class="row">
            <div class="col-sm-2 border sidebar">
               <h2><b><a href="/">
                   <i class="bi bi-cup-hot-fill me-2"></i>
                   CAFE
               </a></b></h2>
                <hr/>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'dashboard' ? 'active' : ''}" href="/dashboard">
                            <i class="bi bi-graph-up me-2"></i>
                            Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'employee' ? 'active' : ''}" href="/employee">
                            <i class="bi bi-people-fill me-2"></i>
                            Employee
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'role' ? 'active' : ''}" href="/role">
                            <i class="bi bi-person-vcard-fill me-2"></i>
                            Role
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'category' ? 'active' : ''}" href="/category">
                            <i class="bi bi-basket me-2"></i>
                            Category
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'item' ? 'active' : ''}" href="/item">
                            <i class="bi bi-cart-dash me-2"></i>
                            Item
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link ${controllerName == 'bill' ? 'active' : ''}" href="/bill">
                            <i class="bi bi-receipt me-2"></i>
                            Bill
                        </a>
                    </li>
                </ul>
                <div class="sidebar-footer">
                    <g:if test="${!session.user}">
                        <a href="${createLink(controller: 'login', action: 'auth')}">Login</a>
                    </g:if>
                    <g:if test="${session.user}">
                        <a href="${createLink(controller: 'logout', action: 'index')}">Logout</a>
                    </g:if>
                </div>
            </div>
            <div class="col-10">
                <g:layoutBody/>
            </div>
        </div>
    </div>
<script>

</script>
</body>
</html>
