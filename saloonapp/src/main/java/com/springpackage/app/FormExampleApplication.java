package com.springpackage.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Configuration;



@Configuration
@EnableAutoConfiguration




@SpringBootApplication


public class FormExampleApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(FormExampleApplication.class, args);
	}
	@Override
	 protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	  return application.sources(FormExampleApplication.class);
	 }
	
	//To load images folder on tomcat
	/*@Configuration
	public class WebConfiguration extends WebMvcConfigurationSupport {

	    @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry){ 
	            registry.addResourceHandler("/**")
	                 .addResourceLocations("classpath:/static/");
	    }
	}*/
}
