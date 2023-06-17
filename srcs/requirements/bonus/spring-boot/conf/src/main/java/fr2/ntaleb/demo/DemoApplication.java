package fr2.ntaleb.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@RestController
// @Controller
@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	//@GetMapping("/")
	//public String index() {
	//	return "Greetings from Spring Boot!";
	//}
	//
	//@GetMapping("{path:}")
	//public String redirect(@PathVariable String path) {
	//	System.out.println("Redirect: " + path);
        //	return "forward:" + path + "/index.html";
        //	//return new ModelAndView("redirect:/" + path + "/");
    	//}

}


