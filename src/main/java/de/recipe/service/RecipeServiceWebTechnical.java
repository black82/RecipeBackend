package de.recipe.service;

import de.recipe.model.RecepiStep;
import de.recipe.model.Recipe;
import de.recipe.repository.RecipeRepository;
import de.recipe.web.IngredientWeb;
import de.recipe.web.RecepiStepWeb;
import de.recipe.web.RecipeWeb;
import de.recipe.web.RecipeWebOutput;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class RecipeServiceWebTechnical<T, Y> implements RecipeService {


    public RecipeWeb creatIngredientsToString(RecipeWeb recipeWeb) {
        String[] name=recipeWeb.getIngredients().get(0).getNameIngredient().split(",");
        String[] description=recipeWeb.getIngredients().get(0).getDescriptions().split(",");
        List <IngredientWeb> list= new ArrayList <>();
        for (int i = 0; i < name.length; i++) {
            list.add(new IngredientWeb(name[i],description[i]));
        }
recipeWeb.setIngredients(list);
        return recipeWeb;
    }
    public RecipeWebOutput createsStringToIngredients(RecipeWebOutput recipeWebOutput) {
        StringBuffer stringBuffer=new StringBuffer();
        String nameIngredients=recipeWebOutput.getIngredients()
                .stream()
                .map(a->a.getNameIngredient().toString())
                .collect(Collectors.joining(","));
        String descriptionIngredients=recipeWebOutput.getIngredients()
                .stream().map(a->a.getDescriptions()
                        .toString())
                .collect(Collectors.joining(","));

        List<IngredientWeb> list= Arrays.asList(new IngredientWeb(nameIngredients,descriptionIngredients));
recipeWebOutput.setIngredients(list);
return recipeWebOutput;
    }
    public Y convertTheReceiptsIntoAnotherEmbodiment(T t, Class<Y> refactoryclass) {
        ModelMapper modelMapper= new ModelMapper();
        Y y =modelMapper.map(t,refactoryclass);
        return y;
    }

    private List <T> refactoryObjectListToObjectwebList(List <Y> list, Class <T> tClass) {
        ModelMapper modelMapper = new ModelMapper();
        return list.stream().map(a -> modelMapper.map(a, tClass)).collect(Collectors.toList());
    }
    public RecipeWeb creatRecipeStepsToString(RecipeWeb recipeWeb) {
        String[] titleStep=recipeWeb.getInstructions().get(0).getStepTitle().split(",");
        String[] descriptionStep=recipeWeb.getInstructions().get(0).getStepDescription().split(",");
        List <RecepiStepWeb> list= new ArrayList <>();
        for (int i = 0; i < titleStep.length; i++) {
            list.add(new RecepiStepWeb(titleStep[i],descriptionStep[i]));
        }
        recipeWeb.setInstructions(list);
        return recipeWeb;
    }
    public RecipeWebOutput createsStringToRecipeSteps(RecipeWebOutput recipeWebOutput) {

        String namestepTitle=recipeWebOutput.getInstructions()
                .stream()
                .map(a->a.getStepTitle().toString())
                .collect(Collectors.joining(","));
        String stepDescription=recipeWebOutput.getInstructions()
                .stream().map(a->a.getStepDescription()
                        .toString())
                .collect(Collectors.joining(","));

        List<IngredientWeb> list= Arrays.asList(new IngredientWeb(namestepTitle,stepDescription));
        recipeWebOutput.setIngredients(list);
        return recipeWebOutput;
    }
}
