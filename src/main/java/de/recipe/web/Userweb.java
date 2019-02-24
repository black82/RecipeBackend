package de.recipe.web;

import lombok.Data;

@Data
public class Userweb {

    private String name;

    public Userweb(String name) {
        this.name = name;
    }

    public Userweb() {
    }
}
