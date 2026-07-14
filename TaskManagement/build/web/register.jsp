<%@ page language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">
    <div class="card">

        <h2>Register</h2>

        <form method="post" action="RegisterServlet">
            <input type="text" name="name" placeholder="Enter Name" required>
            <input type="email" name="email" placeholder="Enter Email" required>
            <input type="password" name="password" placeholder="Enter Password" required>

            <select name="role">
                <option value="employee">Employee</option>
                <option value="manager">Manager</option>
            </select>

            <button type="submit">Register</button>
        </form>

        <a href="login.jsp">Back to Login</a>

    </div>
</div>

</body>
</html>