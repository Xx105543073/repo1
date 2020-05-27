package controller;

import domain.Reply;
import domain.Tip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.ReplyService;
import service.TipService;

import java.util.Date;

@Controller
@RequestMapping("reply")
public class ReplyController {

    @Autowired
    ReplyService replyService;

    @Autowired
    TipService tipService;


    @RequestMapping("addReply.do")
    public ModelAndView addReply(Reply reply) throws Exception{
        ModelAndView mv=new ModelAndView();
        Date date = new Date();
        reply.setReply_publishTime(date);
        replyService.addReply(reply);
        String id= String.valueOf(reply.getTip_id());
        Tip tip = tipService.findTipById(id);
        mv.setViewName("tip-detail");
        mv.addObject("tip",tip);
        return mv;
    }
}
