package service;

import domain.User;

import java.util.List;

public interface UserService {
    User login(User user) throws Exception;

    User findUserByUsername(String user_name) throws Exception;

    void addUser(User user) throws Exception;

    void updateUser(User user) throws Exception;


    List<User> findAll() throws Exception;

    void deleteByIds(String[] ids) throws Exception;

    void updatePwd(User user) throws Exception;

    void addFavorite(int user_id, String tip_id) throws Exception;

    int isFavorite(int user_id, String tip_id) throws Exception;
}
