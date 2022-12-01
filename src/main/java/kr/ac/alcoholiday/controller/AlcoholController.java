package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.dao.AttachDao;
import kr.ac.alcoholiday.dao.ReplyDao;
import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.Attach;
import kr.ac.alcoholiday.model.Reply;
import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.pager.Pager;
import kr.ac.alcoholiday.search.Search;
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
    @Autowired
    AttachDao attachDao;

    // 한개의 이미지 파일 삭제
    @ResponseBody
    @RequestMapping(value = "/imgDelete", method = RequestMethod.POST)
    public List<Attach> imgDelete(String attachNum, String stuffNum, Model model) {
        attachDao.imgDelete(attachNum);

        List<Attach> attachList = attachDao.list(stuffNum);

        return attachList;
    }

    @RequestMapping("/drink")
    public String list(Model model, Search search) {

        List<Alcohol> drink = service.list(search);
        model.addAttribute("drink", drink);
        model.addAttribute("keywords", search.getKeywords());
        model.addAttribute("search", search.getSearchType());

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

        return "redirect:/alcohol/detail/" + item.getStuffNum();
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
        service.update(item);

        return "redirect:../drink";
    }

    @RequestMapping("/delete/{stuffNum}")
    public String delete(@PathVariable int stuffNum, @SessionAttribute User user) {

        service.delete(stuffNum, user.getUserId());

        return "redirect:../drink";
    }
}
