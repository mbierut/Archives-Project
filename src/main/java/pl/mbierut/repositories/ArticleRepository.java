package pl.mbierut.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.mbierut.models.Article;

import java.time.LocalDate;
import java.util.List;

public interface ArticleRepository extends JpaRepository<Article, Long> {

    List<Article> findAllByTitleContaining(String title);
    List<Article> findAllByAuthorContainingOrderByPublishedDateDesc(String authorName);
    List<Article> findAllByBinderNameContaining(String binderName);
    List<Article> findAllByPublication(String publication);
    List<Article> findAllByTag(String tag);
    List<Article> findAllByPublishedDate(LocalDate publishedDate);


}