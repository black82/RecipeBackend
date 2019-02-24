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
public class User implements Serializable {

    @Id
    @Column( name = "user_id" )
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;
    @Column( nullable = false )
    private String name;
//    @ManyToOne
//    @JoinColumn( name = "author" )
//    Recipe recipe;

    public User() {
    }

    public User(String name,Long id) {
        this.name = name;
        this.id=id;
    }
}
