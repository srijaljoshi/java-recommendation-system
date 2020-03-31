package project.innovators.recommendation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.innovators.recommendation.dao.IUserDao;
import project.innovators.recommendation.model.User;

import javax.transaction.Transactional;
import java.util.logging.Logger;

@Service
public class UserServiceImpl implements IUserService {

    private static Logger logger = Logger.getLogger("AdminServiceImpl");
    @Autowired
    private IUserDao userDao;

    @Transactional
    public User getUser(String email, String password) {
        logger.info(">>>> Running adminService#getAdmin query");
        return  userDao.findByEmailAndPassword(email, password);
    }
}
