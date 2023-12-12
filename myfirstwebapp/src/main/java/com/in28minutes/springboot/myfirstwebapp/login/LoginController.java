package com.in28minutes.springboot.myfirstwebapp.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {
	
	private AuthenticationService authenticationService;

	public LoginController(AuthenticationService authenticationService) {
			super();
			this.authenticationService = authenticationService;
		}

//	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String goToLoginPage() {

//		logger.debug("Request param is " + name);
//		logger.info("info level log");
//		logger.warn("warn level log");
		
		return "login";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String goToWelcomePage(
			@RequestParam String name,
			@RequestParam String password, ModelMap model) {
		
		if(authenticationService.authenticate(name, password)) {
			model.put("name", name);

			return "welcome"; 
		}
		
		model.put("errorMessage", "Invalid Credentials. Please try again.");
		return "login"; 
	} 
}
