package net.bulgak.springtemplate.handlers;

import org.apache.log4j.Logger;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Set;

/**
 * Class responsible for redirecting user after authorization in order to users role with the highest priority.
 */
public class SuccessAuthorizationHandler implements AuthenticationSuccessHandler {

    private static final Logger logger = Logger.getLogger(SuccessAuthorizationHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        Set<String> roles = AuthorityUtils.authorityListToSet(authentication.getAuthorities());
        if (roles.contains("ROLE_ADMIN")) {
            logger.info("Authorization user as admin.");
            response.sendRedirect("admin/profile");
            return;
        }
        if (roles.contains("ROLE_USER")) {
            logger.info("Authorization user as user.");
            response.sendRedirect("user/profile");
            return;
        }
        logger.info("User doesn`t has any roles.");
        response.sendRedirect("/");
    }
}
