<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }
    a {
        display: inline-block;
        margin: 10px 20px;
        padding: 10px 20px;
        border-radius: 4px;
        background-color: #5cb85c;
        color: white;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        background-color: #4cae4c;
    }
</style>
</head>
<body>
    <div class="container">
        <a href="createReg">Add New User</a>
        <a href="readReg">List of Users</a>
        
        <form action="logoutReg" method="post">
        
            <input type="submit" value="Logout"/>
           
        </form>
        
    </div>
</body>
</html>
