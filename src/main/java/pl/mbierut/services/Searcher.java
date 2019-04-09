package pl.mbierut.services;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import pl.mbierut.repositories.ArticleRepository;
import pl.mbierut.repositories.BinderRepository;
import pl.mbierut.models.Article;
import pl.mbierut.models.Binder;

import java.time.LocalDate;
import java.util.List;

@Service
public class Searcher {
    private ArticleRepository articleRepository;
    private BinderRepository binderRepository;

    public Searcher(ArticleRepository articleRepository, BinderRepository binderRepository){
        this.articleRepository = articleRepository;
        this.binderRepository = binderRepository;
    }


    public void searchDelegation(String hiddenId, String title, String author, String binder, LocalDate publishedDate, String publication, String tag, Model model) {
        List<Article> articles;
        switch (hiddenId) {
            case "title":
                articles = articleRepository.findAllByTitleContaining(title);
                break;
            case "author":
                articles = articleRepository.findAllByAuthorContainingOrderByPublishedDateDesc(author);
                break;
            case "binder":
                articles = articleRepository.findAllByBinderNameContaining(binder);
                break;
            case "publication":
                articles = articleRepository.findAllByPublication(publication);
                break;
            case "tag":
                articles = articleRepository.findAllByTag(tag);
                break;
            default:
                articles = null;
                break;
        }
        model.addAttribute("articles", articles);

    }


    public void showAll(Model model) {
        List<Article> articles = articleRepository.findAll();
        model.addAttribute("articles", articles);
    }

    public void binderSearch(String name, Model model){
        List<Binder> binders = binderRepository.findAllByNameContaining(name);
        model.addAttribute("binders", binders);
    }

    public void showAllBinders(Model model){
        List<Binder> binders = binderRepository.findAll();
        model.addAttribute("binders", binders);
    }
}
