package project.innovators.recommendation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import project.innovators.recommendation.model.CustomerOrder;

@Repository
public interface ICustomerOrderDao extends JpaRepository<CustomerOrder, Long> {
    CustomerOrder findCustomerOrderById(Long customerOrderId);
}
