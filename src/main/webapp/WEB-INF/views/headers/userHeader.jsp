<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto" id="nav-menu">

            <c:choose>
                <c:when test="${param.pageName == 'index'}">
                    <li class="active nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/">Main</a></li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/">Main</a></li>
                </c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${param.pageName == 'profile'}">
                    <li class="active nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/user/profile">Profile</a></li>
                </c:when>
                <c:otherwise>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/user/profile">Profile</a></li>
                </c:otherwise>
            </c:choose>

            <li class="nav-item"><a class="nav-link" href="<c:url value="/logout" />" >Logout</a></li>
        </ul>
    </div>
</nav>
