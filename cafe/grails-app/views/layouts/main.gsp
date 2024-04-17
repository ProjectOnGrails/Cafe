<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
    .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
    }

    @media (min-width: 768px) {
        .bd-placeholder-img-lg {
            font-size: 3.5rem;
        }
    }

    .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
    }

    .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
    }

    .bi {
        vertical-align: -.125em;
        fill: currentColor;
    }

    .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
    }

    .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
    }

    .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;

        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
    }

    .bd-mode-toggle {
        z-index: 1500;
    }

    .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
    }
    </style>
    <g:layoutHead/>
</head>
<body>
<main class="d-flex flex-nowrap">
    <div class="d-flex flex-column flex-shrink-0 p-3 text-bg-dark bg-dark" style="width: 280px;">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <i class="bi bi-cup-hot-fill" style="font-size: 32px; margin-right: 16px;"></i>
            <span class="fs-5">Cafe</span>
        </a>
        <br>
        <hr color="white">
        <br>
        <ul class="nav nav-pills flex-column mb-auto ">
            <li class="nav-item">
                <a href="/" class="nav-link active" aria-current="page">
                    <i class="bi bi-house-door-fill" style="font-size: 16px; margin-right: 8px;"></i>
                    Home
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="bi bi-graph-up" style="font-size: 16px; margin-right: 8px;"></i>
                    Dashboard
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="bi bi-cart4" style="font-size: 16px; margin-right: 8px;"></i>
                    Orders
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="bi bi-person-vcard" style="font-size: 16px; margin-right: 8px;"></i>
                    Role
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <i class="bi bi-people-fill" style="font-size: 16px; margin-right: 8px;"></i>
                    Employee
                </a>
            </li>

<sec:ifNotLoggedIn>
    <hr color="white">
    <br>
    <li>
        <a href="/login/auth" class="nav-link text-white">
            <i class="bi bi-box-arrow-in-right" style="font-size: 16px; margin-right: 8px;"></i>
            Login
        </a>
    </li>
</sec:ifNotLoggedIn>
        </ul>
        <hr>
        <sec:ifLoggedIn>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="bi bi-person-circle" style="font-size: 32px;margin-right: 8px;"></i>
                    <strong>Hello <sec:username/>!</strong>
                </a>
                <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                    <li><a class="dropdown-item" href="#">New project...</a></li>
                    <li><a class="dropdown-item" href="#">Settings</a></li>
                    <li><a class="dropdown-item" href="#">Profile</a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="#">Sign out</a></li>
                </ul>
            </div>
        </sec:ifLoggedIn>
        <sec:ifNotLoggedIn>
            <div class="">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none">
            <i class="bi bi-person-circle" style="font-size: 32px;margin-right: 8px;"></i>
            <strong>Hello Anonymous!</strong>
                </a>
            </div>
        </sec:ifNotLoggedIn>

    </div>
    <g:layoutBody/>
</main>

<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
