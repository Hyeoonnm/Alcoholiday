package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.pager.Pager;
import kr.ac.alcoholiday.service.RecipesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/recipes")
public class RecipesController {

    @Autowired
    RecipesService service;

    @RequestMapping("/list")
    public String list(Model model, Pager pager) {

        List<Alcohol> recipes = service.list(pager);

        model.addAttribute("recipes", recipes);

        return "recipes/list";
    }

    @PostMapping("/add")
    public String add(Alcohol item, @SessionAttribute User user) {
        item.setStuffUserId(user.getUserId());

        service.add(item);

        return "redirect:/recipes/list";
    }

    @GetMapping("/update/{stuffNum}")
    public String update(@PathVariable int stuffNum, Model model) {
        Alcohol item = service.item(stuffNum);

        model.addAttribute("item", item);

        return "recipes/update";
    }

    @PostMapping("/update/{stuffNum}")
    public String update(@PathVariable int stuffNum, @SessionAttribute User user ,Alcohol item) {
        item.setStuffUserId(user.getUserId());

        service.update(item);

        return "redirect:../list";
    }

    @RequestMapping("/delete/{stuffNum}")
    public String delete(@PathVariable int stuffNum, @SessionAttribute User user) {

        service.delete(stuffNum, user.getUserId());

        return "redirect:../list";
    }
}
