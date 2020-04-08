package project.innovators.recommendation.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import project.innovators.recommendation.dao.IJdbcUserDao;
import project.innovators.recommendation.dao.IUserDao;
import project.innovators.recommendation.model.User;

import javax.transaction.Transactional;
import java.util.logging.Logger;

@Service
public class UserServiceImpl implements IUserService {

    private static Logger logger = Logger.getLogger("AdminServiceImpl");
    @Autowired
    private IUserDao userDao;

    @Autowired
    private IJdbcUserDao jdbcUserDao;

    @Transactional
    public User getUser(String email, String password) {
        logger.info(">>>> Running userService#getUser query");
        return  userDao.findByEmailAndPassword(email, password);
    }

    @Override
    public void save(User user) {
        logger.info(">>>> Running userService#save query");
//        jdbcUserDao.saveUser(user);
        userDao.save(user);
    }
}
