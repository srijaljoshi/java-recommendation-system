package project.innovators.recommendation.service;

import project.innovators.recommendation.model.User;

public interface IUserService {

    User getUser(String email, String password);
}
