package project.innovators.recommendation.service;

import project.innovators.recommendation.model.CustomerOrder;

public interface ICustomerOrderService {

    void saveCustomerOrder(CustomerOrder customerOrder);

    CustomerOrder findById(Long coId);
}
