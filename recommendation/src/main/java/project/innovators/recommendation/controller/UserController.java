package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import project.innovators.recommendation.model.User;
import project.innovators.recommendation.service.IUserService;

import javax.servlet.http.HttpSession;
import java.util.logging.Logger;

@RestController
@RequestMapping(value = "/api/users")
public class UserController {

    private static Logger logger = Logger.getLogger("AdminController");

    @Autowired
    private IUserService userService;

    @GetMapping
    public String index() {
        return "User Index";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "Logged In";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Object login(@RequestBody User a,
                        HttpSession session) {
        logger.info(">>> INSIDE POST: login!!!");
        User user = null;
        try {
            // Will throw error if login is not successful
            logger.info(">>> INSIDE TRY PART: login!!!");
            user = userService.getUser(a.getEmail(), a.getPassword());
            logger.info(">>> AFTER CALL: login!!!");
            if (user == null) {
                // failed
                logger.severe("Failed to login. Admin does not exist!");
            } else {
//                session.setAttribute("admin", admin);
                logger.info(">>> Logged in successfully as " + a.getEmail());
            }
        } catch (Exception e) {
            // FAIL to LOGIN. Add error message to the model to display it in the view
            System.out.println(">>> " + e.getMessage());
        }
        return user;
    }
}
