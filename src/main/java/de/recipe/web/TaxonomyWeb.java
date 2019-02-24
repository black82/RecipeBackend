package de.recipe.web;

import lombok.Data;

@Data
public class TaxonomyWeb {
    private String nameTaxonomy;

    public TaxonomyWeb(String nameTaxonomy) {
        this.nameTaxonomy = nameTaxonomy;
    }

    public TaxonomyWeb() {
    }
}
