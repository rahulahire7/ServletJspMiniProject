package com.model;

public class User {
private String msg1="";
private String msg2="";
private String msg3="";

private String msg4="";
public String getMsg1() {
return msg1;
}
public void setMsg1(String msg1) {
this.msg1 = msg1;
}
public String getMsg2() {
return msg2;
}
public void setMsg2(String msg2) {
this.msg2 = msg2;
}
public String getMsg3() {
return msg3;
}
public void setMsg3(String msg3) {
this.msg3 = msg3;
}
public String getMsg4() {
return msg4;
}
public void setMsg4(String msg4) {
this.msg4 = msg4;
}




public boolean validateRegister(String username,String email, String password, String repassword) {
	if (username.equals(""))
		msg1 = "please enter username";
    if (email.equals(""))
        msg2 = "please enter email";
    else if (!email.matches("\\w+\\@\\w+\\.\\w{2,4}"))
        msg2 = "enter valid email";

    if (password.equals(""))
     msg3 = "please enter password";
    if (repassword.equals(""))
      msg4= "please re enter passowrd";
    else
     if (!(password.equals(repassword)))
      msg4 = "Repassword should match password";

    if(msg1.equals("") && msg2.equals("") && msg3.equals("")&& msg4.equals("") )
     return true;

      return false;
}
}