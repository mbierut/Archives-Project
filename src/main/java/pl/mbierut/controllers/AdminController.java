package pl.mbierut.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.mbierut.models.Article;
import pl.mbierut.models.Binder;
import pl.mbierut.repositories.ArticleRepository;
import pl.mbierut.repositories.BinderRepository;
import pl.mbierut.services.Searcher;

import javax.validation.Valid;
import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {
    private ArticleRepository articleRepository;
    private BinderRepository binderRepository;
    private Searcher searcher;

    private AdminController(ArticleRepository articleRepository, BinderRepository binderRepository, Searcher searcher){
        this.articleRepository = articleRepository;
        this.binderRepository = binderRepository;
        this.searcher = searcher;
    }


    @ModelAttribute("binders")
    List<Binder> getBinders(){
        return binderRepository.findAll();
    }

    //Home

    @GetMapping("/home")
    public String sendHome(){
        return "adminhome";
    }

    //Articles

    @GetMapping("/addarticle")
    public String addArticle(Model model){
        model.addAttribute("article", new Article());
        return "addarticle";
    }

    @PostMapping("/addarticle")
    public String addArticle(@ModelAttribute @Valid Article article, BindingResult result){
        if (result.hasErrors()){
            return "addarticle";
        }
        articleRepository.save(article);
        return "redirect:articlelist";
    }


    @GetMapping("/deletearticle/{id}")
    public String deleteArticle(@PathVariable Long id){
        articleRepository.deleteById(id);
        return "redirect:../articlelist";
    }

    @GetMapping("/updatearticle/{id}")
    public String updateArticle(@PathVariable Long id, Model model){
        Article article = articleRepository.findById(id).get();
        model.addAttribute("article", article);
        return "addarticle";
    }

    @PostMapping("/updatearticle/{id}")
    public String updateArticle(@PathVariable Long id, @ModelAttribute @Valid Article article, BindingResult result){
        if (result.hasErrors()){
            return "addarticle";
        }
        articleRepository.save(article);
        return "redirect:../articlelist";
    }

    @RequestMapping("/articlelist")
    public String showArticleList(Model model){
        searcher.showAll(model);
        return "adminarticlelist";
    }

    //Binders

    @GetMapping("/addbinder")
    public String addBinder(Model model){
        model.addAttribute("binder", new Binder());
        return "addbinder";
    }

    @PostMapping("/addbinder")
    public String addBinder(@ModelAttribute @Valid Binder binder, BindingResult result){
        if (result.hasErrors()){
            return "addbinder";
        }
        binderRepository.save(binder);
        return "redirect:binderlist";
    }

    @GetMapping("/binderlist")
    public String showBinders(Model model){
        searcher.showAllBinders(model);
        return "adminbinderlist";
    }

    @GetMapping("deletebinder/{id}")
    public String deleteBinder(@PathVariable Long id){
        binderRepository.deleteById(id);
        return "redirect:../binderlist";
    }

    @GetMapping("/updatebinder/{id}")
    public String updateBinder(@PathVariable Long id, Model model){
        Binder binder = binderRepository.findById(id).get();
        model.addAttribute("binder", binder);
        return "addbinder";
    }

    @PostMapping("/updatebinder/{id}")
    public String updateBinder(@PathVariable Long id, @ModelAttribute @Valid Binder binder, BindingResult result){
        if (result.hasErrors()){
            return "addbinder";
        }
        binderRepository.save(binder);
        return "redirect:../binderlist";
    }


    //Search

    @GetMapping("/articlesearch")
    public String searchHome(){
        return "search";
    }


    @PostMapping("/articlesearch")
    public String searchDelegation(@RequestParam(value = "hiddenId") String hiddenId, @RequestParam(value = "title", required = false) String title, @RequestParam(value = "author", required = false) String author, @RequestParam(value = "binder", required = false) String binder, @RequestParam(value = "publishedDate", required = false) LocalDate publishedDate, @RequestParam(value = "publication", required = false) String publication, @RequestParam(value = "tag", required = false) String tag, Model model) {
        searcher.searchDelegation(hiddenId, title, author, binder, publishedDate, publication, tag, model);
        return "adminarticlelist";
    }


    @GetMapping("/bindersearch")
    public String binderSearchHome(){
        return "bindersearch";
    }

    @PostMapping("/bindersearch")
    public String binderSearch(@RequestParam String name, Model model){
        searcher.binderSearch(name, model);
        return "adminbinderlist";
    }


}