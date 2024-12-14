<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Impiegato Details</title>
</head>
<body>

<h2>Impiegato Details</h2>
<% if (request.getAttribute("impiegato") != null) { %>
    <p>Matricola: ${impiegato.matricola}</p>
    <p>Nome: ${impiegato.nome}</p>
    <p>Cognome: ${impiegato.cognome}</p>
<% }  %>
<a href="${pageContext.request.contextPath}/home">Torna Alla Home</a>

</body>
</html>
