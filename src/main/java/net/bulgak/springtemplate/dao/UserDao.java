package net.bulgak.springtemplate.dao;

import net.bulgak.springtemplate.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
