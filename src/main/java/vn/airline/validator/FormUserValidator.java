package vn.airline.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import vn.airline.entity.User;

@Component
public class FormUserValidator implements Validator{
	
//	@Autowired
//	@Qualifier("emailValidator")
//	private EmailValidator emailValidator;

	
	@Override
	public boolean supports(Class<?> cls) {
		return User.class.isAssignableFrom(cls);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		
		
		User user = (User) obj;
////		if (!emailValidator.isValid(user.getEmail(),)){
////			
////		}
		
		if (!user.getPassword().equals(user.getConfirmPassword())){
			errors.rejectValue("confirmPassword", "Diff.userform.confirmPassword");
		}
		
		System.out.println(user.getEmail());
		
	}

}
