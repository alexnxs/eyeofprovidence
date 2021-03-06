package connect;

import java.io.Serializable;
import java.util.ArrayList;

public class User implements Serializable
{
	
	private static final long serialVersionUID = 6297385302078200511L;
	
	private String name;
	private String email;
	private int id;
	private String country;
	private ArrayList<Camera> cameras;
	
	public User( String nm, String em, String country, int i )
	{
		this.name = nm;
		this.id = i;
		this.country = country;
		this.email = em;
		this.cameras = new ArrayList<Camera>();
	}

	public void setName( String name ) 
	{
		this.name = name;
	}

	public void setEmail( String email ) 
	{
		this.email = email;
	}

	public void setId(int id) 
	{
		this.id = id;
	}

	public void setCountry( String country ) 
	{
		this.country = country;
	}

	public String getName() 
	{
		return name;
	}

	public String getEmail() 
	{
		return email;
	}

	public int getId() 
	{
		return id;
	}

	public String getCountry() 
	{
		return country;
	}
	
	@Override
	public String toString()
	{
		return "Name=" + this.name + ", Email=" + this.email+ ", Country=" + this.country;
	}
	
	public ArrayList<Camera> getCameras()
	{
		return cameras;
	}
	
	public void setCameras( ArrayList<Camera> cams )
	{
		this.cameras = cams;
	}
	
	public void addCamera( Camera cam )
	{
		this.cameras.add( cam );
	}
	
	public void removeCamera( Camera cam )
	{
		this.cameras.remove( cam );
	}
}
