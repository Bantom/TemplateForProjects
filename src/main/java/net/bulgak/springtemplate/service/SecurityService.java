package net.bulgak.springtemplate.service;

/**
 * Service for Security.
 */
public interface SecurityService {

    String findLoggedByEmail();

    void autoLogin(String email, String password);
}
