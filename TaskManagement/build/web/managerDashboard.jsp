<%@ page import="dao.TaskDAO,model.Task,java.util.*" %>
<%
    model.User u = (model.User)session.getAttribute("user");
    if(u == null) {
        response.sendRedirect("login.jsp");
    }

    TaskDAO dao = new TaskDAO();
    List<Task> tasks = dao.getAllTasks();
%>

<html>
<head>
    <title>Manager Dashboard</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

    <h2>Manager Dashboard </h2>

    <div class="card">
        <h3>All Tasks</h3>

        <% for(Task t : tasks){ %>
            <div class="task">
                <span>
                    <b><%= t.getTitle() %></b> <span class="status-badge <%= t.getStatus() %>"><%= t.getStatus() %>
                </span>

                <span>
                    <a href="ManagerServlet?action=complete&id=<%=t.getId()%>" class="action-complete">Complete</a>
                    <a href="ManagerServlet?action=delete&id=<%=t.getId()%>" class="action-delete">Delete</a>
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