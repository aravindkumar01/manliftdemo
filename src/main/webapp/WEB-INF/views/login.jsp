<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form id="logForm" modelAttribute="Login" action="logCreation" method="post" commandname="Login">
	 <div class="form-group">
                          <label class="bmd-label-floating">Username</label>
                          <input type="text" class="form-control" name="username">
                        </div>
                         <div class="form-group">
                          <label class="bmd-label-floating">Passwors</label>
                          <input type="text" class="form-control" name="password">
                        </div>
	  <button type="submit">Create</button>
	</form>
</body>
</html>