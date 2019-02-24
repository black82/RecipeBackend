package de.recipe.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;

@Transactional
@Entity
@Data
@Table
@EqualsAndHashCode
public class Photo {

    @Id
    @Column(name = "photo_id")
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;
    @Column( length = 5000, nullable = false )
    private String patch;

    public Photo() {
    }


}
