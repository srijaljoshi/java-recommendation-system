package project.innovators.recommendation.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.innovators.recommendation.dao.IProductDao;
import project.innovators.recommendation.dao.JdbcProductDaoImpl;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.ProductCategory;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class ProductService implements IProductService {

    private static Logger logger = LoggerFactory.getLogger(ProductService.class);
    @Autowired
    private IProductDao productDao;

    @Autowired
    private JdbcProductDaoImpl jdbcProductDao;

    @Override
    public List<Product> findByProductCategory(String prod_category) {
        return productDao.findProductByProductCategory(prod_category);
    }

    @Override
    public Set<ProductCategory> getCategoriesForExistingProducts() {
        List<ProductCategory> productCategories = productDao.getCategoriesForExistingProducts();
        return new HashSet<>(productCategories);
    }

    @Override
    public Product findById(long id) {
        return productDao.findProductById(id);
    }

    @Override
    public int saveProductUploadedBySeller(Product product) {
        try {
            // if category and brand are already in database, no need to save them. instead find their id and link as product's foreign key
            jdbcProductDao.saveUploadedProduct(product);
//            productDao.saveProduct(product.getDescription(), product.getImageUrl(), product.getPrice(), product.getProductCategory().getName(), product.getProductBrand().getBrandName());
        } catch (Exception e) {
            logger.error(">>> Can't save Product uploaded by the seller " + product);
            logger.error(e.getMessage());
            return -1;
        }
        return 1;
    }

    @Override
    public List<Product> getProducts() {
        return productDao.findAll();
    }

    @Override
    public List<Product> getProductByName(String productName) {
        return productDao.getProductByName(productName);
    }
}