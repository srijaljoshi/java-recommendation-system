package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import project.innovators.recommendation.algorithm.InputData;
import project.innovators.recommendation.algorithm.SlopeOne;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.ProductCategory;
import project.innovators.recommendation.model.User;
import project.innovators.recommendation.service.IProductService;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/products")
public class ProductsController {

    private IProductService productService;

    @Autowired
    private SlopeOne slopeOne;

    @Autowired
    private InputData inputData;

    @GetMapping
    public String index(Model model) {
        // return all categories available to browse
        Set<ProductCategory> categories = productService.getCategoriesForExistingProducts(); // don't return categories with no products
        model.addAttribute("availableCategories", categories);
        return "products";
    }

    @GetMapping(value = "/{id}/details")
    public String productDetails(@PathVariable("id") long id, Model model, HttpSession session) {
        Product product = productService.findById(id);

        // Algorithms run on homepage
        Map<User, HashMap<Product, Double>> predictedProductsMap = SlopeOne.getOutputData();
        User currentUser = (User) session.getAttribute("user");

        List<Product> predictedProducts = null; // get top 5 predictions
        LinkedHashMap<Product, Double> sortedMap = new LinkedHashMap<>();
        // transform data to extract relevant products for current user and sort by rating
        for (User user : predictedProductsMap.keySet()) {
            if (user.equals(currentUser)) {
                HashMap<Product, Double> unsortedMap = predictedProductsMap.get(user);
                unsortedMap.entrySet()
                        .stream()
                        .sorted(Map.Entry.comparingByValue(Comparator.reverseOrder()))
                        .forEachOrdered(x -> sortedMap.put(x.getKey(), x.getValue()));
            }
        }
        predictedProducts = new ArrayList<>(sortedMap.keySet()).subList(0, 5); // top 5 only
        model.addAttribute("product", product);
        model.addAttribute("predictedProducts", predictedProducts);
        return "product_details";
    }

    @GetMapping("/{product_category}")
    public ModelAndView findByProductCategory(@PathVariable("product_category") String prod_category, ModelAndView mav) {
        // check for errors here

        List<Product> products = productService.findByProductCategory(prod_category);
//        products.stream().forEach(product -> System.out.println(">>> " + product));
        if (products != null && products.size() > 0) {
            mav.setViewName("product_of_category");
            mav.addObject("productCategory", prod_category);
            mav.addObject("productsModel", products);
        } else {
            mav.setViewName("redirect:/");
        }
        return mav;
    }

    @GetMapping("/search")
    public String searchProduct(@RequestParam("productName") String productName,
                                @RequestParam(defaultValue = "0") Integer pageNo,
                                @RequestParam(defaultValue = "5") Integer pageSize,
                                @RequestParam(defaultValue = "price") String sortBy,
                                Model model) {
        Page<Product> pagedProducts = productService.getProductByName(productName, pageNo, pageSize, sortBy);
        if (pagedProducts.hasContent()) {
            model.addAttribute("page", pagedProducts);
            model.addAttribute("products", pagedProducts.getContent());
            model.addAttribute("totalPages", pagedProducts.getTotalPages());
            model.addAttribute("numElements", pagedProducts.getNumberOfElements());
            model.addAttribute("currentPageNumber", pagedProducts.getNumber());
            model.addAttribute("name", productName);
        } else {
            model.addAttribute("products", new ArrayList<Product>());
        }
        return "search_results";
    }


    @RequestMapping(value = "/rate/{id}", method = RequestMethod.POST)
    public @ResponseBody
    Product rateProduct(@PathVariable("id") Long productId,
                        @RequestParam("rating") String rating,
                        HttpSession session) {
        User user = (User) session.getAttribute("user");
        try {
            productService.saveRating(user.getId(), productId, Integer.parseInt(rating));

            // rebuild the recommendation algorithm after updating rating
            updateRecommenderAlgorithm();
            System.out.println(">>> Update Recommendation algo");


        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return productService.findById(productId);
    }

    private void updateRecommenderAlgorithm() {
        Map<User, HashMap<Product, Double>> data = inputData.initializeData();
        slopeOne.slopeOne();
    }

    @Autowired
    public void setIProductService(IProductService productService) {
        this.productService = productService;
    }
}
