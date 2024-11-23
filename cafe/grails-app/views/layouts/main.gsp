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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
    .nav-link.active {
        color: white !important; /* Text color when active */
    }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-auto min-vh-100 border">
                <div class="pt-4 pb-1 px-2">
                    <a href="/" class="text-decoration-none">
                        <i class="bi bi-cup-hot-fill h3 me-2"></i>
                        <h3 class="fs-4 d-none d-sm-inline">
                            <b>
                                Cafe
                            </b>
                        </h3>
                    </a>
                </div>
                <hr/>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a href="/dashboard" class="nav-link text-dark ${controllerName == 'dashboard' ? 'active' : ''}">
                            <i class="bi bi-graph-up me-2"></i>
                            <span class="d-none d-sm-inline">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/employee" class="nav-link text-dark ${controllerName == 'employee' ? 'active' : ''}">
                            <i class="bi bi-people-fill me-2"></i>
                            <span class="d-none d-sm-inline">Employee</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/role" class="nav-link text-dark ${controllerName == 'role' ? 'active' : ''}">
                            <i class="bi bi-person-vcard-fill me-2"></i>
                            <span class="d-none d-sm-inline">Role</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/category" class="nav-link text-dark ${controllerName == 'category' ? 'active' : ''}">
                            <i class="bi bi-basket me-2"></i>
                            <span class="d-none d-sm-inline">Category</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/item" class="nav-link text-dark ${controllerName == 'item' ? 'active' : ''}">
                            <i class="bi bi-cart-dash me-2"></i>
                            <span class="d-none d-sm-inline">Item</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/orderitem" class="nav-link text-dark ${controllerName == 'orderitem' ? 'active' : ''}">
                            <i class="bi bi-receipt me-2"></i>
                            <span class="d-none d-sm-inline">Bill</span>
                        </a>
                    </li>
                </ul>
                <ul class="nav nav-pills flex-column mt-auto">
                    <li class="nav-item">
                        <div class="sidebar-footer">
                            <sec:ifLoggedIn>
                                <div class="sidebar-bottom">
                                    <div class="username"><i class="fas fa-user"></i>
                                        <i class="bi bi-person-fill me-2"></i>
                                        <span class="d-none d-sm-inline"><sec:username/>!</span>
                                    </div>
                                    <g:link controller="logout" action="index">
                                        <i class="bi bi-box-arrow-right me-2"></i>
                                        <span class="d-none d-sm-inline">Logout</span>
                                    </g:link>
                                </div>
                            </sec:ifLoggedIn>
                            <sec:ifNotLoggedIn>
                                <a href="/login/auth">
                                    <i class="bi bi-person-fill"></i>
                                    <span class="d-none d-sm-inline">LogIn</span>
                                </a>
                            </sec:ifNotLoggedIn>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="col">
                <g:layoutBody/>
            </div>
        </div>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

<script>
    $(document).ready(function () {
        $('#myTable').DataTable();
    });
</script>
</body>
</html>
