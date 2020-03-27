package dao;

import domain.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    @Select("select * from user where user_name=#{user_name} and user_password =#{user_password}")
    User login(User user) throws Exception;

    @Select("select * from user where user_name=#{user_name}")
    User findUserByUsername(String user_name) throws Exception;

    @Insert("insert into user(user_name, user_nick, user_password,user_age,user_gender) values(#{user_name}, #{user_nick}, #{user_password},#{user_age},#{user_gender})")
    void addUser(User user) throws Exception;

    @Update("update user set user_nick=#{user_nick},user_password=#{user_password},user_type=#{user_type} where user_name=#{user_name}")
    void updateUser(User user) throws Exception;

    @Select("select * from user")
    List<User> findAll() throws Exception;

    @Delete("delete from user where user_id = #{id}")
    void deleteById(String id) throws Exception;

    @Select("select * from user where user_id =#{id}")
    User findById(String id) throws Exception;

    @Update("update user set user_password=#{user_password} where user_id=#{user_id}")
    void updatePwd(User user) throws Exception;

}
