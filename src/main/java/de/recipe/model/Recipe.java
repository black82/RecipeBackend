package de.recipe.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Transactional
@Entity
@EqualsAndHashCode
@Data
@Table( name = "recipe" )
public class Recipe implements Serializable {
    @Id
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    @Column( name = "recipe_id" )
    private Long id;

    private String title;

    @Column( length = 3000 )
    private String announce;

    @CreationTimestamp
    @Column( nullable = false, updatable = false )
    @Temporal( TemporalType.TIMESTAMP )
    private Date publicationDate;

    @OneToOne( cascade = CascadeType.ALL, targetEntity = User.class )
    @JoinColumn( name = "user_id" )
    private User author;

    @ManyToMany( cascade = CascadeType.ALL, targetEntity = Ingredient.class )
    @LazyCollection( LazyCollectionOption.FALSE )
    private List <Ingredient> ingredients;

    @OneToMany( cascade = CascadeType.ALL )
    @LazyCollection( LazyCollectionOption.FALSE )

    private List <RecepiStep> instructions;

    @OneToMany( cascade = CascadeType.ALL )
    @LazyCollection( LazyCollectionOption.FALSE )

    private List <Taxonomy> tags;

    @OneToMany( cascade = CascadeType.ALL  )
    @LazyCollection( LazyCollectionOption.FALSE )
    @JoinColumn( referencedColumnName = "recipe_id" )
    private List <Comment> comment;

    private int prepTimeMinute;

    private int cookingTime;

    @OneToOne( targetEntity = Rate.class, cascade = CascadeType.ALL )

    private Rate rate;

    @ManyToMany( cascade = CascadeType.ALL )
    @LazyCollection( LazyCollectionOption.FALSE )

    private List <Photo> image;

    @OneToMany( cascade = CascadeType.ALL )
    @LazyCollection( LazyCollectionOption.FALSE )

    private List <Video> video;

    public Recipe() {
    }


}
