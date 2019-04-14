<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie segregatora</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <h2 class="card-header">Nowy segregator:</h2>
        <div class="card-body">
            <form:form method="post" modelAttribute="binder">
                <div><label for="nameId">Nazwa:</label>
                    <form:input path="name" id="nameId"></form:input>
                    <form:errors path="name" element="div">Pole nie może być puste</form:errors></div>

                <input type="submit" class="btn-sm" value="Zapisz">
            </form:form>
        </div>
    </div>
    <div>
        <button onclick="location.href='http://localhost:8080/admin/home'" type="button" class="btn-outline-primary">Strona główna</button>
    </div>
</div>
</body>
</html>
