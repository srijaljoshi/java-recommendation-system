package project.innovators.recommendation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;
import project.innovators.recommendation.model.*;
import project.innovators.recommendation.service.ICartItemService;
import project.innovators.recommendation.service.ICartService;
import project.innovators.recommendation.service.ICustomerOrderService;
import project.innovators.recommendation.service.IProductService;

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
    private ICustomerOrderService customerOrderService;

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
        if (cart.isOrderPlaced()) {

        }
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
        User user = (User)session.getAttribute("user");
        cart = cartService.findById(cart.getId());

        if(cart == null || cart.isOrderPlaced()) {
            // create new cart
            Cart new_cart = new Cart();
            new_cart.setCustomer(user);
            new_cart.setGrandTotal(0);
            new_cart.setOrderPlaced(false);
            cartService.saveCartToDb(new_cart);
        } else {
            List<CartItem> cartItemList = cartItemService.findByCart(cart);
            model.addAttribute("cartItemList", cartItemList);
            model.addAttribute("cart", cart);
            System.out.println(">>> " + cart);
        }

        return "cart";
    }

    @RequestMapping(value = "/cart/remove/{cartItemId}", method = RequestMethod.DELETE)
    public void delete(@PathVariable("cartItemId") Long cartItemId) {
        cartItemService.deleteById(cartItemId);
    }

    @RequestMapping(value = "/update/{cartItemId}", method = RequestMethod.PUT)
    @ResponseBody
    public CartItem updateCartItem(@PathVariable("cartItemId") Long cartItemId,
                                   @RequestParam("quantity") Integer quantity,
                                   HttpSession session){
        Integer id = cartItemService.updateQuantityForCartWithId(cartItemId, quantity);
        System.out.println(">>> Updated quantity: " + id);
        CartItem cartItem = cartItemService.findById((long)id);
        return cartItem;
    }

    /**
     * To place the final order
     * @param session
     * @param redir
     * @return
     */
    @RequestMapping(value = "/order-placed", method = RequestMethod.POST)
    public RedirectView orderPlaced(HttpSession session, RedirectAttributes redir) {
        // save cartitems as customer order
        RedirectView redirectView;

        try {
            redirectView = new RedirectView("/cart/order-confirmation", true);

            Long cart_id = ((Cart)(session.getAttribute("cart"))).getId();
            Cart cart = cartService.findById(cart_id);
            cart.setOrderPlaced(true);
            cartService.update(cart);

            User user = (User) session.getAttribute("user");

            CustomerOrder customerOrder = new CustomerOrder();
            customerOrder.setCart(cart);
            customerOrder.setCustomer(user);
            customerOrderService.saveCustomerOrder(customerOrder);

            Cart newCart = createCartForUser(user);
            cartService.saveCartToDb(newCart);

            session.setAttribute("cart", newCart);

            System.out.println(">>> Customer Order saved: " + customerOrder);
            redir.addFlashAttribute("orderId", customerOrder.getId());
            redir.addFlashAttribute("orderSuccessMsg", "Order placed for delivery!");
        } catch (Exception e) {
            System.out.println(">>> Could not save customer order");
            System.out.println(e.getMessage());
            redir.addFlashAttribute("orderFailureMsg", "Could not place the order!");
            redirectView = new RedirectView("/cart", true);
        }


        return redirectView;
    }

    @GetMapping("/order-confirmation")
    public String confirmation(Model model) {
        System.out.println(">>> Proceeding order confirmation");
        Long coId = (Long)model.getAttribute("orderId");
        CustomerOrder customerOrder = customerOrderService.findById(coId);
        model.addAttribute("order", customerOrder);
        model.addAttribute("orderCart", customerOrder.getCart());
        return "order_confirmation";
    }


    private Cart createCartForUser(User user) {

        Cart cart = new Cart();
        cart.setCustomer(user);
        cart.setGrandTotal(0);
        cart.setOrderPlaced(false);
        return cart;
    }


}
