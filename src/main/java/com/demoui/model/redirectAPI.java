package com.demoui.model;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "redirectapi")

public class redirectAPI implements java.io.Serializable{
	
	
	
	
	
	private static final long serialVersionUID = 1L;
	private int id; 
	  private String domain; 
	  private String apiName; 
	  private String lastHeartbeat; 
	  private String apiStatus; 

	  public int getId(){
	  	return id; 
	  }
	  public void setId(int input){
	  	 this.id = input;
	  }
	  public String getDomain(){
	  	return domain; 
	  }
	  public void setDomain(String input){
	  	 this.domain = input;
	  }
	  public String getApiName(){
	  	return apiName; 
	  }
	  public void setApiName(String input){
	  	 this.apiName = input;
	  }
	  public String getLastHeartbeat(){
	  	return lastHeartbeat; 
	  }
	  public void setLastHeartbeat(String input){
	  	 this.lastHeartbeat = input;
	  }
	  public String getApiStatus(){
	  	return apiStatus; 
	  }
	  public void setApiStatus(String input){
	  	 this.apiStatus = input;
	  }
	
	
	public redirectAPI(int strid, String domain, String apiName, String lastHeartbeat, String apiStatus) {
		super();
		this.id = strid;
		this.domain = domain;
		this.apiName = apiName;
		this.lastHeartbeat = lastHeartbeat;
		this.apiStatus = apiStatus;
	}
	
	public redirectAPI(){
		
	}
	
	
}
