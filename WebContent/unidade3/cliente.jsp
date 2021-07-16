<jsp:useBean id="cliente" class="br.com.unid3.Cliente" />
<%
	cliente.setCpf(123);
	cliente.setNome("John");
	cliente.setEmail("testjohn@gmail.com");
	request.setAttribute("cliente", cliente);
%>
<h3>Cpf:${cliente.cpf}</h3>
<h3>Nome:${cliente.nome}</h3>
<h3>Email:${cliente.email}</h3>