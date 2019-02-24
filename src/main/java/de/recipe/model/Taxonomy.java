package de.recipe.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.io.Serializable;

@Transactional
@Entity
@Data
@Table
@EqualsAndHashCode
public class Taxonomy implements Serializable {
    @Id
    @Column(name = "taxonomy_id")
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;
    @Column(nullable = false)
    private String nameTaxonomy;
    //private Recipe recipe;


    public Taxonomy(String nameTaxonomy, Long id) {
        this.nameTaxonomy = nameTaxonomy;
        this.id = id;

    }

    public Taxonomy() {
    }

    public Taxonomy(String ad, long l) {
    }
}
