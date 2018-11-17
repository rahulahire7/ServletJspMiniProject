<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/signup-img1.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form" action="RegisterServlet">
                        <h2>Photography Department Registration</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name"><i class="fas fa-user">&nbsp;&nbsp;Name :</i></label>
                                <input type="text" name="name" id="name" required/>
                            </div>
                            <div class="form-group">
                                <label for="father_name"><i class="fas fa-user">&nbsp;&nbsp;User Name :</i></label>
                                <input type="text" name="uname" id="father_name" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password"><i class="fas fa-unlock-alt">&nbsp;&nbsp;Password :</i></label>
                            <input type="password" name="password" id="password" minlength="8" maxlength="20" pattern=".{6,}" title="Six or more characters" required/>
                        </div>
                        <div class="form-radio">
                            <label for="gender" class="radio-label">Gender :</label>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="male" value="male" checked>
                                <label for="male"><i class="fas fa-male">&nbsp;&nbsp;Male</i></label>
                                <span class="check"></span>
                            </div>
                            <div class="form-radio-item">
                                <input type="radio" name="gender" id="female" value="female">
                                <label for="female"><i class="fas fa-female">&nbsp;&nbsp;Female</i></label>
                                <span class="check"></span>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State :</label>
                                <div class="form-select">
                                    <select name="state" id="state">
                                        <option value=""></option>
                                        <option value="Maharashtra">Maharashtra</option>
                                        <option value="Gujurat">Gujarat</option>
										<option value="Rajasthan">Rajasthan</option>
										<option value="Goa">Goa</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="city">City :</label>
                                <div class="form-select">
                                    <select name="city" id="city">
                                        <option value=""></option>
                                        <option value="Mumbai">Mumbai</option>
                                        <option value="Surat">Surat</option>
										<option value="Vadodara">Vadodara</option>
										<option value="Jaipur">Jaipur</option>
										<option value="Jodhpur">Jodhpur</option>
										<option value="Panaji">Panaji</option>
										<option value="Nagpur">Nagpur</option>
										<option value="Pune">Pune</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="pincode"><i class="fas fa-mobile">&nbsp;&nbsp;Mobile No :</i></label>
                            <input type="text" name="mobile" id="pincode" pattern="[789][0-9]{9}" required/>
                        </div>
                        <div class="form-group">
                            <label for="course">Course :</label>
                            <div class="form-select">
                                <select name="course" id="course">
                                    <option value=""></option>
                                    <option value="wildlife">Wildlife</option>
                                    <option value="nature">Nature</option>
                                    <option value="models">Models</option>
                                </select>
                                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="fas fa-envelope">&nbsp;&nbsp;Email ID :</i></label>
                            <input type="email" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required/>
                        </div>
                        <div class="form-submit">
                            <input type="reset" value="Reset All" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Submit Form" class="submit" name="submit" id="submit" /><br><br>
							<h3><strong><a href="Login.jsp">Already a user?</a></strong></h3>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>