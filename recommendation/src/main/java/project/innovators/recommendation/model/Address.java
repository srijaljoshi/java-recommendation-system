package project.innovators.recommendation.model;

import javax.persistence.*;

@Entity
@Table(name="addresses")
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

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
}
