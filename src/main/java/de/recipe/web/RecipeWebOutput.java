package de.recipe.web;

import de.recipe.model.Photo;
import de.recipe.model.Video;
import lombok.Data;

import java.util.Date;
import java.util.List;
import java.util.Set;

@Data
public class RecipeWebOutput {
    private Long id;
    private String title;
    private String announce;
    private Date publicationDate;
    private Userweb author;
    private List <IngredientWeb> ingredients;
    private List <RecepiStepWeb> instructions;
    private List <TaxonomyWeb> tags;
    private List <CommentWeb> comment;
    private int prepTimeMinute;
    private int cookingTime;
    private RateWeb rate;
    private List <Photo> image;
    private List <Video> video;

    public RecipeWebOutput() {
    }

    public RecipeWebOutput(Long id, String title, String announce, Date publicationDate, Userweb author, List <IngredientWeb> ingredients, List <RecepiStepWeb> instructions, List <TaxonomyWeb> tags, List <CommentWeb> comment, int prepTimeMinute, int cookingTime, RateWeb rate, List <Photo> image, List <Video> video) {
        this.id = id;
        this.title = title;
        this.announce = announce;
        this.publicationDate = publicationDate;
        this.author = author;
        this.ingredients = ingredients;
        this.instructions = instructions;
        this.tags = tags;
        this.comment = comment;
        this.prepTimeMinute = prepTimeMinute;
        this.cookingTime = cookingTime;
        this.rate = rate;
        this.image = image;
        this.video = video;
    }
}
