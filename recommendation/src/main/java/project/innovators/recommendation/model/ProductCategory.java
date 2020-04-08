package project.innovators.recommendation.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "product_category")
public class ProductCategory {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name;

//    @OneToMany//(mappedBy = "category")
//    private Set<Product> product = new HashSet<>();

    public ProductCategory() {}

    public ProductCategory(long id, String name) {
        this.id = id;
        this.name = name;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
