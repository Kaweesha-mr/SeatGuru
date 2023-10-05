package com.example.seatguru;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Register")
public class Register extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String NIC = req.getParameter("NIC");
        String FName = req.getParameter("FName");
        String LName = req.getParameter("LName");
        String Email = req.getParameter("Email");
        String Password = req.getParameter("Password");

        User user = new User(NIC,FName,LName,Email,Password);
        ConnectDB connectDB = new ConnectDB();
        try {
            int result = connectDB.insert(user);
            if (result == 1){
                resp.sendRedirect("login.jsp");
            }else {
                resp.sendRedirect("register.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
