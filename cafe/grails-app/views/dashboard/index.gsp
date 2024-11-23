<!doctype html>
<html>
<head>
    <title>Dashboard</title>
    <meta name="layout" content="main">
</head>
<body>
    <div class="container  text-center mt-5">
        <g:render template="/Shared/message"/>
        <div class="row row-cols-1 row-cols-md-4 g-4">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body ">
                        <h5 class="card-title">Categories</h5>
                        <p class="card-text">${categories}</p>
                        <a href="/category" class="btn btn-primary">View categories</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Items</h5>
                        <p class="card-text">${items}</p>
                        <a href="/item" class="btn btn-primary">View items</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Users</h5>
                        <p class="card-text">${users}</p>
                        <a href="/employee" class="btn btn-primary">View users</a>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body">
                        <h5 class="card-title">Roles</h5>
                        <p class="card-text">${roles}</p>
                        <a href="/role" class="btn btn-primary">View roles</a>
                    </div>
                </div>
            </div>
        </div>
        <hr/>
        <div class="row">
            <div class="col w-50">
                    <canvas id="myChart"></canvas>
            </div>
            <div class="col w-50" style="max-width: 500px;">
                <canvas id="pieChart"></canvas>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script>
        // Bar Chart
        const ctx = document.getElementById('myChart');
        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['Category', 'Item', 'User', 'Role'],
                datasets: [{
                    label: 'Number of data',
                    data: [${categories}, ${items}, ${users}, ${roles}],
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 205, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 159, 64, 0.2)',
                        'rgba(201, 203, 207, 0.2)'
                    ],
                    borderColor: [
                        'rgb(255, 99, 132)',
                        'rgb(153, 102, 255)',
                        'rgb(255, 205, 86)',
                        'rgb(75, 192, 192)',
                        'rgb(54, 162, 235)',
                        'rgb(255, 159, 64)',
                        'rgb(201, 203, 207)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        %{--// Donut chart--}%
        %{--const categoryLabels = ${categoryNames};--}%
        %{--console.log(categoryLabels)--}%
        %{--const pie = document.getElementById('pieChart');--}%
        %{--new Chart(pie, {--}%
        %{--    type: 'doughnut',--}%
        %{--    data: {--}%
        %{--        labels: categoryLabels,--}%
        %{--        datasets: [{--}%
        %{--            label: 'Category items count',--}%
        %{--            data: ['20','30'],--}%
        %{--            backgroundColor: [--}%
        %{--                'rgb(255, 99, 132)',--}%
        %{--                'rgb(54, 162, 235)'--}%
        %{--            ],--}%
        %{--            hoverOffset: 4--}%
        %{--        }]--}%
        %{--    },--}%
        %{--});--}%
    </script>
</body>
</html>
