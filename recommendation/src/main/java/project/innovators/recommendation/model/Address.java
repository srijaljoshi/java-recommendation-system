package project.innovators.recommendation.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name="addresses")
@Getter @Setter @NoArgsConstructor
public class Address {
    @Id
    @GeneratedValue
    long id;
    String street;
    String city;
    String state;
    String zip;

//    @OneToOne(mappedBy = "address")
//    Customer customer;

}
