package servlets;

import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author Alexander Harris
 */

/**
 * Servlet implementation class DownloadServlet
 */
public class DownloadServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	
    public DownloadServlet() 
    {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    
	@SuppressWarnings("unused")
	@Override
	protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException 
	{
	    //retrieving the parameter by its name
	    String fileName = request.getParameter( "fileName" ); //this will return
	    String filePath = getServletContext().getRealPath( "/" );
	    
	    //using the File(parent, child) constructor for File class
	    File file = new File( filePath, fileName );

	    //verify if the file exists
	    if ( file.exists() ) 
	    {
	        ServletOutputStream outStream = response.getOutputStream();
	        ServletContext context  = getServletConfig().getServletContext();
	        
	        // sets response content type
	        response.setContentLength( ( int ) file.length() );
	        response.setContentType( "application/x-download" );
	        response.setHeader( "Content-disposition", "attachment; filename=" + fileName );
	        int length = 0;
	        
	        byte[] byteBuffer = new byte[1024];
	        DataInputStream in = new DataInputStream( new FileInputStream(file) );

	        // reads the file's bytes and writes them to the response stream
	        while ( (in != null ) && ( ( length = in.read( byteBuffer) ) != -1) )
	        {
	            outStream.write( byteBuffer, 0, length );
	        }

	        in.close();
	        outStream.flush();
	        outStream.close();
	    } 
	    else 
	    {
	        System.out.println("File doesn't exist");
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
	}
}