package de.exeption;

public class NotFoundRecipeById extends RuntimeException {

    public NotFoundRecipeById(String e) {
        super(e);
    }
}
