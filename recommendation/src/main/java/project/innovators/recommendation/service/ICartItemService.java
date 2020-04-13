package project.innovators.recommendation.service;

import project.innovators.recommendation.model.Cart;
import project.innovators.recommendation.model.CartItem;

public interface ICartItemService {
    long addCartItem(CartItem cartItem);
    long removeCartItem(CartItem cartItem);

    void save(CartItem cartItem);
}
