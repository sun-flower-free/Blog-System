package com.blog.controller;

import com.blog.transfer.Article;
import com.blog.transfer.Comment;
import com.blog.service.impl.ArticleServiceImpl;
import com.blog.service.impl.CommentServiceImpl;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.time.LocalTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Controller
public class ArticleController {

    @Autowired
    ArticleServiceImpl articleService;
    @Autowired
    public CommentServiceImpl commentService;

    @RequestMapping("/article")
    public ModelAndView detail(HttpServletRequest request){

        int id=Integer.parseInt(request.getParameter("id"));
        List<Comment> comments=commentService.allComments(id,0,10);

        Article article=articleService.selectById(id);
        Article lastArticle=articleService.selectLastArticle(id);
        Article nextArticle=articleService.selectNextArticle(id);

        Integer clickNum=article.getClick();
        article.setClick(clickNum+1);
        articleService.updateArticle(article);

        // 生成具体内容的页面
        ModelAndView modelAndView=new ModelAndView("detail");
        modelAndView.addObject("article",article);
        modelAndView.addObject("comments",comments);
        modelAndView.addObject("lastArticle",lastArticle);
        modelAndView.addObject("nextArticle",nextArticle);
        return modelAndView;
    }

    @RequestMapping("/admin/article/detail")
    public ModelAndView adminArticleDetail(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        Article article=articleService.selectById(id);

        ModelAndView modelAndView=new ModelAndView("/admin/article_detail");
        modelAndView.addObject("article",article);


        return modelAndView;
    }

    @RequestMapping("/admin/article/comment")
    public ModelAndView adminArticleComment(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        List<Comment> comments=commentService.allComments(id,0,10);
        ModelAndView modelAndView=new ModelAndView("/admin/comment_list");
        modelAndView.addObject("comments",comments);
        return modelAndView;
    }

    @RequestMapping("/admin/article/list")
    public ModelAndView articleList(@RequestParam(required=true,defaultValue="1") Integer page, @RequestParam(required=false,defaultValue="10") Integer pageSize){
        PageHelper.startPage(page, pageSize);
        List<Article> articles=articleService.queryAll();
        for(Article i : articles){
            System.out.println(LocalTime.now()+" [\33[35;2m文章检测\33[m] login account: " + i.toString());
        }
        PageInfo<Article> pageInfo=new PageInfo<Article>(articles);
        ModelAndView modelAndView=new ModelAndView("/admin/article_list");
        modelAndView.addObject("articles",articles);
        modelAndView.addObject("pageInfo",pageInfo);
        return modelAndView;
    }

    @RequestMapping("/admin/article/add")
    public ModelAndView articleAdd(){
        ModelAndView modelAndView=new ModelAndView("/admin/article_add");

        return modelAndView;
    }

    @RequestMapping("/admin/article/add/do")
    public String articleAddDo(HttpServletRequest request,RedirectAttributes redirectAttributes) throws UnsupportedEncodingException {
        /*
        * 第一句话一定要加，否则后端提交接受的汉语为乱码，与前端保持一致即可
        * */
        request.setCharacterEncoding("UTF-8");//客户端网页我们控制为UTF-8
        Article article=new Article();
        article.setTitle(request.getParameter("title"));
        article.setCatalogId(Integer.parseInt(request.getParameter("catalogId")));
        article.setKeywords(request.getParameter("keywords"));
        article.setDesci(request.getParameter("desci"));
        article.setContent(request.getParameter("content"));
        article.setTime(new Date());

        System.out.println(LocalTime.now()+" [\33[34;2m文章检测\33[m] Article from the page: " + article.getContent());

        if (articleService.insert(article)){
            redirectAttributes.addFlashAttribute("succ", "发表文章成功！");
        }else {
            redirectAttributes.addFlashAttribute("error", "发表文章失败！");
        }
        return "redirect:/admin/article/add";
    }

    @RequestMapping(value = "/admin/article/search")
    public ModelAndView articleSearch(HttpServletRequest request){
        String word=request.getParameter("word");
        List<Article> articles=articleService.selectByWord(word);

        ModelAndView modelAndView=new ModelAndView("/admin/article_list");
        modelAndView.addObject("articles",articles);
        return modelAndView;
    }

    @RequestMapping(value = "/admin/article/edit")
    public ModelAndView articleEdit(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        Article article=articleService.selectById(id);
        ModelAndView modelAndView=new ModelAndView("/admin/article_edit");
        modelAndView.addObject("article",article);
        return modelAndView;
    }

    @RequestMapping(value = "/admin/article/edit/do")
    public ModelAndView articleEditDo(HttpServletRequest request){
        Article article=new Article();
        article.setId(Integer.parseInt(request.getParameter("id")));
        article.setTitle(request.getParameter("title"));
        article.setCatalogId(Integer.parseInt(request.getParameter("catalogId")));
        article.setKeywords(request.getParameter("keywords"));
        article.setDesci(request.getParameter("desci"));
        article.setContent(request.getParameter("content"));
        ModelAndView modelAndView=new ModelAndView("/admin/article_edit");
        if (articleService.updateArticle(article)){
            modelAndView.addObject("succ", "修改文章成功！");

        }else {
            modelAndView.addObject("error", "修改文章失败！");
        }
        return modelAndView;
    }

    @RequestMapping(value = "/api/article/del", method = RequestMethod.POST)
    @ResponseBody
    public Object loginCheck(HttpServletRequest request) {
        int id=Integer.parseInt(request.getParameter("id"));
        int result=articleService.deleteById(id);
        HashMap<String, String> res = new HashMap<String, String>();
        if (result==1){
            res.put("stateCode", "1");
        }else {
            res.put("stateCode", "0");
        }
        return res;
    }
}
