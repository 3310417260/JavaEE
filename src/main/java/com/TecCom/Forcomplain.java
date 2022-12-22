package com.dreamImage;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.dreamImage.database.Boardcontext;
import com.dreamImage.database.Boardcontextwith;
import com.dreamImage.database.User;
import com.dreamImage.database.Userwith;
import org.apache.ibatis.session.SqlSession;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
public class Forcomplain {

    @Autowired
    SqlSession sqlSession;

    private static final String tablename = "forcomplain.";
    private static final String controllername = "/bbs_forcomplain";
    private static final String controllernamefor2 = "/bbs_forcomplain/";

    @GetMapping(controllernamefor2 + "{num}")
    public String bbscontext(@PathVariable int num, Map<String, Object> map) {
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
            map.put("justside", user2);
        } catch (Exception e) {
            System.out.print("   ");
        }

        Userwith iterable = sqlSession.selectOne(tablename + "getwithbbs_user", num);
        Iterable<Boardcontextwith> iterablewith = sqlSession.selectList(tablename + "getwithbbs_anime", num);

        map.put("context", iterable);
        map.put("contextwith", iterablewith);
        map.put("intodbwith", tablename+"into_animewith");
        return "bbscontext";
    }

    @RequestMapping(controllernamefor2 + "page/{num}")
    public String index(@PathVariable int num, Map<String, Object> map) {
        int page = 0;
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
            map.put("justside", user2);
        } catch (Exception e) {
            System.out.print(" ");
        }


        if (num <= 0) {
            return "redirect:/";
        }
        List<Boardcontext> userlist = sqlSession.selectList(tablename + "getallbbs_anime");
        PageInfo<Boardcontext> pageInfo = new PageInfo<Boardcontext>(userlist);
        int basesize = (int) pageInfo.getTotal();


        if (basesize <= 0) {
            return "boardcontext";
        } else {

            page = 0;

            if (basesize % 20 == 0) {
                page = (int) (basesize / 20);
            } else {

                page = (int) (basesize / 20) + 1;
            }

        }
        ArrayList<Integer> list = new ArrayList<>();

        for (int i = 0; i < page; i++) {
            if (i == page) {
                break;
            }
            list.add(page - i);
        }
        PageHelper.startPage(num, 20);

        Iterable<Boardcontext> iterable = sqlSession.selectList(tablename + "getallbbs_anime");
        map.put("context", iterable);
        map.put("justforurl", controllernamefor2);
        map.put("list", list);
        map.put("boardname", controllernamefor2 + "page/");
        return "boardcontext";
    }


    @GetMapping(controllername)
    public String bbs_anime(Map<String, Object> map) {
        try {
            Subject currentUserId = SecurityUtils.getSubject();
            User user = (User) currentUserId.getPrincipal();
            User user2 = sqlSession.selectOne("mainmapper.getuser", user.getUsername());
            map.put("justside", user2);
        } catch (Exception e) {
            System.out.print("");
        }

        List<Boardcontext> userlist = sqlSession.selectList(tablename + "getallbbs_anime");
        PageInfo<Boardcontext> pageInfo = new PageInfo<Boardcontext>(userlist);
        int basesize = (int) pageInfo.getTotal();


        if (basesize <= 0) {
            return "boardcontext";
        } else {

            int page = 0;

            if (basesize % 20 == 0) {
                page = (int) (basesize / 20);
            } else {

                page = (int) (basesize / 20) + 1;
            }
            ArrayList<Integer> list = new ArrayList<>();

            for (int i = 0; i < page; i++) {
                if (i == page) {
                    break;
                }
                list.add(page - i);
            }
            PageHelper.startPage(page, 20);
            Iterable<Boardcontext> iterable = sqlSession.selectList(tablename + "getallbbs_anime");
            map.put("context", iterable);
            map.put("justforurl", controllernamefor2);
            map.put("list", list);
            map.put("boardname", controllernamefor2 + "page/");

            return "boardcontext";
        }
    }
}
