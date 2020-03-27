package dao;

import domain.Tab;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface TabDao {

    @Select("select * from tab where tab_id =#{id}")
    Tab findById(String id) throws Exception;
}
