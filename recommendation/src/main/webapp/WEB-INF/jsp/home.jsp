<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <jsp:include page="template-imports.jsp" />
    <title>Recommendation System</title>
</head>
<body>
    <jsp:include page="menu-template.jsp" />

    <p>Hello User of type: ${user.userCategory.userType} whose email is ${user.email}</p>

    <c:if test="${logout} != null" >
        &lt;%&ndash;TODO: ADD A CSS CLASS &ndash;%&gt;
        <p class="flash-message">Logged out: ${logout}</p>
    </c:if>

    <%--<% if(request.getAttribute("logout") != null) { %>--%>
        <%--<%= "Log out status: " + request.getAttribute("logout") %>--%>
        <%--<% request.removeAttribute("logout"); %>--%>
    <%--<% } %>--%>
    <div class="container-fluid">
        <div class="content">
            <p class="main-title">Featured Item</p>
            <img src="https://www.foxmovies.com/s3/dev-temp/en-US/__5baed4994fd08.jpg" alt="" class="img-responsive">
        </div>
    </div>

    <br><br>

    <div class="container container-fluid">
        <div class="row">

            <c:forEach var="movie" items="${movies}" >
                <div class="col-md-3 col-xs-6">
                    <img src="${movie.trailerPicture}" class="img-thumbnail trailer-image">
                    <div class="movie-description">
                        <p>${movie.title}</p>
                        <p><a href="/movie/${movie.id}" class="btn btn-default btn-sm">See Details</a></p>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>