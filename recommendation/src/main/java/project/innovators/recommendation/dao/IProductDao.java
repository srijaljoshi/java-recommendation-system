package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.ProductCategory;

import java.util.List;
import java.util.Set;

@Repository
public interface IProductDao extends JpaRepository<Product, Long> {

    //    @Query(value = "SELECT * FROM products WHERE id = ?1", nativeQuery = true)
    Product findProductById(Long id);

    // When a user chooses a product category, return the list of products under that category
    @Query("SELECT p FROM Product p inner join p.productCategory pc where pc.name = :prod_category_name")
    List<Product> findProductByProductCategory(@Param("prod_category_name") String category_name);

    @Query("SELECT pc FROM Product p inner join p.productCategory pc")
    List<ProductCategory> getCategoriesForExistingProducts();

    @Query(value = "insert into products(description, image_url, price, product_category_id, product_brand_id) " +
            "VALUES (?1, ?2, ?3, (select id from product_category where name=?4), (select id from product_brand where name=?5))",
            nativeQuery = true)
    void saveProduct(String description, String imageUrl, double price, String cat_id, String brand_id);
}