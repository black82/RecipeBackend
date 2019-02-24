package de.recipe.web;

import lombok.Data;

@Data
public class RecepiStepWeb {
    private String stepTitle;

    private String stepDescription;

    public RecepiStepWeb(String stepTitle, String stepDescription) {
        this.stepTitle = stepTitle;
        this.stepDescription = stepDescription;
    }

    public RecepiStepWeb() {
    }
}

