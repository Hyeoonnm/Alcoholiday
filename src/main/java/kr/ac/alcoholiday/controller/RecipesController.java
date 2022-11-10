package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.service.RecipesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipesController {

    @Autowired
    RecipesService service;

    @RequestMapping("/list")
    public String list(Model model) {

        List<Alcohol> recipes = service.list();

        model.addAttribute("recipes", recipes);

        return "recipes/list";
    }

    @PostMapping("/add")
    public String add(Alcohol item) {
        service.add(item);

        return "redirect:/recipes/list";
    }

    @GetMapping("/update")
    public String update(Model model) {
        Alcohol item = service.item();

        model.addAttribute("item", item);

        return "recipes/update";
    }

    @PostMapping("/update")
    public String update(Alcohol item) {
        service.update(item);

        return "redirect:../list";
    }

    @RequestMapping("/delete/{stuffNum}")
    public String delete(@PathVariable int stuffNum) {
        service.delete(stuffNum);

        return "recipes/list";
    }
}
