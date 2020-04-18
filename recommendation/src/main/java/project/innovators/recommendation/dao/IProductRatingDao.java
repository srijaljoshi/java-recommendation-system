package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.ProductRating;

@Repository
public interface IProductRatingDao extends JpaRepository<ProductRating, Long> {


}
