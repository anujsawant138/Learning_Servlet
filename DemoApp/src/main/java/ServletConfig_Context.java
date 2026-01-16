import javax.servlet.http.HttpServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/home")
public class ServletConfig_Context extends HttpServlet{
public void doGet(HttpServletRequest req , HttpServletResponse res)  throws IOException, ServletException
{
	PrintWriter out = res.getWriter();
	out.println("<h1>Hello</h1>");
	
	ServletContext ctx= getServletContext();
	ServletConfig ctg= getServletConfig();
	out.println(ctg.getInitParameter("name")+"<br>");
	out.println(ctx.getInitParameter("Phone"));
}
}