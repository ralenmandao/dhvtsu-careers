package com.careers.ccs.data.validator;

public class ValidatorUtils {
	public static boolean validateSimpleName(String name){
		if(name.matches( "[a-zA-Z]*")){
			return true;
		}else{
			return false;
		}
	}
	
	public static boolean validateMaxLength(String name, int length){
		if(name.length() > length){
			return false;
		}else{
			return true;
		}
	}
	
	
	public static boolean validateEmpty(String name){
		if(name.length() == 0){
			return false;
		}else{
			return true;
		}
	}
	
	public static boolean validateEmail(String email){
		if(email.matches("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}")){
			return true;
		}else{
			return false;
		}
	}
	
	public static boolean validatePassword(String password){
		if(password.matches( "[a-zA-Z0-9]*")){
			return true;
		}else{
			return false;
		}
	}
}
