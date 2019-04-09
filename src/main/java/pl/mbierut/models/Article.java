package pl.mbierut.models;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.time.LocalDate;

@Entity
@Table(name = "articles")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String title;

    private String author;

    @ManyToOne
    private Binder binder;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate publishedDate;

    private String publication;

    @Min(0)
    private int number;

    private String tag;

    @NotNull
    private boolean contentWarning;

    @NotNull
    private boolean hasScan;

    @Pattern(regexp = "^$|[\\w,\\-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+[\\w,\\s\\-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+\\.pdf$")
    private String pdfPath;


}
