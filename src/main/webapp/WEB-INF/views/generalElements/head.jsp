<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<title>${param.title}</title>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet"/>
<link href="${contextPath}/resources/css/common.css" rel="stylesheet">
<link href="${contextPath}/resources/css/main.css" rel="stylesheet">