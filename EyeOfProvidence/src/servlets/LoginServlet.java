package servlets;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInput;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 

import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 














import org.apache.log4j.Logger;

import connect.Camera;
import connect.User;
 
 
@WebServlet(name = "Login", urlPatterns = { "/Login" })
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    static Logger logger = Logger.getLogger(LoginServlet.class);
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String errorMsg = null;
        
        if(email == null || email.equals(""))
        {
            errorMsg ="User Email can't be null or empty";
        }
        
        if(password == null || password.equals("")){
            errorMsg = "Password can't be null or empty";
        }
         
        if(errorMsg != null)
        {
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
            PrintWriter out = response.getWriter();
            //out.println("<font color=red>"+errorMsg+"</font>");
            rd.include(request, response);
        }
        else
        {
         
        	Connection con = (Connection) getServletContext().getAttribute("DBConnection");
        	PreparedStatement ps = null;
        	ResultSet rs = null;
        	try 
        	{
        		ps = con.prepareStatement("select id, name, email,country from Users where email=? and password=? limit 1");
        		ps.setString(1, email);
        		ps.setString(2, password);
        		rs = ps.executeQuery();
             
        		if(rs != null && rs.next())
        		{
        			User user = new User(rs.getString("name"), rs.getString("email"), rs.getString("country"), rs.getInt("id"));
        			logger.info("User found with details=" + user);
        			HttpSession session = request.getSession();
        			session.setAttribute("User", user);
        			
        			String userFolder = user.getEmail();
        			System.out.println(userFolder);
        			
        			File uPath = new File( getServletContext().getRealPath("/") + "/" + userFolder + "/" );
        			session.setAttribute("File", uPath);
        			
        			System.out.println(uPath);
        			
        			if ( !uPath.exists() )  
        			{  
        				boolean status = uPath.mkdirs();  
        			}
        			
        			File camPath = new File(uPath + "cameras.ser");
        			
        			// Read camera objects from file.
        			if( camPath.exists() )
        			{
        				try(
        					      InputStream file = new FileInputStream("cameras.ser");
        					      InputStream buffer = new BufferedInputStream(file);
        					      ObjectInput input = new ObjectInputStream (buffer);
        				)
        				{
        					@SuppressWarnings("unchecked")
							ArrayList<Camera> recoveredCameras = (ArrayList<Camera>) input.readObject();
        					user.setCameras( recoveredCameras );
        				}
        				catch( ClassNotFoundException ex )
        				{
        					System.out.println(ex);
        				}
        				catch( IOException ex )
        				{
        					System.out.println(ex);
        				}
        			}
        			response.sendRedirect("home.jsp");
        		}
        		else
        		{
        			RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.html");
        			PrintWriter out= response.getWriter();
        			logger.error("User not found with email="+email);
        			//out.println("<font color=red>No user found with given email id, please register first.</font>");
        			response.sendRedirect("loginError.html");
        			rd.include(request, response);
        		}
        	} 
        	catch (SQLException e) 
        	{
        		e.printStackTrace();
        		logger.error("Database connection problem");
        		throw new ServletException("DB Connection problem.");
        	}
        	finally
        	{
        		try 
        		{
        			rs.close();
        			ps.close();
        		} 
        		catch (SQLException e) 
        		{
        			logger.error("SQLException in closing PreparedStatement or ResultSet");;
        		}
        	}
        }
    }
}
 