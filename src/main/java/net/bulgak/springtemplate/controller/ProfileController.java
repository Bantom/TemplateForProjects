package net.bulgak.springtemplate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileController {

    @RequestMapping(value = "/admin/profile", method = RequestMethod.GET)
    public String adminProfile() {
        return "admin/adminProfile";
    }

    @RequestMapping(value = "/user/profile", method = RequestMethod.GET)
    public String userProfile() {
        return "user/userProfile";
    }

}
