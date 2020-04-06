package dao;

import domain.Tab;
import domain.Tip;
import domain.User;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TipDao {

    @Select("select * from tip")
    @Results({
            @Result(id = true,property = "tip_id",column = "tip_id"),
            @Result(property = "user",column = "user_id",javaType = User.class,one = @One(select = "dao.UserDao.findById")),
            @Result(property = "tab",column = "tab_id",javaType = Tab.class,one = @One(select = "dao.TabDao.findById")),
            @Result(property = "tip_title",column = "tip_title"),
            @Result(property = "tip_content",column = "tip_content"),
            @Result(property = "tip_publishTime",column = "tip_publishTime"),
            @Result(property = "tip_replies",column = "tip_id",one = @One(select = "dao.ReplyDao.findReplies")),
            @Result(property = "replies",column = "tip_id",javaType = List.class,many = @Many(select = "dao.ReplyDao.findByTipId")),
    })
    List<Tip> findAll() throws Exception;


    @Select("select * from tip where tip_id =#{tip_id}")
    @Results({
            @Result(id = true,property = "tip_id",column = "tip_id"),
            @Result(property = "user",column = "user_id",javaType = User.class,one = @One(select = "dao.UserDao.findById")),
            @Result(property = "tab",column = "tab_id",javaType = Tab.class,one = @One(select = "dao.TabDao.findById")),
            @Result(property = "replies",column = "tip_id",javaType = List.class,many = @Many(select = "dao.ReplyDao.findByTipId")),
            @Result(property = "tip_title",column = "tip_title"),
            @Result(property = "tip_content",column = "tip_content"),
            @Result(property = "tip_publishTime",column = "tip_publishTime"),
            @Result(property = "tip_replies",column = "tip_id",one = @One(select = "dao.ReplyDao.findReplies")),
    })
    Tip findById(String tip_id) throws Exception;

    @Insert("insert into tip (user_id,tab_id,tip_title,tip_content,tip_publishTime,tip_replies) values(#{user_id},#{tab_id},#{tip.tip_title},#{tip.tip_content},#{tip.tip_publishTime},#{tip.tip_replies})")
    void addTip(@Param("tip") Tip tip, @Param("user_id")String user_id,@Param("tab_id")String tab_id) throws Exception;

    @Update("update tip set tip_replies=tip_replies+1 where tip_id=#{id}")
    void addReplies(String id) throws Exception;

    @Delete("delete from tip where tip_id=#{id}")
    void deleteById(String id) throws Exception;

    @Select("select * from tip where user_id=#{user_id}")
    @Results({
            @Result(id = true,property = "tip_id",column = "tip_id"),
            @Result(property = "user",column = "user_id",javaType = User.class,one = @One(select = "dao.UserDao.findById")),
            @Result(property = "tab",column = "tab_id",javaType = Tab.class,one = @One(select = "dao.TabDao.findById")),
            @Result(property = "replies",column = "tip_id",javaType = List.class,many = @Many(select = "dao.ReplyDao.findByTipId")),
            @Result(property = "tip_title",column = "tip_title"),
            @Result(property = "tip_content",column = "tip_content"),
            @Result(property = "tip_publishTime",column = "tip_publishTime"),
            @Result(property = "tip_replies",column = "tip_id",one = @One(select = "dao.ReplyDao.findReplies")),
    })
    List<Tip> findTipsByUserId(String user_id) throws Exception;

    @Select("SELECT * FROM tip WHERE tip_title LIKE CONCAT('%',#{word},'%') OR tip_content LIKE CONCAT('%',#{word},'%')")
    @Results({
            @Result(id = true,property = "tip_id",column = "tip_id"),
            @Result(property = "user",column = "user_id",javaType = User.class,one = @One(select = "dao.UserDao.findById")),
            @Result(property = "tab",column = "tab_id",javaType = Tab.class,one = @One(select = "dao.TabDao.findById")),
            @Result(property = "tip_title",column = "tip_title"),
            @Result(property = "tip_content",column = "tip_content"),
            @Result(property = "tip_publishTime",column = "tip_publishTime"),
            @Result(property = "tip_replies",column = "tip_id",one = @One(select = "dao.ReplyDao.findReplies")),
            @Result(property = "replies",column = "tip_id",javaType = List.class,many = @Many(select = "dao.ReplyDao.findByTipId")),
    })
    List<Tip> findTipsByWord(String word) throws Exception;

    @Select("select * from tip where tip_id in(select tip_id from favorite where user_id =#{user_id})")
    @Results({
            @Result(id = true,property = "tip_id",column = "tip_id"),
            @Result(property = "user",column = "user_id",javaType = User.class,one = @One(select = "dao.UserDao.findById")),
            @Result(property = "tab",column = "tab_id",javaType = Tab.class,one = @One(select = "dao.TabDao.findById")),
            @Result(property = "tip_title",column = "tip_title"),
            @Result(property = "tip_content",column = "tip_content"),
            @Result(property = "tip_publishTime",column = "tip_publishTime"),
            @Result(property = "tip_replies",column = "tip_id",one = @One(select = "dao.ReplyDao.findReplies")),
            @Result(property = "replies",column = "tip_id",javaType = List.class,many = @Many(select = "dao.ReplyDao.findByTipId")),
    })
    List<Tip> findFavoriteByUserId(String user_id) throws Exception;

    @Delete("delete from favorite where tip_id = #{tip_id} and user_id = #{user_id}")
    void removeFavorite(@Param("tip_id") String tip_id,@Param("user_id") String user_id) throws Exception;
}
