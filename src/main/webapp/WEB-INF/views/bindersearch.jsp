<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wyszukiwanie segregatorów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">Kryteria wyszukiwania:</div>
        <div class="card-body">
            <form method="post">
                <input type="text" name="name">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj nazwę">
            </form>
        </div>
    </div>

    <div>
        <button onclick="location.href='./binderlist'" type="button" class="btn-outline-primary">Lista wszystkich
            segregatorów
        </button>
    </div>
    <div>
        <button onclick="location.href='./home'" type="button" class="btn-outline-primary">Strona główna</button>
    </div>
</div>
</body>
</html>
