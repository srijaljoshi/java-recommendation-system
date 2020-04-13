package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.Cart;
import project.innovators.recommendation.model.CartItem;

import java.util.List;

@Repository
public interface ICartItemDao extends JpaRepository<CartItem, Long> {
    List<CartItem> findByCart(Cart cart);
}
