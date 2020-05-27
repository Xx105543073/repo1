package service.impl;

import dao.TabDao;
import domain.Tab;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.TabService;

import java.util.List;


@Service
@Transactional
public class TabServiceImpl implements TabService{

    @Autowired
    TabDao tabDao;

    public List<Tab> findAll() throws Exception{
       List<Tab> list= tabDao.findAll();
        return list;
    }
}
