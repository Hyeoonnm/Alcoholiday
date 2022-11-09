package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Recipes;
import kr.ac.alcoholiday.service.RecipesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipesController {

    @Autowired
    RecipesService service;

    @RequestMapping("/list")
    public String list(Model model) {

        List<Recipes> recipes = service.list();
        model.addAttribute("recipes", recipes);

        return "recipes/list";
    }

}
