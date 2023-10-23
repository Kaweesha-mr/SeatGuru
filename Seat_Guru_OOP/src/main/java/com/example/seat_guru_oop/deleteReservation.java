package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "deletersv", value = "/deletersv-servlet")
public class deleteReservation extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ConnectDB connectDB = new ConnectDB();
        HttpSession session = req.getSession(true);
        try {
            String reservationId = req.getParameter("ReservationID");
            connectDB.deleteReservation(Integer.parseInt(reservationId));
            resp.sendRedirect("delete reservations.jsp");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }
}
