<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .login-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: blue;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    input[type="text"],
    input[type="password"] {
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #5cb85c;
        color: #fff;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #4cae4c;
    }
    .error-message {
        color: red;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
	<div class="login-container">
		<h2>Login Here...</h2>
		<form action="loginReg" method="post">
			<label for="email">Email</label>
			<input type="text" id="email" name="email"/>
			<label for="password">Password</label>
			<input type="password" id="password" name="password"/>
			<input type="submit" value="Login" />
		</form>

		<%
		if (request.getAttribute("error") != null) {
			out.println("<div class='error-message'>" + request.getAttribute("error") + "</div>");
		}
		%>
	</div>
</body>
</html>
