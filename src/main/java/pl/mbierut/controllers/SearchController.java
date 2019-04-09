package pl.mbierut.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.mbierut.models.Binder;
import pl.mbierut.repositories.ArticleRepository;
import pl.mbierut.repositories.BinderRepository;
import pl.mbierut.services.Searcher;

import java.time.LocalDate;
import java.util.List;

@Controller
@RequestMapping("/user")
public class SearchController {
    private ArticleRepository articleRepository;
    private BinderRepository binderRepository;
    private Searcher searcher;

    private SearchController(ArticleRepository articleRepository, BinderRepository binderRepository, Searcher searcher){
        this.articleRepository = articleRepository;
        this.binderRepository = binderRepository;
        this.searcher = searcher;
    }

    @ModelAttribute("binders")
    List<Binder> getBinders(){
        return binderRepository.findAll();
    }

    //Home redirect

    @GetMapping("/home")
    public String sendHome(){
        return "redirect:../home";
    }


    //Articles

    @GetMapping("/search")
    public String searchHome(){
        return "search";
    }


    @PostMapping("/search")
    public String searchDelegation(@RequestParam(value = "hiddenId") String hiddenId, @RequestParam(value = "title", required = false) String title, @RequestParam(value = "author", required = false) String author, @RequestParam(value = "binder", required = false) String binder, @RequestParam(value = "publishedDate", required = false) LocalDate publishedDate, @RequestParam(value = "publication", required = false) String publication, @RequestParam(value = "tag", required = false) String tag, Model model) {
        searcher.searchDelegation(hiddenId, title, author, binder, publishedDate, publication, tag, model);
        return "result";
    }


    @GetMapping("/articlelist")
    public String showAll(Model model) {
        searcher.showAll(model);
        return "result";
    }

    //Binders

    @GetMapping("/bindersearch")
    public String binderSearchHome(){
        return "bindersearch";
    }

    @PostMapping("/bindersearch")
    public String binderSearch(@RequestParam String name, Model model){
        searcher.binderSearch(name, model);
        return "binderlist";
    }

    @GetMapping("/binderlist")
    public String showAllBinders(Model model){
        searcher.showAllBinders(model);
        return "binderlist";
    }


}
