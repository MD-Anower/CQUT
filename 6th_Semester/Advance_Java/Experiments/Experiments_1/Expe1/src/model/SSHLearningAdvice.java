package model;

import java.util.ArrayList;
import java.util.List;

public class SSHLearningAdvice {
	public List Advice(String type){
		List result = new ArrayList();
		
		if(type.equals("struts2")){
			result.add("struts2 Framwark Primier");
			result.add("struts2 core Configuration");
			result.add("struts2 Interceptor");
			result.add("struts2 Tag Library");
			result.add("struts2 OGNL Expression and ValueStack");
		}
		
		else if(type.equals("Hibernate")){
			result.add("Hibernate Primier");
			result.add("Persistent Object State and First Level Cache");
			result.add("Hibernate Relation Mapping");
			result.add("HQL Hibernate Query Language");
			result.add("Hibernate Annotaion");
		}
		
		else if(type.equals("Spring")){
			result.add("Spring Basic Applicationr");
			result.add("Bean in Spring");
			result.add("Spring AOP(Aspect Oriented Programming)");
			result.add("Database Deveopment Of SPring");
			
		}
		
		return result;
		
	}
}
