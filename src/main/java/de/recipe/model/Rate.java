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
public class Rate implements Serializable {
    @Id
    @Column(name = "rate_id")
    @GeneratedValue( strategy = GenerationType.IDENTITY )
    private long id;
    @Column( name = "rate_name", nullable = false )
    private String rateName;

    public Rate(String rateName, long id) {
        this.rateName = rateName;
        this.id = id;
    }


    public Rate() {
    }
}
