package controller;

import domain.Tip;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.TipService;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("tip")
public class TipController {

    @Autowired
    TipService tipService;

    @RequestMapping("addTip.do")
    public String addTip(Tip tip,String user_id,String tab_id) throws Exception{
        Date date=new Date();
        tip.setTip_publishTime(date);
        tip.setTip_replies(0);
        tipService.addTip(tip,user_id,tab_id);

        return "redirect:findAll.do";
    }

    @RequestMapping("findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Tip> list= tipService.findAll();
        mv.addObject("tips",list);
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("findTipById.do")
    public ModelAndView findTipById(String tip_id) throws Exception{
        ModelAndView mv=new ModelAndView();
        Tip tip = tipService.findTipById(tip_id);
        mv.setViewName("tip-detail");
        mv.addObject("tip",tip);
        return mv;
    }

    @RequestMapping("mFindAll.do")
    public ModelAndView mFindAll() throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Tip> list= tipService.findAll();
        mv.addObject("tips",list);
        mv.setViewName("tip-list");
        return mv;
    }

    @RequestMapping("deleteByIds.do")
    public String deleteByIds(String[] ids ) throws Exception{
        ModelAndView mv=new ModelAndView();
        tipService.deleteByIds(ids);
        return "redirect:mFindAll.do";
    }

    @RequestMapping("findTipsByUserId.do")
    public ModelAndView findTipsByUserId(String user_id)throws Exception{
        ModelAndView mv=new ModelAndView();
         List<Tip> list = tipService.findTipsByUserId(user_id);
         mv.setViewName("my-tips");
         mv.addObject("tips",list);
         return mv;
    }



}
