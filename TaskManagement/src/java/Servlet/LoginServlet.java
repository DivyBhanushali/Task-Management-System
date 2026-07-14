package servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import dao.UserDAO;
import model.User;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("password");

        UserDAO dao = new UserDAO();
        User u = dao.login(email, pass);

        if (u != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", u);

            if (u.getRole().equals("manager"))
                res.sendRedirect("managerDashboard.jsp");
            else
                res.sendRedirect("employeeDashboard.jsp");
        } else {
            res.sendRedirect("login.jsp?error=1");
        }
    }
}