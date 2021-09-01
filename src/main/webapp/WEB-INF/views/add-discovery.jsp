<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Zarejestruj się - ReadStack</title>
    <%@ include file="../segments/stylesheets.jsp" %>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/styles/add-discovery-form.css">
</head>
<body>
<div class="container">
    <%@ include file="../segments/header.jsp" %>

    <form action="#" method="post" class="discovery-form">
        <h2 class="discovery-form-title">Dodaj nowe znalezisko</h2>
        <input name="title" placeholder="Tytuł" required>
        <input name="url" placeholder="URL" type="url" required>
        <select>
            <option>Biznes</option>
            <option>Rozrywka</option>
            <option>Polityka</option>
        </select>
        <textarea name="description" placeholder="Opis"></textarea>
        <button class="discovery-form-button">Dodaj</button>
    </form>

    <%@ include file="../segments/footer.jsp" %>
</div>
</body>
</html>