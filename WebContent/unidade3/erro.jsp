<%@ page isErrorPage="true"%>
<html>
<head>
<title>P�gina de Erro</title>
</head>
<body>
	<pre>
<%
	exception.printStackTrace(response.getWriter());
%>
</pre>
</body>
</html>