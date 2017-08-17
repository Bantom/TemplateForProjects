<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../generalElements/head.jsp">
        <jsp:param name="tittle" value="Main"/>
    </jsp:include>
</head>
<body>
    <jsp:include page="../headers/generalHeader.jsp">
        <jsp:param name="pageName" value="index"/>
    </jsp:include>


    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h1 class="mt-5">Spring Template</h1>
                <p class="lead">Complete with pre-defined file paths and responsive navigation!</p>
            </div>
        </div>
    </div>

    <jsp:include page="../generalElements/footer.jsp"/>
</body>
</html>
