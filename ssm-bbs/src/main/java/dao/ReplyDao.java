package dao;

import domain.Reply;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReplyDao {

    @Select("select * from reply where tip_id = #{id}")
    List<Reply> findByTipId(String id) throws Exception;

    @Insert("insert into reply(user_id,tip_id,reply_content,reply_publishTime,user_nick) values(#{user_id},#{tip_id},#{reply_content},#{reply_publishTime},#{user_nick})")
    void addReply(Reply reply) throws Exception;

    @Select("select count(*) from reply where tip_id =#{tip_id}")
    int findReplies(String tip_id) throws Exception;
}
