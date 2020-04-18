package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import project.innovators.recommendation.dao.IProductRatingDao;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }
}
