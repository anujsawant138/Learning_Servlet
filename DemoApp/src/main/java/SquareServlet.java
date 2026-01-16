import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/square")
public class SquareServlet extends HttpServlet {
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException 
	{
		int num=0;
		Cookie [] cookie = req.getCookies();
		for(Cookie c : cookie)
		{
			if(c.getName().equals("k"))
			{
				num= Integer.parseInt(c.getValue());
			}
		}
		num=num*num;
		PrintWriter out = res.getWriter();
		out.println("<h1>The Square of Sum of Above Value is : "+num+"</h1>");
		
	  
	}
}
