<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../generalElements/head.jsp">
        <jsp:param name="tittle" value="Profile"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="../headers/adminHeader.jsp">
        <jsp:param name="pagename" value="Profile"/>
    </jsp:include>

    <div class="container">
        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <br>
            <br>
            <h2 class="position-center">Admin Page ${pageContext.request.userPrincipal.name}</h2>
        </c:if>
    </div>

    <jsp:include page="../generalElements/footer.jsp"/>
</body>
</html>