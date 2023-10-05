package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
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
         connectDB.insert(user);
         resp.sendRedirect("login.jsp");
        } catch (SQLException | ClassNotFoundException e) {

            throw new RuntimeException(e);

        }
    }
}
