package project.innovators.recommendation.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table (name = "products")
public class Product {
    @Id
    @GeneratedValue
    private long id;

    private String description;
    private double price;

    @OneToOne
    private ProductBrand productBrand;

    @ManyToMany(mappedBy = "product")
    private Set<ProductCategory> productCategory = new HashSet<>();

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Set<ProductCategory> getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(Set<ProductCategory> productCategory) {
        this.productCategory = productCategory;
    }
}
