package vn.airline.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import vn.airline.dao.UserDAO;
import vn.airline.entity.User;

@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Override
	public User findByEmail(String email) {
		List<User> tmp = userDAO.findByEmail(email);
		System.out.println(tmp.size());
		if (tmp.size()>0){
			return tmp.get(0);
		} else {
			return null;
		}
	}

	@Transactional
	@Override
	public void saveUser(User user) {
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		userDAO.save(user);
		
	}

	@Override
	public boolean isExistsByEmail(String email) {
		List<User> tmp = userDAO.findByEmail(email);
		if (tmp.size()>0){
			return true;
		}
		
		return false;
	}

	@Override
	public List<User> findByRoles(int roles) {
		return userDAO.findByRoles(roles);
	}

	@Override
	public List<User> findAll() {
		return userDAO.findAll();
	}

	@Override
	public void update(User user) {
		userDAO.save(user);
	}

}
