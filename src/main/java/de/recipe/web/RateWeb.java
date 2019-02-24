package de.recipe.web;

import lombok.Data;

@Data
public class RateWeb {
    private String rateName;

    public RateWeb(String rateName) {
        this.rateName = rateName;
    }

    public RateWeb() {
    }
}
