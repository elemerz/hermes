/**
 * 
 */
package ro.mossfern.hermes.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ro.mossfern.hermes.entities.User;
import ro.mossfern.hermes.services.UserService;

/**
 * @author Eli
 *
 */
@Controller
public class HomeController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/")
	public String home(Model model) 
	{
		List<User> users = userService.findAllUsers();
		model.addAttribute("users", users);
		return "home";
	}
}
