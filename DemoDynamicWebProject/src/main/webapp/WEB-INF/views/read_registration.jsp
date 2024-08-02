<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="menu.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Read Registration</title>
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
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: blue;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
    a {
        text-decoration: none;
        color: white;
        font-weight: bold;
    }
    a:hover {
        color: #4cae4c;
    }
</style>
</head>
<body>
	<div class="container">
		<h1>List of Users</h1>
		<table>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Country</th>
				<th>Action</th>
				<th>Action</th>
			</tr>

			<%
			ResultSet result = (ResultSet) request.getAttribute("res");
			while (result.next()) {
			%>
			<tr>
				<td><%=result.getString(1)%></td>
				<td><%=result.getString(2)%></td>
				<td><%=result.getString(3)%></td>
				<td><%=result.getString(4)%></td>
				<td><a href="deleteReg?email=<%=result.getString(2)%>">Delete</a></td>
				<td><a href="updateReg?email=<%=result.getString(2)%>&mobile=<%=result.getString(3)%>&country=<%=result.getString(4)%>">Update</a></td>
			</tr>

			<%
			}
			%>
		</table>
	</div>
</body>
</html>
