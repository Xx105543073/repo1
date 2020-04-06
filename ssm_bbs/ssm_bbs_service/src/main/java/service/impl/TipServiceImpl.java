package service.impl;

import dao.TipDao;
import domain.Tip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.TipService;

import java.util.List;

@Service
@Transactional
public class TipServiceImpl implements TipService {

    @Autowired
    TipDao tipDao;

    @Override
    public List<Tip> findAll() throws Exception {
        return tipDao.findAll();
    }

    @Override
    public Tip findTipById(String id) throws Exception {
        return tipDao.findById(id);
    }

    @Override
    public void addTip(Tip tip,String user_id,String tab_id) throws Exception {
        tipDao.addTip(tip,user_id,tab_id);
    }

    @Override
    public void addReplies(String id) throws Exception {
        tipDao.addReplies(id);
    }

    @Override
    public void deleteByIds(String[] ids) throws Exception {
        for (String id : ids) {
            tipDao.deleteById(id);
        }
    }

    @Override
    public List<Tip> findTipsByUserId(String user_id) throws Exception {
        return tipDao.findTipsByUserId(user_id);
    }

    @Override
    public List<Tip> findTipsByWord(String word) throws Exception {
        return tipDao.findTipsByWord(word);
    }

    @Override
    public void deleteById(String id) throws Exception {
        tipDao.deleteById(id);
    }

    @Override
    public List<Tip> findFavoriteByUserId(String user_id) throws Exception {
        return tipDao.findFavoriteByUserId(user_id);
    }

    @Override
    public void removeFavorite(String tip_id, String user_id) throws Exception {
        tipDao.removeFavorite(tip_id,user_id);
    }


}
