<html>
<head>
    <jsp:include page="../generalElements/head.jsp">
        <jsp:param name="tittle" value="Error"/>
    </jsp:include>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"></nav>

    <div class="container">
        <div class="position-center">
            <h2>Something goes wrong!</h2>
            <a href="<%=request.getContextPath()%>/">Go to main page</a>
        </div>
    </div>

    <footer>
        <div class="navbar navbar-expand-lg navbar-dark bg-dark fixed-bottom">
            <div id="footer">(c) 2017 Bulgakov Anton. All Rights Reserved.</div>
        </div>
    </footer>
</body>
</html>
