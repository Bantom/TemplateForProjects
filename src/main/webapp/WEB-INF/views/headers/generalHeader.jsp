<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>

    <c:when test="${pageContext.request.isUserInRole('ROLE_ADMIN')}">
        <jsp:include page="../headers/adminHeader.jsp">
            <jsp:param name="pageName" value="index"/>
        </jsp:include>
    </c:when>

    <c:when test="${pageContext.request.isUserInRole('ROLE_USER')}">
        <jsp:include page="../headers/userHeader.jsp">
            <jsp:param name="pageName" value="index"/>
        </jsp:include>
    </c:when>

    <c:otherwise>
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
                        <c:when test="${param.pageName == 'login'}">
                            <li class="active nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/login">Login</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/login">Login</a></li>
                        </c:otherwise>
                    </c:choose>
                    <c:choose>
                        <c:when test="${param.pageName == 'registration'}">
                            <li class="active nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/registration">Registration</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/registration">Registration</a></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </nav>
    </c:otherwise>
</c:choose>
