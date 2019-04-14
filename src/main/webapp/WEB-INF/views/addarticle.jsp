<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodawanie artykułu</title>
    <link href="/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="card">
        <h2 class="card-header">Nowy artykuł:</h2>
        <div class="card-body">
            <form:form method="post" modelAttribute="article">

                <div><label for="titleId">Tytuł:</label>
                    <form:input type="text" path="title" id="titleId"></form:input>
                    <form:errors path="title" element="div">Pole nie może być puste</form:errors></div>

                <div><label for="authorId">Autor:</label>
                    <form:input type="text" path="author" id="authorId"></form:input>
                    <form:errors path="author" element="div"></form:errors></div>

                <div><label for="binderId">Segregator:</label>
                    <form:select path="binder.id" items="${binders}" id="binderId" itemLabel="name"
                                 itemValue="id"></form:select>
                    <form:errors path="binder" element="div"></form:errors></div>

                <div><label for="publishedDateId">Data opublikowania:</label>
                    <form:input type="date" path="publishedDate" id="publishedDateId"></form:input>
                    <form:errors path="publishedDate" element="div"></form:errors></div>

                <div><label for="publicationId">Opublikowany w:</label>
                    <form:input type="text" path="publication" id="publicationId"></form:input>
                    <form:errors path="publication" element="div"></form:errors></div>

                <div><label for="numberId">Numer:</label>
                    <form:input type="number" path="number" id="numberId"></form:input>
                    <form:errors path="number" element="div">Numer nie może być ujemny</form:errors></div>

                <div><label for="tagId">Tematyka:</label>
                    <form:input type="text" path="tag" id="tagId"></form:input>
                    <form:errors path="tag" element="div"></form:errors></div>

                <div><label for="contentWarningId">Ostrzeżenie o zawartości:</label>
                    <form:checkbox path="contentWarning" id="contentWarningId"></form:checkbox>
                    <form:errors path="contentWarning" element="div"></form:errors></div>

                <div><label for="hasScanId">Dołączony skan:</label>
                    <form:checkbox path="hasScan" id="hasScanId"></form:checkbox>
                    <form:errors path="hasScan" element="div"></form:errors></div>

                <div><label for="pdfPathId">Nazwa skanu pdf</label>
                    <form:input type="text" path="pdfPath" id="pdfPathId"></form:input>
                    <form:errors path="pdfPath" element="div">Pole musi zawierać nazwę pliku pdf lub być puste</form:errors></div>

                <div><input type="submit" class="btn-sm" value="Zapisz"></div>

            </form:form>
        </div>
    </div>
    <div>
        <button onclick="location.href='http://localhost:8080/admin/home'" type="button" class="btn-outline-primary">Strona główna</button>
    </div>
</div>
</body>
</html>
