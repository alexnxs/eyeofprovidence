package connect;

import java.io.Serializable;

public class Camera implements Serializable
{
	private static final long serialVersionUID = 6297385302078200511L;
	
	private String ip;
	private String port;
	private String protocol;
	private String name;
	private String description;
	private String type;
	private String path;
	
	public Camera( String nm, String i, String prt, String desc, String proto, String tp, String pth )
	{
		this.name = nm;
		this.ip = i;
		this.port = prt;
		this.description = desc;
		this.protocol = proto;
		this.type = tp;
		this.path = pth;
	}
	
	public String getIp() 
	{
		return ip;
	}
	public void setIp(String ip) 
	{
		this.ip = ip;
	}
	public String getPort() 
	{
		return port;
	}
	public void setPort(String port) 
	{
		this.port = port;
	}
	public String getProtocol() 
	{
		return protocol;
	}
	public void setProtocol(String protocol) 
	{
		this.protocol = protocol;
	}
	public String getDescription() 
	{
		return description;
	}
	public void setDescription(String description) 
	{
		this.description = description;
	}
	public String getName() 
	{
		return name;
	}
	public void setName(String name) 
	{
		this.name = name;
	}
	public String getType() 
	{
		return type;
	}
	public void setType(String type) 
	{
		this.type = type;
	}
	public String getPath() 
	{
		return path;
	}
	public void setPath(String path) 
	{
		this.path = path;
	}
	
	
}
