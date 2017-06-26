package vn.airline.authentication;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import vn.airline.entity.User;
import vn.airline.services.UserService;

@Service
public class MyDBAuthenticationService implements UserDetailsService{
	
	@Autowired
	private UserService userService;

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		User user = userService.findByEmail(email);
		
		if (user==null){
			throw new UsernameNotFoundException("User " + email + " was not found in the database");
		}
		
		System.out.println("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5");
		
		String role = String.valueOf(user.getRoles());
		
		List<GrantedAuthority> grantList = new ArrayList<>();
		if (role!=null){
			GrantedAuthority authority = new SimpleGrantedAuthority("ROLE_"+role);
			grantList.add(authority);
		}
		UserDetails userDetails = (UserDetails) new org.springframework.security.core.userdetails.User(user.getEmail(), user.getPassword(),grantList);
		
		return userDetails;
	}

}
