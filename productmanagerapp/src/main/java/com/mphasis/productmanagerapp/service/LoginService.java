package com.mphasis.productmanagerapp.service;

import com.mphasis.productmanagerapp.model.UserModel;

public class LoginService {
  public boolean check (UserModel userModel)
  {
	  if (userModel.getLogin().equals("John") && userModel.getPassword().equals("123"))
return true ;
else return false;
  }
}
