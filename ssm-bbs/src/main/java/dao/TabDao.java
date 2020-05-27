package dao;

import domain.Tab;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TabDao {

    @Select("select * from tab where tab_id =#{id}")
    Tab findById(String id) throws Exception;

    @Select("select * from tab order by tab_id asc")
    List<Tab> findAll() throws Exception;
}
