package no.jchief.webapp.imperialassault.server;

import static spark.Spark.get;
import static spark.SparkBase.port;
import static spark.SparkBase.staticFileLocation;

import java.util.HashMap;
import java.util.Map;

import no.jchief.webapp.imperialassault.model.Encounter;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

public class Server {
	
	public static void main (String[] args) {
		port(Integer.valueOf(System.getenv("PORT")));
	    staticFileLocation("/public");
	    
		get("/test", (req, res) -> "Hello! Welcome to internet.");
	    
	    get("/", (request, response) -> {
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("message", "this could be a message");
            
            Encounter encounter = new Encounter();

            attributes.put("encounter", encounter);

            return new ModelAndView(attributes, "index.ftl");
        }, new FreeMarkerEngine());
		
	}
}
