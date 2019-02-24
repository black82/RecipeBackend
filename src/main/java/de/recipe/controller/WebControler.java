package de.recipe.controller;

import de.recipe.model.Recipe;
import de.recipe.service.RecipeServiceImpl;
import de.recipe.service.RecipeServiceWebTechnical;
import de.recipe.web.CommentWeb;
import de.recipe.web.RecipeWeb;
import de.recipe.web.RecipeWebOutput;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class WebControler {

    @Autowired
    RecipeServiceImpl service;

    @Autowired
    RecipeServiceWebTechnical serviceWeb;

    @RequestMapping( value = {"/", "/index"}, method = RequestMethod.GET )
    public String index() {
        return "index";
    }

    @RequestMapping( value = {"/recipeall"}, method = RequestMethod.GET )
    public String personList(Model model) {
        List <RecipeWebOutput> recipeList = service.getAllRecipe();
        model.addAttribute("recipeall", recipeList);
        return "recipeall";
    }


    @RequestMapping( value = {"/addrecipe"}, method = RequestMethod.GET )
    public String showAddRecipe(Model model) {
        model.addAttribute("recipeWebForm", new RecipeWeb());
        return "addrecipe";
    }

    @PostMapping( value = {"/addrecipe"} )
    public String savePerson(@ModelAttribute( "recipeWebForm" ) RecipeWeb recipeWeb) {
        recipeWeb = serviceWeb.creatIngredientsToString(recipeWeb);
        recipeWeb = serviceWeb.creatRecipeStepsToString(recipeWeb);
        service.creatRecipe(recipeWeb);
        return "redirect:/recipeall";
    }

    @GetMapping( value = "recipe/{author}" )
    public String searchByAuthor(@PathVariable String author, Model model) {
        List <RecipeWebOutput> recipeWebOutputList = service.findbyAuthor(author);
        model.addAttribute("recipeByAuthor", recipeWebOutputList);
        if (recipeWebOutputList.size() == 1) {
            return "recipeByTitle";
        }
        return "redirect:/recipeall";
    }

    @GetMapping( value = "/recipe" )
    public String searchByIdPage(Model model) {

        model.addAttribute("id", new RecipeWebOutput());
        return "recipebyid";
    }

    @PostMapping( value = "recipe/" )
    public String searchById(@ModelAttribute( "id" ) Long id, Model model) {

        RecipeWebOutput recipeWebOutput = service.getRecipeById(id);
        model.addAttribute("recipeByAuthor", recipeWebOutput);
        return "recipeByTitle";
    }

    @GetMapping( value = "recipeid/{id}" )
    public String searchByIdPatc(@ModelAttribute( "id" ) Long id, Model model) {

        RecipeWebOutput recipeWebOutput = service.getRecipeById(id);
        model.addAttribute("recipeByAuthor", recipeWebOutput);
        return "recipeByTitle";
    }

    @GetMapping( value = "recipebytitle/{title}" )
    public String searchByTitle(@PathVariable String title, Model model) {
        RecipeWebOutput recipeWebOutputList = service.findByTitle(title);
        model.addAttribute("recipeByAuthor", recipeWebOutputList);
        return "recipeByTitle";
    }

    @PostMapping( value = "/recipetitle/" )
    public String searchByTitlePost(@ModelAttribute( "id" ) RecipeWebOutput recipeWebOutput1, Model model) {
        RecipeWebOutput recipeWebOutput = service.findByTitle(recipeWebOutput1.getTitle());
        model.addAttribute("recipeByAuthor", recipeWebOutput);
        return "recipeByTitle";
    }

    @GetMapping( value = "recipebyingredient/{ingredient}" )
    public String searchByIngredient(@PathVariable String ingredient, Model model) {
        List <RecipeWebOutput> byIngredientsContaining = service.findByIngredientsContaining(ingredient);
        model.addAttribute("recipeByAuthor", byIngredientsContaining);
        if (byIngredientsContaining.size() == 1) {
            return "recipeByTitle";
        }
        return "redirect:/recipeall";
    }

    @GetMapping( "/recipedit/{id}" )
    public String showUpdateForm(@PathVariable( "id" ) Long id, Model model) {
        RecipeWebOutput recipeWebOutput = service.getRecipeById(id);
        recipeWebOutput = serviceWeb.createsStringToRecipeSteps(recipeWebOutput);
        model.addAttribute("ubdate", serviceWeb.createsStringToIngredients(recipeWebOutput));
        return "ubdaterecipe";
    }

    @PutMapping( value = "/recipedit/" )
    public String ubdateRecipe(@ModelAttribute( "ubdate" ) RecipeWebOutput recipeWebOutput) {
        RecipeWeb recipeWeb = (RecipeWeb) serviceWeb.convertTheReceiptsIntoAnotherEmbodiment(recipeWebOutput, RecipeWeb.class);
        recipeWeb = serviceWeb.creatIngredientsToString(recipeWeb);
        recipeWeb = serviceWeb.creatRecipeStepsToString(recipeWeb);
        Recipe recipe = (Recipe) serviceWeb.convertTheReceiptsIntoAnotherEmbodiment(recipeWeb, Recipe.class);
        service.updateRecipe(recipe, recipeWebOutput.getId());
        return "redirect:/recipeall";
    }

    //is not yet achieved
    @GetMapping( value = "/addcomment/{id}" )
    public String adcomment(@PathVariable( "id" ) Long id, Model model) {
        RecipeWebOutput recipeWebOutput = service.getRecipeById(id);

        System.out.println(recipeWebOutput);
        model.addAttribute("addComment", recipeWebOutput);
        return "addcomment";
    }

    @PostMapping( value = {"/addcomment/"} )
    public String saveComment(@ModelAttribute( "addComment" ) RecipeWebOutput recipeWebOutput, Model model) {
        RecipeWebOutput recipeById = service.getRecipeById(recipeWebOutput.getId());
        System.out.println(recipeWebOutput.getComment());
        List <CommentWeb> commentWebs = recipeById.getComment();
        commentWebs.add(recipeWebOutput.getComment().get(0));
        recipeById.setComment(commentWebs);

        service.updateRecipe((Recipe) serviceWeb.convertTheReceiptsIntoAnotherEmbodiment(recipeById, Recipe.class), recipeWebOutput.getId());
        model.addAttribute("recipeByAuthor", recipeById);
        return "recipeByTitle";

    }

    @GetMapping( "deletebyid/{id}" )
    public String deleteById(@PathVariable Long id, Model model) {
        service.deleteRecipeById(id);
        model.addAttribute("recipeByAuthor", service.getAllRecipe());
        return "redirect:/recipeall";
    }
}