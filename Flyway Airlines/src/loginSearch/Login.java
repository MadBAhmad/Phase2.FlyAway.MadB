package loginSearch;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.*;

public class Login extends HttpServlet {
	public static boolean isLoggedIn = false;
	public static String password = "Admin";
	public static String email = "admin@Fly.com";
	
	 @Override
	    public void doPost (HttpServletRequest req, HttpServletResponse resp) throws IOException {
	        PrintWriter out = resp.getWriter();

	        String email = req.getParameter("emailEntered");
	        String pass = req.getParameter("passwordEntered");

	        if (email.equals(Login.email) && pass.equals(Login.password)){
	            isLoggedIn = true;
	            out.println("You have LoggedIn");
			resp.sendRedirect("Admin-Dash.jsp");
		}
		else{
			isLoggedIn=false;
			out.println("Incorrect Login Credentials");
		}
		out.close();
	}

}
