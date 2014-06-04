package servlets;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connect.User;

/**
 * Servlet implementation class ConfigurationServlet
 */
public class ConfigurationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfigurationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		User user = (User) request.getSession().getAttribute("user");
		Map parameters = request.getParameterMap();
		System.out.println(parameters);
		 	
		
		if( parameters.containsKey("changePassword") )
		{
			//TODO
		}
		else if( parameters.containsKey("addCamera[]") )
		{
			//TODO
		}
		else if( parameters.containsKey("removeCamera[]") )
		{
			//TODO
		}
		else if( parameters.containsKey("modifyCamera[]") )
		{
			//TODO
		}
		else
		{
			System.out.println( "Something went wrong. Parameters: " + parameters.toString() );
		} 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
