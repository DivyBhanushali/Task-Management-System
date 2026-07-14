package dao;

import java.sql.*;
import model.User;

public class UserDAO {
    public User login(String email, String password) {
        try (Connection con = DBConnection.getConnection()) {
            PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("user_id"));
                u.setName(rs.getString("name"));
                u.setRole(rs.getString("role"));
                return u;
            }
        } catch (Exception e) { e.printStackTrace(); }
        return null;
    }
}