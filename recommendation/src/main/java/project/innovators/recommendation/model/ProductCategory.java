package project.innovators.recommendation.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "product_category")
public class ProductCategory {

    @Id @GeneratedValue
    private long id;

    private String name;

    @OneToMany//(mappedBy = "category")
    private Set<Product> product = new HashSet<>();


}
