<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:forEach var="discovery" items="${requestScope.discoveries}">
    <article class="discovery">
        <h2 class="discovery-header"><c:out value="${discovery.title}"/></h2>
        <p class="discovery-details">Dodane przez: Mietek, ${discovery.dateAdded.format(DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm"))}</p>
        <a href="<c:out value='${discovery.url}'/>" target="_blank" class="discovery-link"><c:out value="${discovery.url}"/></a>
        <p><c:out value="${discovery.description}"/></p>
        <section class="discovery-bar">
            <a href="#" class="discovery-link upvote">
                <i class="fas fa-arrow-alt-circle-up discovery-upvote"></i>
            </a>
            <p class="discovery-votes">32</p>
            <a href="#" class="discovery-link downvote">
                <i class="fas fa-arrow-alt-circle-down discovery-downvote"></i>
            </a>
            <a href="#" class="discovery-link discovery-like">
                <i class="far fa-star"></i>
                Dodaj do ulubionych
            </a>
        </section>
    </article>
</c:forEach>
