package net.bulgak.springtemplate.controller;

import net.bulgak.springtemplate.model.User;
import net.bulgak.springtemplate.service.SecurityService;
import net.bulgak.springtemplate.service.UserService;
import net.bulgak.springtemplate.validator.UserValidator;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Controller for {@link User}'s pages.
 */

@Controller
public class RegistrationController {

    private static final Logger logger = Logger.getLogger(RegistrationController.class);

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());
        return "general/registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        logger.info("Trying to register new user: " + userForm.toString());
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            logger.info("Failed registration in case invalid data in registration form of user: " + userForm.toString());
            return "redirect: registration";
        }
        logger.info("Saving user - " + userForm.toString() + " in database.");
        userService.save(userForm);

        logger.info("AutoLogin user - " + userForm.toString());
        securityService.autoLogin(userForm.getEmail(), userForm.getConfirmPassword());
        return "redirect: profile/user";
    }
}
