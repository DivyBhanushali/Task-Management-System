<%@ page language="java" %>
<html>
<head>
    <title>Welcome To TaskManager</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
    <div class="card">

        <h2>Login</h2>

        <form method="post" action="LoginServlet">
            <input type="text" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <button type="submit">Login</button>
        </form>

       
        <form action="register.jsp">
            <button type="submit">New User? Register</button>
        </form>

        <% if(request.getParameter("error") != null){ %>
            <p class="error">Invalid Email or Password</p>
        <% } %>

    </div>
</div>

</body>
</html>