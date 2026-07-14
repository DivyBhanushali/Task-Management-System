package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import dao.TaskDAO;
import model.Task;

public class TaskServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
        TaskDAO dao = new TaskDAO();

        if (action.equals("add")) {
            Task t = new Task();
            t.setTitle(req.getParameter("title"));
            t.setDescription(req.getParameter("desc"));
            t.setEmployeeId(Integer.parseInt(req.getParameter("empId")));
            dao.addTask(t);
        }

        res.sendRedirect("employeeDashboard.jsp");
    }
}
