package net.bulgak.springtemplate.service;

import net.bulgak.springtemplate.model.User;

/**
 * Service class for {@link User}
 */
public interface UserService {

    void save(User user);

    User findByEmail(String email);
}
