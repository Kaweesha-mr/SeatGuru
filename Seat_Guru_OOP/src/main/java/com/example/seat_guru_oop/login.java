package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "loginServlet", value = "/login-servlet")
public class login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        int Nic = Integer.parseInt(req.getParameter("id"));
        String Password = req.getParameter("password");
        Password = passwordHash.doHashing(Password);



        ConnectDB connectDB = new ConnectDB();

        try {
           int isSuccess =  connectDB.login(Nic,Password);




        } catch (ClassNotFoundException | SQLException e) {

            throw new RuntimeException(e);
        }


    }
}
