package com.example.seat_guru_oop;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "BookUpdate", value = "/bookingUpdate")
public class bookingUpdate extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        String seat = req.getParameter("seats");
        String price = req.getParameter("amount");

        ConnectDB connectDB = new ConnectDB();



        try {

            System.out.println("Before function executed");
            connectDB.updateBooking(id, seat);
            resp.sendRedirect("login.jsp");

        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException(e);
        }


    }
}
