<jsp:useBean id="obj" class="br.com.unid3.Calc" />
<%
	int cubo = obj.cubo(5);
	out.print("Cubo de 5 é " + cubo);

%>