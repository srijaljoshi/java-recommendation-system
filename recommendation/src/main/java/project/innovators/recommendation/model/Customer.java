package project.innovators.recommendation.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "customers")
@Getter @Setter @NoArgsConstructor
public class Customer implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name="firstname", length=50, nullable=false, unique=false)
    private String firstname;
    private String lastname;
    private String email;
    private String password;

//    @Transient // will not be persisted bcs age can be calculated from DOB
    private int age;
//    private Address address;



}
