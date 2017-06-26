package vn.airline.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import vn.airline.entity.User;

public interface UserDAO extends CrudRepository<User, Integer>{
	
	List<User> findByEmail(String email);
	
	List<User> findByRoles(int roles);
	
	List<User> findAll();
}
