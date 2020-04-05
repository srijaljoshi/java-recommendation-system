package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import project.innovators.recommendation.model.Address;
import project.innovators.recommendation.model.User;
import project.innovators.recommendation.model.UserCategory;
import project.innovators.recommendation.service.IUserService;

import javax.servlet.http.HttpSession;
import java.util.logging.Logger;

@Controller
public class UserController {

    private static Logger logger = Logger.getLogger("UserController");

    @Autowired
    private IUserService userService;

    @GetMapping("/u/login")
    public String index() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginUser(@RequestParam("email") String email, @RequestParam("password") String password,
                        HttpSession session, RedirectAttributes redirectAttributes) {
        logger.info(">>> INSIDE POST: login!!!");
        User user = null;
        try {
            // Will throw error if login is not successful
            user = userService.getUser(email, password);
            if (user == null) {
                // failed
                redirectAttributes.addFlashAttribute("error", "user==null");
                return "redirect:login";
            } else {
                session.setAttribute("user", user);
                System.out.println(">>> Logged in successfully as " + user.getEmail());
                System.out.println(">>> User Category is " + user.getUserCategory());
                return "redirect:/"; // After successful login go to root
            }
        } catch (Exception e) {
            // FAIL to LOGIN. Add error message to the model to display it in the view
            redirectAttributes.addFlashAttribute("error", "Cannot Login. Please try again! (USING RedirectAttributes)");
            System.out.println(">>> " + e.getMessage());
            System.out.println(">>> Error Model: " + redirectAttributes.getFlashAttributes());
            return "redirect:login";
        }
    }

    @RequestMapping("/logout")
    public String logoutAdmin(HttpSession session, Model model) {
        User user = (User)session.getAttribute("user");
        System.out.println(">>> Logging out as user " + user.getEmail());
        session.removeAttribute("user");
        model.addAttribute("logout", ">>> Logging out as user" + user.getEmail());
        return "home";
    }

    @GetMapping(value = "/signup")
    public String signup() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signupUser(@ModelAttribute("user") User user,
                             @ModelAttribute("address")Address address,
                             @ModelAttribute("userType")UserCategory userCategory,
                             BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "signup";
        }
        System.out.println(">>> Handling Signup post request");
        System.out.println(">>> UserCategory " + userCategory);
        System.out.println(">>> Address " + address);
        System.out.println(">>> User " + user);
        // set user address and category before saving
        user.setAddress(address);
        user.setUserCategory(userCategory);

        userService.save(user);

        User savedUser = userService.getUser(user.getEmail(), user.getPassword());

        if (savedUser.getId() < 0) {
            System.out.println(">>> User was not saved! " + user);
            return "signup";
        }

        return "redirect:/";
    }
}
