package net.bulgak.springtemplate.validator;

import net.bulgak.springtemplate.model.User;
import net.bulgak.springtemplate.service.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Validator for {@link User} class,
 * implements {@link Validator} interface.
 */
@Component
public class UserValidator implements Validator {

    private static final Logger logger = Logger.getLogger(UserValidator.class);

    @Autowired
    private UserService userService;

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;
        logger.info("Begining validation of user: " + user.toString());

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "Required");
        if (userService.findByEmail(user.getEmail()) != null) {
            logger.info("Email '" + user.getEmail() + "' has already existed in database");
            errors.rejectValue("email", "Duplicate.userForm.email");
        }

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "Required");
        if (user.getPassword().length() < 8 || user.getPassword().length() > 32) {
            logger.info("Password is less 8 or more 32 symbols.");
            errors.rejectValue("password", "Size.userForm.password");
        }

        if (!user.getConfirmPassword().equals(user.getPassword())) {
            logger.info("Password and ConfirmPassword are not the same.");
            errors.rejectValue("confirmPassword", "Different.userForm.password");
        }
    }
}
