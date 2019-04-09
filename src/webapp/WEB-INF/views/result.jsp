<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lista artykułów</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="card">
        <h2 class="card-header">Lista artykułów:</h2>
        <div class="card-body">
            <table class="table table-hover">
                <tr>
                    <th>Tytuł</th>
                    <th>Autor/Autorka</th>
                    <th>Nazwa Segregatora</th>
                    <th>Data</th>
                    <th>Publikacja</th>
                    <th>Numer</th>
                    <th>Tematyka</th>
                    <th>Ostrzeżenie o zawartości</th>
                    <th>Dostępność skan</th>
                    <th>Odnośnik do skanu</th>
                </tr>
                <c:forEach items="${articles}" var="article">
                    <tr>
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
                <button onclick="location.href='/user/search'" type="button" class="btn-outline-primary">Powrót do
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
