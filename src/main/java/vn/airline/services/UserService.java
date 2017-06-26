package vn.airline.services;

import java.util.List;

import vn.airline.entity.User;

public interface UserService {
	User findByEmail(String email);
	void saveUser(User user);

	void update(User user);
	
	boolean isExistsByEmail(String email);
	
	List<User> findByRoles(int roles);
	
	List<User> findAll();
}
