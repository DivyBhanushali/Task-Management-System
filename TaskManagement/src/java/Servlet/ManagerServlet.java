package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import dao.TaskDAO;

public class ManagerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String action = req.getParameter("action");
        int id = Integer.parseInt(req.getParameter("id"));

        TaskDAO dao = new TaskDAO();

        if (action.equals("complete")) {
            dao.updateStatus(id);
        } else if (action.equals("delete")) {
            dao.deleteTask(id);
        }

        res.sendRedirect("managerDashboard.jsp");
    }
}
