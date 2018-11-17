<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Apply Course</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <div class="main">

        <section class="signup">
            <!-- <img src="images/signup-bg.jpg" alt=""> -->
            <div class="container">
                <div class="signup-content">
                    <form method="post" id="signup-form" class="signup-form" action="ApplyCourse">
                        <h2 class="form-title">Apply Course</h2>
                        <div class="form-group">
                        <label name="Course">Courses</label>
                            <select id="courses" class="form-input" name="courses">
                            <option value="Basic Preminary Yoga Course" >Basic Preminary Yoga Course</option>
                            <option value="Repeater Course">Repeater Course</option>
                            <option value="Hath Pranit Pramanpatra">Hath Pranit Pramanpatra</option>
                            <option value="Advance Guidence Course">Advance Guidence Course</option>
                            </select>
                        </div>
                        <div class="form-group">
                        <label name="Course">Duration</label>
                            <select id="duration" class="form-input" name="duration">
       				 <option value="3">3 Month</option>
      					<option value="2">2 Month</option>
     					 <option value="6">6 Month</option>
  						  </select>
                        </div>
                        <div class="form-group">
                            <label name="Course">Hours/Week</label>
                            <select id="duration" class="form-input" name="hrs_per_week">
       				 <option value="3">12</option>
      					<option value="2">6</option>
     					 <option value="6">9</option>
  						  </select>
                        </div>
                        <div class="form-group">
                            <label for="Course">Hours/Day</label>
                            <select id="duration"class="form-input" name="hrs_per_day">
       				 <option value="3">2</option>
      					<option value="2">3</option>
     					 <option value="6">4</option>
  						  </select>
                        </div>
                        <div class="form-group">
                      <%String str=(String)session.getAttribute("uname") ;
                            		session.setAttribute("user_name", str);
                      %>
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" id="submit" class="form-submit" value="Apply"/>
                        </div>
                    </form>
                    
                </div>
            </div>
        </section>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>