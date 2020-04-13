package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.CartItem;

@Repository
public interface ICartItemDao extends JpaRepository<CartItem, Long> {
}
