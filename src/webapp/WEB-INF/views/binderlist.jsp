<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista segregatorów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <h2 class="card-header">Lista segregatorów:</h2>
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Nazwa segregatora</th>
                </tr>
                <c:forEach items="${binders}" var="binder">
                    <tr>
                        <td>${binder.name}</td>
                    </tr>
                </c:forEach>
            </table>


            <div>
                <button onclick="location.href='./bindersearch'" type="button" class="btn-outline-primary">Powrót do
                    wyszukiwania
                </button>
            </div>
            <div>
                <button onclick="location.href='/home'" type="button" class="btn-outline-primary">Strona główna</button>
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>
