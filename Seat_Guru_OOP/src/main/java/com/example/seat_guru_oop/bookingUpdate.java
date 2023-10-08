package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;


@WebServlet(name = "BookUpdate", value = "/bookingUpdate")
public class bookingUpdate extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String id = req.getParameter("id");
        String seat = req.getParameter("seats");
        String date = req.getParameter("amount");

        System.out.println(id);
        System.out.println(seat);
        System.out.println(date);

    }
}
