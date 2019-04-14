<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin - strona główna</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">Operacje administracyjne</div>
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <div><a href="./addarticle">Dodaj nowy artykuł</a></div>
                    <div><a href="./articlesearch">Wyszukaj artykuły</a></div>
                    <div><a href="./articlelist">Lista artykułów</a></div>
                </div>
                <div class="col">
                    <div><a href="./addbinder">Dodaj nowy segregator</a></div>
                    <div><a href="./bindersearch">Wyszukaj segregatory</a></div>
                    <div><a href="./binderlist">Lista segregatorów</a></div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button onclick="location.href='/home'" type="button" class="btn-outline-primary">Strona główna</button>
    </div>
</div>
</body>
</html>
