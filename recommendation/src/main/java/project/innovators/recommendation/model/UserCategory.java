package project.innovators.recommendation.model;

import javax.persistence.*;

@Entity
@Table(name = "user_category")
public class UserCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String userType;

}
