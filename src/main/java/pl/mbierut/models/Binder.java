package pl.mbierut.models;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "binders")
public class Binder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Getter @Setter
    private Long id;

    @NotBlank
    @Getter @Setter
    private String name;

    @OneToMany(mappedBy = "binder", cascade = {CascadeType.MERGE, CascadeType.REMOVE})
    @Getter @Setter
    private List<Article> articles = new ArrayList<>();

    @Override
    public String toString() {
        return "#" + id + ": " + name;
    }

}
