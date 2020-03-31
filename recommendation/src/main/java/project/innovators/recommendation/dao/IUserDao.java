package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.User;

@Repository
public interface IUserDao extends JpaRepository<User, Long> {

//    @Query(value = "SELECT * FROM USERS WHERE EMAIL_ADDRESS = ?1", nativeQuery = true)
    User findByEmailAndPassword(String email, String password);
//    Admin getAdmin(String email, String password);
//    void addProduct(Product product);
//    Product findProductById(long productId);
//    Customer banCustomer(long id);
//    void reactivateCustomer(long id);
}
