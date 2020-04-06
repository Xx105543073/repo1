package controller;

import domain.Tip;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.TipService;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("tip")
public class TipController {

    @Autowired
    TipService tipService;

    @RequestMapping("addTip.do")
    public String addTip(Tip tip, String user_id, String tab_id) throws Exception {
        Date date = new Date();
        tip.setTip_publishTime(date);
        tip.setTip_replies(0);
        tipService.addTip(tip, user_id, tab_id);

        return "redirect:findAll.do";
    }

    @RequestMapping("findAll.do")
    public ModelAndView findAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Tip> list = tipService.findAll();
        mv.addObject("tips", list);
        mv.setViewName("main");
        return mv;
    }

    @RequestMapping("findTipById.do")
    public ModelAndView findTipById(String tip_id) throws Exception {
        ModelAndView mv = new ModelAndView();
        Tip tip = tipService.findTipById(tip_id);
        mv.setViewName("tip-detail");
        mv.addObject("tip", tip);
        return mv;
    }

    @RequestMapping("mFindAll.do")
    public ModelAndView mFindAll() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Tip> list = tipService.findAll();
        mv.addObject("tips", list);
        mv.setViewName("tip-list");
        return mv;
    }

    @RequestMapping("deleteByIds.do")
    public String deleteByIds(String[] ids) throws Exception {
        ModelAndView mv = new ModelAndView();
        tipService.deleteByIds(ids);
        return "redirect:mFindAll.do";
    }

    @RequestMapping("findTipsByUserId.do")
    public ModelAndView findTipsByUserId(String user_id) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Tip> list = tipService.findTipsByUserId(user_id);
        mv.setViewName("my-tips");
        mv.addObject("tips", list);
        return mv;
    }

    @RequestMapping("findTipsByWord.do")
    public String findTipsByWord(@RequestParam(name = "word") String word, Map<String, Object> map) throws Exception {
        if (word == "") {
            return "redirect:findAll.do";
        }
        List<Tip> list = tipService.findTipsByWord(word);
        map.put("tips", list);
        return "main1";

    }

    @RequestMapping("deleteTipById.do")
    public ModelAndView deleteTipById(@RequestParam(name = "id") String id,@RequestParam(name = "userId") String user_id)throws Exception{
        ModelAndView mv=new ModelAndView();
        tipService.deleteById(id);
        List<Tip> list = tipService.findTipsByUserId(user_id);
        mv.setViewName("my-tips");
        mv.addObject("tips", list);
        return mv;
    }

    @RequestMapping("findFavoriteByUserId.do")
    public ModelAndView findFavoriteByUserId(String user_id) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Tip> list= tipService.findFavoriteByUserId(user_id);
        mv.addObject("tips",list);
        mv.setViewName("my-favorite");
        return mv;
    }

    @RequestMapping("removeFavorite.do")
    public ModelAndView removeFavorite(@RequestParam(name = "tip_id") String tip_id,@RequestParam(name = "user_id") String user_id) throws Exception{
        ModelAndView mv=new ModelAndView();
        tipService.removeFavorite(tip_id,user_id);
        List<Tip> list= tipService.findFavoriteByUserId(user_id);
        mv.addObject("tips",list);
        mv.setViewName("my-favorite");
        return mv;
    }


}
