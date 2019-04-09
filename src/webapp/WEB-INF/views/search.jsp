<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Wyszukiwanie artykułów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <div class="card-header">Kryteria wyszukiwania:</div>
        <div class="card-body">
            <form method="post">
                <input type="text" name="title">
                <input type="hidden" name="hiddenId" value="title">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj po tytule">
            </form>


            <form method="post">
                <input type="text" name="author">
                <input type="hidden" name="hiddenId" value="author">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj po autorze">
            </form>


            <form method="post">
                <input type="text" name="binder">
                <input type="hidden" name="hiddenId" value="binder">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj po segregatorze">
            </form>

            <form method="post">
                <input type="text" name="publication">
                <input type="hidden" name="hiddenId" value="publication">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj po publikacji">
            </form>


            <form method="post">
                <input type="text" name="tag">
                <input type="hidden" name="hiddenId" value="tag">
                <input type="submit" class="btn-sm btn-primary" value="Wyszukaj po tagu">
            </form>


        </div>
    </div>

    <div>
        <button onclick="location.href='./articlelist'" type="button" class="btn-outline-primary">Lista wszystkich
            artykułów
        </button>
    </div>
    <div>
        <button onclick="location.href='./home'" type="button" class="btn-outline-primary">Strona główna</button>
    </div>
</div>
</body>
</html>
