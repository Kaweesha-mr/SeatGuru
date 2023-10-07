package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

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
            int Busid = connectDB.search(To,From,date);

            if(Busid == 0){
                System.out.println("No Bus Found");
            }
            else{
                System.out.println("Bus Found");
                Cookie cookie = new Cookie("Busid", String.valueOf(Busid));
                cookie.setMaxAge(60*60*24);
                resp.addCookie(cookie);
            }
            resp.sendRedirect("Reslut.jsp");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }


    }
}
