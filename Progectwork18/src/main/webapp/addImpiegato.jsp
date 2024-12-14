<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Impiegato</title>
</head>
<body>

<h2>Add New Impiegato</h2>
<form:form modelAttribute="impiegato" action="${pageContext.request.contextPath}/impiegato/saveImpiegato" method="post">
    <table>
        <tr>
            <td>Matricola:</td>
            <td><form:input path="matricola" /></td>
        </tr>
        <tr>
            <td>Nome:</td>
            <td><form:input path="nome" /></td>
        </tr>
        <tr>
            <td>Cognome:</td>
            <td><form:input path="cognome" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit" /></td>
        </tr>
    </table>
</form:form>

</body>
</html>
