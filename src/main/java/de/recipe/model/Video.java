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
public class Video {
    @Column( nullable = false )
    String patch;
    @Id
    @Column(name = "video_id")
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private Long id;

    public Video() {
    }


}
