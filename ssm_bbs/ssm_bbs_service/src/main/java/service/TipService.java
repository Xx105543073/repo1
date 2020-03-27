package service;

import domain.Tip;

import java.util.List;

public interface TipService {
    List<Tip> findAll() throws Exception;

    Tip findTipById(String id) throws Exception;


    void addTip(Tip tip, String user_id, String tab_id) throws Exception;


    void addReplies(String id) throws Exception;

    void deleteByIds(String[] ids) throws Exception;

    List<Tip> findTipsByUserId(String user_id) throws Exception;
}
