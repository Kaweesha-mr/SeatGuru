package com.example.seatguru;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/register")
public class Register extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String NIC = req.getParameter("NIC");
        String FName = req.getParameter("FName");
        String LName = req.getParameter("LName");
        String Email = req.getParameter("Email");
        String Password = req.getParameter("Password");
        Password = passwordHash.doHashing(Password);





    }
}
