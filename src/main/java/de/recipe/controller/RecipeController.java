package de.recipe.controller;

import de.recipe.model.Recipe;
import de.recipe.service.RecipeServiceImpl;
import de.recipe.web.RecipeWeb;
import de.recipe.web.RecipeWebOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class RecipeController {

    private RecipeServiceImpl recipeService;

    @Autowired
    public RecipeController(RecipeServiceImpl recipeService) {
        this.recipeService = recipeService;
    }

    @GetMapping( value = "/recipes" )
    public List <RecipeWebOutput> getAllRecipe() {
        return recipeService.getAllRecipe();
    }

    @PostMapping( value = "/recipes", consumes = "application/json" )
    public RecipeWeb creatRecipeController(@RequestBody RecipeWeb recipeWeb) {
        recipeService.creatRecipe(recipeWeb);
        return recipeWeb;
    }

    @GetMapping( "/recipes/{id}" )
    public RecipeWebOutput getRecipeByIdController(@PathVariable Long id) {
        return recipeService.getRecipeById(id);
    }

    @DeleteMapping( value = "/delete/{id}" )
    public List <RecipeWebOutput> delletRecipeByID(@PathVariable Long id) {
        recipeService.deleteRecipeById(id);
        return getAllRecipe();

    }

    @DeleteMapping( value = "/delete/" )
    public void deleteRecipeByIngretient(@RequestBody String ingredient) {

        recipeService.deleteRecipeByIngredients(ingredient);
    }

    @DeleteMapping( value = "delete/recipes", consumes = "application/json" )
    public void deletByRecipe(@RequestBody RecipeWeb recipe) {
        recipeService.deleteRecipieByRecipie(recipe);
    }

    @GetMapping( "/searhc/ingredient/{name_ingredient}" )
    public List findByIngredientController(@PathVariable String name_ingredient) {
        return recipeService.findByIngredientsContaining(name_ingredient);
    }

    @GetMapping( "/search/byAuthor/{string}" )
    public List <RecipeWebOutput> findBYAuthor(@PathVariable String string) {
        List <RecipeWebOutput> recipeWebOutputList = recipeService.findbyAuthor(string);
        return recipeWebOutputList;
    }

    @PutMapping( "/recipe/update/{id}" )
    public void updateRecipeById(@RequestBody Recipe recipe, @PathVariable long id) {
        recipeService.updateRecipe(recipe, id);

    }

}
