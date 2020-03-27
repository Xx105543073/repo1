package service.impl;

import dao.ReplyDao;
import domain.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import service.ReplyService;

@Service
@Transactional
public class ReplyServiceImpl implements ReplyService {

    @Autowired
    ReplyDao replyDao;

    @Override
    public void addReply(Reply reply) throws Exception {
        replyDao.addReply(reply);
    }
}
