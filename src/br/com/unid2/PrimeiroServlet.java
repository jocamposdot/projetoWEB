package br.com.unid2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PrimeiroServlet")
public class PrimeiroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PrimeiroServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Servlet</TITLE></HEAD>");
		out.println("<BODY>");
		out.print("Esta � a ");
		out.print(this.getClass());
		out.println(" usando o m�todo GET");
		out.println(" </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
