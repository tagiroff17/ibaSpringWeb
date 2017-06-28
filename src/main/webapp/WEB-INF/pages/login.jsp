<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- <link href="<%=request.getContextPath()%>/resources/css/home.css"
	rel="stylesheet" /> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <link href="<s:url value='/resources/css/common.css'/>" rel="stylesheet">

<title>Login Application</title>


</head>

<body>
<div class="container">
	<div class="row">

		<div class="col-md-4 col-md-offset-4 text-center">
	
			<div class="search-box">
				<div class="caption">
					<h3>Welcome Home!</h3>
					<p>Login:</p>
				</div>
	<!-- 			<form action="" class="loginForm">
					<div class="input-group">
						<input type="text" id="name" class="form-control" placeholder="Username">
						<input type="password" id="paw" class="form-control" placeholder="Password">
						<input type="submit" id="submit" class="form-control" value="Submit">
					</div>
				</form> -->
	
	
				
<form method="POST"
		action="<%=request.getContextPath()%>/j_spring_security_check"
		class="loginForm">

<div class="input-group">
			<input type='text'name='user_login' value='' class="form-control" placeholder="Username"> 
			<input type='password' name='password_login' class="form-control" placeholder="Password"/>
			<input type="submit" class="form-control .btn btn-success" value="Submit">
</div>	

<div>	
	<c:if test="${not empty error}">
		<span class="alert alert-danger alert-danger" >${error}</span>
	</c:if> 
</div>	

</form>

			</div>
		</div>
	</div>
</div>






<script src="<s:url value='/resources/js/common.js'/>"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
        integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
        crossorigin="anonymous"></script>

</body>
</html>