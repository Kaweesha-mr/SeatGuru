package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        int Nic = Integer.parseInt(req.getParameter("id"));
        String Password = req.getParameter("password");
        Password = passwordHash.doHashing(Password);

        ConnectDB connectDB = new ConnectDB();
        try {
            connectDB.login(Nic,Password);

        } catch (ClassNotFoundException e) {

            throw new RuntimeException(e);
        }


    }
}
