package com.example.seat_guru_oop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebServlet(name = "update", value = "/update-servlet")

public class UpdateUsr extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(true);


        int username = (int) session.getAttribute("UserId");
        String FName = req.getParameter("FName");
        String LName = req.getParameter("LName");
        String Email = req.getParameter("Email");
        String address = req.getParameter("Address");
        String city = req.getParameter("City");
        String Country = req.getParameter("Country");
        int postalCode = Integer.parseInt(req.getParameter("PostalCode"));
        String aboutMe = req.getParameter("AboutMe");

        System.out.println(Country);
        System.out.println(postalCode);
        System.out.println(aboutMe);


        ConnectDB connectDB = new ConnectDB();

        try {

            connectDB.updateUser(username,FName,LName,Email,address,city,postalCode,aboutMe,Country);

            resp.sendRedirect("UserProfile.jsp");

        } catch (Exception e) {

            throw new RuntimeException(e);

        }



    }
}
