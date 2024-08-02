<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        margin: 0;
    }
    .update-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        margin: 10px 0 5px;
    }
    input[type="text"] {
        padding: 10px;
        margin-bottom: 10px;
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
    .message {
        color: green;
        text-align: center;
        margin-top: 10px;
    }
</style>
</head>
<body>
	<div class="update-container">
		<h1>Update Registration</h1>
		<form action="updateReg" method="post">
			<label for="email">Email:</label>
			<input type="text" id="email" name="email" value="<%=request.getAttribute("email")%>" />
			<label for="mobile">Mobile:</label>
			<input type="text" id="mobile" name="mobile" value="<%=request.getAttribute("mobile")%>" />
			<label for="country">Country:</label>
			<input type="text" id="country" name="country" value="<%=request.getAttribute("country")%>" />
			<input type="submit" value="Update" />
		</form>

		<%
		if (request.getAttribute("msg") != null) {
			out.println("<div class='message'>" + request.getAttribute("msg") + "</div>");
		}
		%>
	</div>
</body>
</html>
