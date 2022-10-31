package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.Attach;
import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.pager.Pager;
import kr.ac.alcoholiday.service.AlcoholService;
import kr.ac.alcoholiday.util.MutipartBinder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
@Controller
@RequestMapping("/alcohol")

public class AlcoholController {


    @Autowired
    AlcoholService service;


    @RequestMapping("/drink")
    public String list(Model model) {

        List<Alcohol> drink = service.list();
        model.addAttribute("drink", drink);

        return "alcohol/drink";
    }

    @RequestMapping("/detail/{stuffNum}")
    public String detail(@PathVariable int stuffNum , Model model) {

        Alcohol item = service.item(stuffNum);

        model.addAttribute("drink", item);

        return "alcohol/detail";
    }


    @PostMapping("/add")
    public String add(Alcohol item, @SessionAttribute User user) {

        item.setStuffUserId(user.getUserId());
        List<Attach> list = new ArrayList<Attach>(); // 이미지를 담을 list
        MutipartBinder binder = new MutipartBinder();

        for(MultipartFile attach : item.getAttach()) {
            if(attach != null && !attach.isEmpty()) {
                String fileName = binder.binding(attach);

                Attach file = new Attach();
                file.setAttachFilename(fileName);

                list.add(file);
            }

            item.setAttaches(list);

        }
        service.add(item);
        return "redirect:/alcohol/drink";
    }

    @GetMapping("/update/{stuffNum}")
    public String update(@PathVariable int stuffNum, Model model) {
        Alcohol item = service.item(stuffNum);

        model.addAttribute("item", item);

        return "alcohol/update";
    }

    @PostMapping("/update/{stuffNum}")
    public String update(@PathVariable int stuffNum, Alcohol item, @SessionAttribute User user) {
        item.setStuffUserId(user.getUserId());

        service.update(item);

        return "redirect:../drink";
    }

    @RequestMapping("/delete/{stuffNum}")
    public String delete(@PathVariable int stuffNum, @SessionAttribute User user) {


        service.delete(stuffNum, user.getUserId());

        return "redirect:../drink";
    }
}
