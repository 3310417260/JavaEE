package com.TecCom.controller;

import com.TecCom.database.Article;
import com.TecCom.database.Boardcontext;
import com.TecCom.database.Boardcontextwith;
import com.TecCom.database.User;
import org.apache.ibatis.session.SqlSession;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class Maincontroller {

    @Autowired
    SqlSession sqlSession;

    @GetMapping("aboutme")
    public String aboutme(Map<String,Object> map){
        Subject currentUserId = SecurityUtils.getSubject();
        User user = (User) currentUserId.getPrincipal();
        User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
        map.put("justside", user2);

        return "aboutme";
    }

    @GetMapping("/isok")
    public String isok() {
        Subject subject = SecurityUtils.getSubject();
        subject.logout();

        return "isok";
    }


    @GetMapping("/test")
    public String test(Map<String,Object>map) {
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
            map.put("justside", user2);
        } catch (Exception e) {
            System.out.print("  ");
        }
//        System.out.println("my_img");
//        Subject subject = SecurityUtils.getSubject();
//        subject.logout();
        return "upload/index";
//        return "my_img_start";
    }


    @GetMapping("/yourselfmessages")
    public String yourselfmessages(Map<String,Object>map) {
        Subject currentUserId = SecurityUtils.getSubject();
        User user = (User) currentUserId.getPrincipal();
        User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
        map.put("justside", user2);

        return "yourselfmessages";
    }






    @PostMapping("/errorcode")
    public String errorcode(Map<String, Object> map) {
        map.put("ismessage", "");
        return "login";
    }





    @PostMapping("/wirtedatahtml")
    public String postwirtedatahtml(String title, String con, String selectinput,String justforurl) {
        User user = null;
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            user = (User) currentUserId.getPrincipal();
            user.getUsername();
        } catch (Exception e) {
            System.out.print("er");
            return "/login";
        }
        Boardcontext c = new Boardcontext();
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        c.setCreatedtime(sdf.format(d));
        c.setTitle(title);
        c.setContext(con);
        c.setUser(user.getUsername());
        sqlSession.insert(selectinput, c);
        return "redirect:/"+justforurl;
    }

    @PostMapping("/wirtedatahtmlwith")
    public String postwirtedatahtmlwith(String con, int withc, String justforurl,String intodbwith) {
        User user = null;
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            user = (User) currentUserId.getPrincipal();
            user.getUsername();
        } catch (Exception e) {
            System.out.print("e");
            return "/login";
        }

        Boardcontextwith c = new Boardcontextwith();
        Date d = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        c.setCreatedtime(sdf.format(d));
        c.setContext(con);
        c.setWithc(withc);
        c.setUser(user.getUsername());
        sqlSession.insert(intodbwith, c);
        return "redirect:" + justforurl;
    }


    @GetMapping("/wirtedatahtml")
    public String wirtedatahtml(Map<String, Object> map) {
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
            map.put("justside", user2);
        } catch (Exception e) {
            return "/login";
        }

        return "wirtedatahtml";
    }

    @RequestMapping({ "/index"})
    public String index(Map<String,Object> map) {
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User userinfo = sqlSession.selectOne("mainmapper.getuser",user.getUsername());
            Object total_article = sqlSession.selectOne("article.getTotal");
            Object good1_Num = sqlSession.selectOne("article.getGood1Num");
            Object good2_Num = sqlSession.selectOne("article.getGood2Num");
            List<String> read_by1 = sqlSession.selectList("article.getName1");
            List<String> read_by2 = sqlSession.selectList("article.getName2");
            List<String> read_by3 = sqlSession.selectList("article.getName3");
            List<String> read_by4 = sqlSession.selectList("article.getName4");
            List<String> read_by5 = sqlSession.selectList("article.getName5");
            List<String> read_by6 = sqlSession.selectList("article.getName6");

            List<Integer> read_num1 = sqlSession.selectList("article.getRead1");
            List<Integer> read_num2 = sqlSession.selectList("article.getRead2");
            List<Integer> read_num3 = sqlSession.selectList("article.getRead3");
            List<Integer> read_num4 = sqlSession.selectList("article.getRead4");
            List<Integer> read_num5 = sqlSession.selectList("article.getRead5");
            List<Integer> read_num6 = sqlSession.selectList("article.getRead6");

            map.put("userinfo",userinfo);
            map.put("total_article",total_article);
            map.put("good1_Num",good1_Num);
            map.put("good2_Num",good2_Num);
            map.put("read_by1",read_by1);
            map.put("read_by2",read_by2);
            map.put("read_by3",read_by3);
            map.put("read_by4",read_by4);
            map.put("read_by5",read_by5);
            map.put("read_by6",read_by6);

            map.put("read_num1",read_num1);
            map.put("read_num2",read_num2);
            map.put("read_num3",read_num3);
            map.put("read_num4",read_num4);
            map.put("read_num5",read_num5);
            map.put("read_num6",read_num6);


        } catch (Exception e) {
            return "login";
        }

        return "index";
    }



    @RequestMapping({"/"})
    public String vic_index(Map<String,Object> map) {
        return "login";
    }


}
