<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>P�gina de Login</title>
<link rel="stylesheet" type="text/css" href="lib/css/estilo.css">
</head>
<body>
	<form name="form" action="http://localhost:8080/4Disciplina/unidade3/autenticacao.jsp" method="post">
		CPF: <br/>
		<input type="text" name="cpf" pattern="\d{3}\.\d{3}\.\d{3}\-\d{2}\" maxlength="14" 
		title="Digite o CPF no formato: XXX.XXX.XXX-XX" required/> <br/>
		SENHA: <br/>
		<input type="password" name="senha" title="Preencha o campo Senha" required/> <br/>
		<input type="submit" value="Entrar"/>
	</form>
		<p>${mensagem}</p>
</body>
</html>