package net.bulgak.springtemplate.dao;

import net.bulgak.springtemplate.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleDao extends JpaRepository<Role, Long> {
}
