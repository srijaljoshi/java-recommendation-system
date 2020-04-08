package project.innovators.recommendation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.innovators.recommendation.dao.IProductDao;
import project.innovators.recommendation.model.Product;
import project.innovators.recommendation.model.ProductCategory;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class ProductService implements IProductService {

    @Autowired
    private IProductDao productDao;

    @Override
    public List<Product> findByProductCategory(String prod_category) {
        return productDao.findProductByProductCategory(prod_category);
    }

    @Override
    public Set<ProductCategory> getCategoriesForExistingProducts() {
        List<ProductCategory> productCategories = productDao.getCategoriesForExistingProducts();
        return new HashSet<>(productCategories);
    }
}
