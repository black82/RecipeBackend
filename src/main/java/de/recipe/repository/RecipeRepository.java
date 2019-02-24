package de.recipe.repository;

import de.recipe.model.Ingredient;
import de.recipe.model.Recipe;
import de.recipe.web.CommentWeb;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RecipeRepository extends JpaRepository <Recipe, Long> {

    Recipe findByTitle(String title);

    List <Recipe> findByIngredientsNameIngredientIn(String nameIngredient);

    // List <Recipe> findByIngredientsNameIngredientNameIngredientNameIngredient(String nameIngredient1, String nameIngredient2, String nameIngredient3);

    List <Recipe> findByAuthorName(String nameAuthor);







}