<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista segregatorów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function confirmDelete(id, name) {
            if (confirm("Czy chesz usunąć segregator o id " + id + ": \"" + name + "\"?")) {
                window.location.href = "deletebinder/" + id;
            }
        }
    </script>
</head>
<body>
<div class="container">
    <div class="card">
        <h2 class="card-header">Lista segregatorów:</h2>
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th style="width: 5%">AKCJE</th>
                    <th style="width: 5%">ID</th>
                    <th>NAZWA</th>
                </tr>
                <c:forEach items="${binders}" var="binder">
                    <tr>
                        <td>
                            <a href="updatebinder/${binder.id}"><span class="glyphicon glyphicon-edit"></span></a>
                            <a href="#" onclick="confirmDelete(${binder.id}, '${binder.name}')"><span class="glyphicon glyphicon-trash"></span></a>
                        </td>
                        <td>${binder.id}</td>
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
                <button onclick="location.href='./home'" type="button" class="btn-outline-primary">Strona główna
                </button>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
