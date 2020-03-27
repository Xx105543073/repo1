package service.impl;

import dao.UserDao;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.UserService;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    UserDao userDao;

    @Override
    public User login(User user) throws Exception {
        return userDao.login(user);
    }

    @Override
    public User findUserByUsername(String user_name) throws Exception {
        return userDao.findUserByUsername(user_name);
    }

    @Override
    public void addUser(User user) throws Exception {
        userDao.addUser(user);
    }

    @Override
    public void updateUser(User user) throws Exception {
        userDao.updateUser(user);
    }

    @Override
    public List<User> findAll() throws Exception {
        return userDao.findAll();
    }

    @Override
    public void deleteByIds(String[] ids) throws Exception {
        for (String id : ids) {
            userDao.deleteById(id);
        }
    }

    @Override
    public void updatePwd(User user) throws Exception {
        userDao.updatePwd(user);
    }

}
