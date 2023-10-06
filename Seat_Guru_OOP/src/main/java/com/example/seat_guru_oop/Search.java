package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;

@WebServlet(name = "search", value = "/search")
public class Search extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        System.out.println("Search Servlet");

        String To = req.getParameter("TO");
        String From = req.getParameter("FROM");
        String date = req.getParameter("date");
        String Passanger = req.getParameter("passanger");


        System.out.println(To);
        System.out.println(From);
        System.out.println(date);


        To = To.toLowerCase();
        From = From.toLowerCase();

        ConnectDB connectDB = new ConnectDB();

        try {
            Connection connection = connectDB.getConnection();
            connectDB.search(To,From,date);
            resp.sendRedirect("Reslut.jsp");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
