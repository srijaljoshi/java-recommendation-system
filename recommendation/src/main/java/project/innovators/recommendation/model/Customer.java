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

    @Column(name="lastname")
    private String lastname;

    @Column(name="email")
    private String email;

    // if @Column is not used, it refers to the
    private String password;

    @OneToOne
    @JoinColumn(name = "address_id")
    private Address address;



}
