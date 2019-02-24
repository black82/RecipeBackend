package de.recipe.web;

import de.recipe.model.*;
import lombok.Data;

import java.util.List;

@Data
public class RecipeWeb {
    private String title;
    private String announce;
    private Userweb author;
    private List <IngredientWeb> ingredients;
    private List <RecepiStepWeb> instructions;
    private List <TaxonomyWeb> tags;
    private int prepTimeMinute;
    private int cookingTime;
    private RateWeb rate;
    private List <Photo> image;
    private List <Video> video;

    public RecipeWeb() {
    }

    public RecipeWeb(String title, String announce, Userweb author, List <IngredientWeb> ingredients, List <RecepiStepWeb> instructions, List <TaxonomyWeb> tags, int prepTimeMinute, int cookingTime, RateWeb rate, List <Photo> image, List <Video> video) {
        this.title = title;
        this.announce = announce;
        this.author = author;
        this.ingredients = ingredients;
        this.instructions = instructions;
        this.tags = tags;
        this.prepTimeMinute = prepTimeMinute;
        this.cookingTime = cookingTime;
        this.rate = rate;
        this.image = image;
        this.video = video;
    }
}

