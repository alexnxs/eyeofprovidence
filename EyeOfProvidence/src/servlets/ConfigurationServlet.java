package servlets;

import java.io.File;
import java.io.IOException;
import java.util.Map;



import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.FileUtils;

import connect.Camera;
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
		User user = (User) request.getSession().getAttribute("User");
		Map<String, String[]> parameters = request.getParameterMap();
		System.out.println(user.getName());
		 	
		
		if( parameters.containsKey("changePassword") )
		{
			//TODO
		}
		else if( parameters.containsKey("addCamera[]") )
		{
			String[] t = ( String[] ) request.getParameterValues( "addCamera[]" );
			
			File camPath = new File(request.getSession().getAttribute("File") + "/" + t[0]); 
			
			Camera newCam = new Camera(t[0], t[1], t[2], t[3], t[4], t[5], camPath);
			
			user.addCamera(newCam);
			
			if(!camPath.exists())
			{
				camPath.mkdir();
			}
			
			// write arraylist to file.
			
			response.sendRedirect("configure.jsp");
			
		}
		else if( parameters.containsKey("removeCamera[]") )
		{
			String[] t = ( String[] ) request.getParameterValues( "removeCamera[]" );
			
			File camPath = new File(request.getAttribute("File") + "/" + t[0]);
			
			Camera newCam = new Camera(t[0], t[1], t[2], t[3], t[4], t[5], camPath);
			
			user.removeCamera(newCam);
			
			if(camPath.exists())
			{
				FileUtils.deleteDirectory(camPath);
			}
			
			response.sendRedirect("configure.jsp");
		}
		else if( parameters.containsKey("modifyCamera[]") )
		{
			//TODO: Addition Feature
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
