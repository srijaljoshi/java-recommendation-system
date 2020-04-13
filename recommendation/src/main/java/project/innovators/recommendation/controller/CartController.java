package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import project.innovators.recommendation.model.Cart;
import project.innovators.recommendation.model.CartItem;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.service.ICartItemService;
import project.innovators.recommendation.service.ICartService;
import project.innovators.recommendation.service.IProductService;
import project.innovators.recommendation.service.IUserService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    IProductService productService;

    @Autowired
    ICartService cartService;

    @Autowired
    private ICartItemService cartItemService;
    private static final double TAX = 1.0825;

    @PostMapping(value = "/add/{product_id}")//, consumes = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    // Could not resolve parameter [1] in public Required long parameter 'user_id' is not present
    public CartItem addProductToCart(@PathVariable("product_id") long product_id,
                                     @RequestParam("user_id") long user_id,
                                     @RequestParam("cart_id") long cart_id,
                                     @RequestParam("totalPrice") double totalPrice,
                                     @RequestParam("quantity") int quantity) {
        CartItem cartItem = new CartItem();
        Product product = productService.findById(product_id);
        Cart cart = cartService.findById(cart_id);

        // build the cart item
        cartItem.setProduct(product);
        cartItem.setQuantity(quantity);
        cartItem.setTotalPrice(totalPrice);
        cartItem.setCart(cart);

        // now save the cart item to either fetch later or to go to the order page where you get the grand total.
        cartItemService.save(cartItem);
        Double grandTotal = 0d;
        for (CartItem cartItem1 : cart.getCartItemList()) {
            grandTotal += cartItem1.getTotalPrice();
        }
        grandTotal = grandTotal * TAX;
        grandTotal = Double.parseDouble(String.format("%.2f", grandTotal));
        cart.setGrandTotal(grandTotal);
        cartService.update(cart);
//        System.out.println(">>> Built CartItem: " + cartItem);
        return cartItem;
    }

    @RequestMapping
    public String index(HttpSession session, Model model) {
        if(session.getAttribute("user") == null) return "redirect:/login";
        Cart cart = (Cart)session.getAttribute("cart");
        cart = cartService.findById(cart.getId());
        List<CartItem> cartItemList = cartItemService.findByCart(cart);
        model.addAttribute("cartItemList", cartItemList);
        model.addAttribute("cart", cart);
        System.out.println(">>> " + cart);
        return "cart";
    }

    @RequestMapping(value = "/cart/remove/{cartItemId}", method = RequestMethod.DELETE)
    public void delete(@PathVariable("cartItemId") Long cartItemId) {
        cartItemService.deleteById(cartItemId);
    }
}
