package de.recipe.web;

import lombok.Data;

@Data
public class IngredientWeb {
    private String nameIngredient;
    private String descriptions;

    public IngredientWeb(String nameIngredient, String descriptions) {
        this.nameIngredient = nameIngredient;
        this.descriptions = descriptions;
    }

    public IngredientWeb() {
    }
}
