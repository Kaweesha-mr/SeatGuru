package com.example.seat_guru_oop;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

@WebServlet(name = "search", value = "/search")
public class Search extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        System.out.println("Search Servlet");

        String To = req.getParameter("TO");
        String From = req.getParameter("FROM");
        String date = req.getParameter("date");
        String Passanger = req.getParameter("passanger");


        System.out.println("To: " + To);
        System.out.println("From: " + From);
        System.out.println("Date: " + date);


        To = To.toLowerCase();
        From = From.toLowerCase();

        List<BusRoute> busRoutes = null;
        ConnectDB connectDB = new ConnectDB();

        try {
            Connection connection = connectDB.getConnection();

            try {

                busRoutes = connectDB.search(To, From, date);
                // Set the ArrayList as an attribute in the request
                req.setAttribute("busRoutes", busRoutes);

                // Forward the request to the jsp file
                RequestDispatcher dispatcher = req.getRequestDispatcher("Reslut.jsp");
                dispatcher.forward(req, resp);

            } catch (Exception e) {
                throw new RuntimeException(e);
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
