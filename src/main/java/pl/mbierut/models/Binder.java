package pl.mbierut.models;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "binders")
public class Binder {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotBlank
    private String name;

    @OneToMany(mappedBy = "binder", cascade = {CascadeType.MERGE, CascadeType.REMOVE})
    private List<Article> articles = new ArrayList<>();

    @Override
    public String toString() {
        return "#" + id + ": " + name;
    }

}
