<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Find Impiegato</title>
</head>
<body>

<h2>Find Impiegato by Matricola</h2>
<form:form modelAttribute="impiegato" action="${pageContext.request.contextPath}/impiegato/findImpiegatoById" method="get">
    <form:label path="matricola">Matricola:</form:label>
    <form:input path="matricola" />
    <input type="submit" value="Find" />
</form:form>

</body>
</html>
