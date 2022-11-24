package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Alcohol;
import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.pager.Pager;
import kr.ac.alcoholiday.service.NoticeService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/notice")
public class NoticeController {
    private final NoticeService noticeService;

    @RequestMapping("/list")
    public String list(Pager pager, Model model) {
        List<Alcohol> notice = noticeService.list(pager);

        model.addAttribute("notice", notice);
        model.addAttribute("pager", pager);

        return "notice/list";
    }

    @PostMapping("/add")
    public String add(Alcohol notice) {
        noticeService.add(notice);

        return "redirect:list";
    }

    @PostMapping("/update/{stuffNum}")
    public String update(@PathVariable int stuffNum, Alcohol notice, @SessionAttribute User user) {
        notice.setStuffUserId(user.getUserId());

        noticeService.update(notice);

        return "redirect:../list";
    }

    @RequestMapping("/delete/{stuffNum}")
    public String delete(@PathVariable int stuffNum, @SessionAttribute User user) {
        noticeService.delete(stuffNum, user.getUserId());

        return "redirect:../list";
    }
}
