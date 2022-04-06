<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>  

<html>
<head>
    <spring:url value="/resources" var="urlPublic"/>   
</head>
<body>
<h2>Hello World!</h2>
<h2> <c:out value="${msg}" /></h2>
<h3> static path :</h3>
</body>
</html>