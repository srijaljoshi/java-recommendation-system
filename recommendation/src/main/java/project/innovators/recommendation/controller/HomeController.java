package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import project.innovators.recommendation.algorithm.InputData;
import project.innovators.recommendation.algorithm.SlopeOne;
import project.innovators.recommendation.dao.IProductRatingDao;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.User;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    InputData inputData;

    @Autowired
    SlopeOne slopeOne;

    @RequestMapping("/")
    public String home(Model model) {
        Map<User, HashMap<Product, Double>> data = inputData.initializeData();
        System.out.println(data.size());
        data.keySet().forEach(user -> System.out.println(user.getFirstname()));
        data.keySet().forEach(user -> {
            data.get(user).forEach((product, aDouble) -> {
                System.out.println("product: " + product.getId() + " rate: " + aDouble.doubleValue());
            });
        });

        slopeOne.slopeOne();

        return "home";
    }
}
