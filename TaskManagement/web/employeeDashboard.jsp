<%@ page import="dao.TaskDAO,model.Task,java.util.*" %>
<%
    model.User u = (model.User)session.getAttribute("user");
    if(u == null) {
        response.sendRedirect("login.jsp");
    }

    TaskDAO dao = new TaskDAO();
    List<Task> tasks = dao.getTasks(u.getId());
%>

<html>
<head>
    <title>Employee Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

    <h2>Welcome, <%= u.getName() %></h2>

    
    <div class="card">
        <h3>Add Task</h3>
        <form method="post" action="TaskServlet">
            <input type="hidden" name="action" value="add">
            <input type="hidden" name="empId" value="<%=u.getId()%>">

            <input name="title" placeholder="Task Title" required>
            <input name="desc" placeholder="Task Description" required>

            <button>Add Task</button>
        </form>
    </div>

 
    <div class="card">
        <h3>Your Tasks</h3>

        <% for(Task t : tasks){ %>
            <div class="task">
                <span>
                    <b><%= t.getTitle() %></b> <span class="status-badge <%= t.getStatus() %>"><%= t.getStatus() %>
                </span>
            </div>
        <% } %>
    </div>
<div style="text-align:right;">
    <form action="Logout.jsp">
        <button>Logout</button>
    </form>
</div>
</div>

</body>
</html>