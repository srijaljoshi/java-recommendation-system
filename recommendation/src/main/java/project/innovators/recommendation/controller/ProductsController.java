package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.ProductCategory;
import project.innovators.recommendation.service.IProductService;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/products")
public class ProductsController {

    private IProductService productService;

    @GetMapping
    public String index(Model model) {
        // return all categories available to browse
        Set<ProductCategory> categories = productService.getCategoriesForExistingProducts(); // don't return categories with no products
        model.addAttribute("availableCategories", categories);
        return "products";
    }

    @GetMapping(value = "/{id}/details")
    public String productDetails(@PathVariable("id") long id, Model model) {
        Product product = productService.findById(id);
        model.addAttribute("product", product);
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
        if(pagedProducts.hasContent()) {
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

    @Autowired
    public void setIProductService(IProductService productService) {
        this.productService = productService;
    }
}
