package kr.ac.alcoholiday.controller;

import kr.ac.alcoholiday.model.Reply;
import kr.ac.alcoholiday.model.User;
import kr.ac.alcoholiday.service.ReplyService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/reply")
@RequiredArgsConstructor
public class ReplyController {
    private final ReplyService replyService;

    @PostMapping("/add")
    public String add(Reply reply, RedirectAttributes redirectAttributes, @SessionAttribute User user) {
        reply.setReplyUserId(user.getUserId());

        replyService.add(reply);

        redirectAttributes.addAttribute("stuffNum", reply.getReplyStuffNum());

        return "redirect:/alcohol/detail/{stuffNum}";
    }

    @RequestMapping("/delete/{replyStuffNum}/{replyNum}")
    public String delete(@SessionAttribute User user, @PathVariable int replyStuffNum, @PathVariable int replyNum) {
        replyService.delete(replyNum, user.getUserId());

        return "redirect:/alcohol/detail/" + replyStuffNum;
    }

    @PostMapping("/update/{replyStuffNum}/{replyNum}")
    public String update(@SessionAttribute User user, @PathVariable int replyStuffNum, @PathVariable int replyNum, Reply reply) {
        reply.setReplyUserId(user.getUserId());

        replyService.update(reply);

        return "redirect:/alcohol/detail/" + replyStuffNum;
    }
}
