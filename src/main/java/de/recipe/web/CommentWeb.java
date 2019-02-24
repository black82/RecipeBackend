package de.recipe.web;

import lombok.Data;

@Data
public class CommentWeb {
    private String commentName;

    public CommentWeb(String commentName) {
        this.commentName = commentName;
    }

    public CommentWeb() {
    }
}
