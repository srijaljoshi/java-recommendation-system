package project.innovators.recommendation.service;

import project.innovators.recommendation.model.ProductCategory;
import project.innovators.recommendation.model.User;

import java.util.List;

public interface IUserService {

    User getUser(String email, String password);

    void save(User user);

    List<ProductCategory> getProductCategoriesBySeller(Long id);
}
