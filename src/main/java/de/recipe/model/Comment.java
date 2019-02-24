package de.recipe.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.io.Serializable;

@Transactional
@Entity
@Data
@Table
@EqualsAndHashCode
public class Comment implements Serializable {
    @Id
    @Column( name = "comment_id", unique = true, nullable = false )
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;
    @Column( length = 1500, nullable = false )
    private String comment;

    @ManyToOne( fetch = FetchType.LAZY, optional = false )
    @JoinColumn( name = "recipe_id", nullable = false )
    @OnDelete( action = OnDeleteAction.CASCADE )

    Recipe recipe;

    public Comment() {
    }

    public Comment(String comment,Long id) {
        this.comment = comment;
        this.id=id;
    }
    //facebook realization
}
