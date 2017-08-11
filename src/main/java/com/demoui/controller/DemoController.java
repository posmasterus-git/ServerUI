package com.demoui.controller;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.demoui.model.redirectAPI;

@Controller

public class DemoController {
	

	 
	/*
	 * author: Crunchify.com
	 * 
	 */
public List<redirectAPI> listRedirectApi(){
		
		JSONArray genreJsonArray=null;
		String url = "http://wrp-api.posmasterus.com/api_redir_srvr/current_api_srvr";
		List<redirectAPI> apis= new ArrayList<redirectAPI>();
		redirectAPI apistatus=new redirectAPI();
		try {
	        String genreJson = IOUtils.toString(new URL(url));
	        JSONParser parser=new JSONParser();
	        Object obj = parser.parse(genreJson);
	        // get the title
	        genreJsonArray = (JSONArray) obj;
	        
	        
	        JSONObject name= (JSONObject) genreJsonArray.get(0);
	        
	        
	        apistatus.setId(((Long) name.get("id")).intValue());
            apistatus.setDomain((String) name.get("domain"));
            apistatus.setApiStatus((String)name.get("api_status"));
            apistatus.setApiName((String)name.get("api_name"));
            apistatus.setLastHeartbeat((String)name.get("last_heartbeat"));
            apis.add(apistatus);
	        
	        

		}
		
		catch (IOException e) {
			e.printStackTrace();
		} catch(Exception e){
			e.printStackTrace();
		}
		
		return apis;
		
	}
	
	
			@RequestMapping(value = "/welcome")
		public ModelAndView helloWorld() {
	 
			List<redirectAPI> list = listRedirectApi();
			ModelAndView model = new ModelAndView("welcome","list", list);
			
			return model;
		}
	}
	

