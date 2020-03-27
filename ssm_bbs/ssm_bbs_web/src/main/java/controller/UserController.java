package controller;

import domain.Tip;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import service.TipService;
import service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    UserService userService;

    @Autowired
    TipService tipService;

    /**
     * 用户登录
     * @param user
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("login.do")
    public ModelAndView login(User user, HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView();
        String result="";
        User lUser = userService.login(user);
        if (lUser==null){
            mv.setViewName("fail");
            result="登录失败:用户名或密码错误";
            mv.addObject("result",result);
        }else {
            HttpSession session = request.getSession();
            session.setAttribute("user",lUser);
            List<Tip> list= tipService.findAll();
            mv.addObject("tips",list);
            mv.setViewName("main");
        }

        return mv;
    }

    /**
     * 用户注册
     * @param user
     * @return
     * @throws Exception
     */
    @RequestMapping("register.do")
    public ModelAndView register(User user) throws Exception{
        ModelAndView mv=new ModelAndView();
        String result="";
        User rUser= userService.findUserByUsername(user.getUser_name());
        if(rUser==null){
            userService.addUser(user);
            mv.setViewName("login");
            result="注册成功";
            mv.addObject("result",result);
        }else {
            mv.setViewName("regfail");
            result="注册失败，用户名已存在";
            mv.addObject("result",result);
        }
        return mv;
    }

    /**
     * 注销用户
     * @param session
     * @return
     * @throws Exception
     */
    @RequestMapping("logout.do")
    public ModelAndView logout(HttpSession session) throws Exception{
        ModelAndView mv=new ModelAndView();
        session.removeAttribute("user");
        mv.setViewName("redirect:/");
        return mv;

    }

    /**
     * 查询个人信息
     * @param user_name
     * @return
     * @throws Exception
     */
    @RequestMapping("findUserMsg.do")
    public ModelAndView findUserMsg(String user_name) throws Exception{
        ModelAndView mv=new ModelAndView();
        User user = userService.findUserByUsername(user_name);
        mv.setViewName("user-profile");
        return mv;
    }

    /**
     * 管理员查看所有用户
     * @return
     * @throws Exception
     */
    @RequestMapping("findAll.do")
    public ModelAndView findAll() throws Exception{
        ModelAndView mv = new ModelAndView();
        List<User> list = userService.findAll();
        mv.setViewName("user-list");
        mv.addObject("users",list);
        return mv;
    }

    @RequestMapping("mUpdateUser.do")
    public String mUpdateUser(User user) throws Exception{
        userService.updateUser(user);

        return "redirect:findAll.do";
    }
    @RequestMapping("mFindByName.do")
    public ModelAndView mFindByName(String user_name) throws Exception{
        ModelAndView mv=new ModelAndView();
        User user = userService.findUserByUsername(user_name);
        mv.setViewName("user-detail");
        mv.addObject("U",user);
        return mv;
    }

    @RequestMapping("deleteByIds.do")
    public String deleteByIds(String[] ids) throws Exception{
        userService.deleteByIds(ids);

        return "redirect:findAll.do";
    }

    @RequestMapping("updatePwd.do")
    public ModelAndView updatePwd(User user,HttpServletRequest request) throws Exception{
        ModelAndView mv = new ModelAndView();
         userService.updatePwd(user);
        User lUser= userService.findUserByUsername(user.getUser_name());
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        session.setAttribute("user",lUser);
        mv.setViewName("main");
        return mv;
    }



}
