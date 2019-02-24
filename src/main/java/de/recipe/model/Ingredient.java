package de.recipe.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import java.io.Serializable;

@Transactional
@Entity
@Data
@EqualsAndHashCode
@Table
public class Ingredient implements Serializable {
    @Id
    @Column(name = "ingredient_id")
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;
    @Column(length =3000,nullable = false)
    private String nameIngredient;
    @Column(length =3000,nullable = false)
    private String descriptions;
    // private weightsAndMeasures wam;


    public Ingredient(String nameIngredient, String descriptions, Long id) {
        this.nameIngredient = nameIngredient;
        this.descriptions = descriptions;
        this.id = id;
    }


    public Ingredient() {
    }
}
