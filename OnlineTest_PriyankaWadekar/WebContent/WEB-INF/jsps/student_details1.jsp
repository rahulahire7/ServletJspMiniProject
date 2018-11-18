<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
<c:import url="header.jsp"></c:import>

<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<div style="margin-left:10%">
				  	<h2 class="style">Student Details</h2>
				  	
					       <form method="post" action="enter_student_details1">
					       <input type="hidden" name="action" value="student_details1">
					    	
						    
						    <div>
						    	<span><label>Tech Skills</label></span>
						    	<span><input name="tech_skills" type="text" class="textbox" style="width: 65%;"></span>
						    	
						    </div>
						    <div>
						    	<span><label>Certification Courses(put NA if you havent done any!)</label></span>
						    	<span><input name="certification_courses" type="text" class="textbox" style="width: 65%;"></span>
						    	
						    </div>
						    <div>
						    	<span><label>BE Aggregate</label></span>
						    	<span><input name="be_aggregate" type="text" class="textbox" style="width: 65%;"></span>
						    	
						    </div>
						    <div>
						    	<span><label>Internship</label></span>
						    	<span><select name="internship" style="width: 65%; height: 40px; background-color: #ffffff " >
						    	<option style="width: 65%; height: 40px; background-color: #ffffff">--Have you done any internship?--</option>
						    	<option value="yes" style="width: 65%; height: 40px; background-color: #ffffff">YES</option>
						    	<option value="no" style="width: 65%; height: 40px; background-color: #ffffff">NO</option>
						        </select></span>
						        
						    </div>
						    <div>
						    	<span><label>No.Of Dead kt's</label></span>
						    	<span><input name="dead_kt" type="text" class="textbox" style="width: 65%;"></span>
						    	
						    </div>
						    <div>
						    	<span><label>Placed</label></span>
						    	<span><select name="placed" style="width: 65%; height: 40px; background-color: #ffffff " >
						    	<option style="width: 65%; height: 40px; background-color: #ffffff">--Placed?--</option>
						    	<option value="yes" style="width: 65%; height: 40px; background-color: #ffffff">YES</option>
						    	<option value="no" style="width: 65%; height: 40px; background-color: #ffffff">NO</option>
						    	</select>
						    	
						    	</span>
						        
						    </div>
						   <div>
						   		<span><input type="submit" value="Check Result"></span>
						  </div>
					    </form>
				    </div>
  				</div>		
</div>
</body>


</html>