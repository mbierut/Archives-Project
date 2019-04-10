package pl.mbierut.models;

import lombok.Getter;
import lombok.Setter;
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
    @Getter @Setter
    private Long id;

    @NotBlank
    @Getter @Setter
    private String title;

    @Getter @Setter
    private String author;

    @ManyToOne
    @Getter @Setter
    private Binder binder;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @Getter @Setter
    private LocalDate publishedDate;

    @Getter @Setter
    private String publication;

    @Min(0)
    @Getter @Setter
    private int number;

    @Getter @Setter
    private String tag;

    @NotNull
    @Getter @Setter
    private boolean contentWarning;

    @NotNull
    @Getter @Setter
    private boolean hasScan;

    @Pattern(regexp = "^$|[\\w,\\-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+[\\w,\\s\\-ąćęłńóśźżĄĆĘŁŃÓŚŹŻ]+\\.pdf$")
    @Getter @Setter
    private String pdfPath;


}
