<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista artykułów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function confirmDelete(id, name) {
            if (confirm("Czy chesz usunąć artykuł o id " + id + ": \"" + name + "\"?")) {
                window.location.href = "deletearticle/" + id;
            }
        }
    </script>
</head>
<body>
<div class="container-fluid">
    <div class="card">
        <h2 class="card-header">Lista artykułów:</h2>
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>AKCJE</th>
                    <th>ID</th>
                    <th>TYTUŁ</th>
                    <th style="word-break:break-word;">AUTOR/AUTORKA</th>
                    <th>SEGREGATOR</th>
                    <th>DATA</th>
                    <th>PUBLIKACJA</th>
                    <th>NUMER</th>
                    <th>TEMATYKA</th>
                    <th>OSTRZEŻENIE</th>
                    <th>SKAN</th>
                    <th>ŚCIEŻKA</th>
                </tr>
                <c:forEach items="${articles}" var="article">
                    <tr>
                        <td>
                            <a href="/admin/updatearticle/${article.id}"><span class="glyphicon glyphicon-edit"></span></a>
                            <a href="#" onclick="confirmDelete(${article.id}, '${article.title}')"><span
                                    class="glyphicon glyphicon-trash"></span></a>
                        </td>
                        <td>${article.id}</td>
                        <td>${article.title}</td>
                        <td>${article.author}</td>
                        <td>${article.binder.name}</td>
                        <td>${article.publishedDate}</td>
                        <td>${article.publication}</td>
                        <td>${article.number}</td>
                        <td>${article.tag}</td>
                        <c:choose>
                            <c:when test="${article.contentWarning == true}">
                                <td class="table-warning">uwaga</td>
                            </c:when>
                            <c:otherwise>
                                <td></td>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${article.hasScan == true}">
                                <td>tak</td>
                            </c:when>
                            <c:otherwise>
                                <td>nie</td>
                            </c:otherwise>
                        </c:choose>
                        <c:if test="${article.hasScan == true}">
                            <td><a href="/scans/${article.pdfPath}">link</a></td>
                        </c:if>
                    </tr>
                </c:forEach>
            </table>
            <div>
                <button onclick="location.href='./articlesearch'" type="button" class="btn-outline-primary">Powrót do
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
</body>
</html>
