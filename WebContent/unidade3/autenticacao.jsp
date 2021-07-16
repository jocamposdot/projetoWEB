<jsp:directive.page import="java.sql.*" />
<jsp:declaration>
	static String url = "jdbc:oracle:thin:@localhost:1521:XE";
	static String usuario = "SYSTEM";
	static String senha = "root";
	static Connection conexao;
	
	public void init() throws ServletException {
		try {
	    	Class.forName("oracle.jdbc.driver.OracleDriver");
	    	conexao = DriverManager.getConnection(url,usuario,senha);
	    	conexao.setAutoCommit(false);
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
</jsp:declaration>

<jsp:scriptlet>
		String cpfmascara = request.getParameter("cpf");
		cpfmascara = cpfmascara.replaceAll("[.-]", "");
		long cpf = Long.parseLong(cpfmascara);
		String senha = request.getParameter("senha");
		String consulta = "SELECT * FROM Login where cpf ='" + cpf + "' and senha ='" + senha + "'";
		Statement statement;
		
		try {
			statement = (Statement) conexao.createStatement();
			ResultSet rs = ((java.sql.Statement) statement).executeQuery(consulta);
			if(rs.next()) { 
				session.setAttribute("mensagem", "Usuário Autenticado!");
				response.sendRedirect("sucesso.jsp");
			
			} else {
				session.setAttribute("mensagem", "Usuário Não Autenticado!");
				response.sendRedirect("login.jsp");
			
			}
		
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
</jsp:scriptlet>