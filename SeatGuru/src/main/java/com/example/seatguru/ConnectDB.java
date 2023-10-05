package com.example.seatguru;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {

    private static String url = "jdbc:mysql://localhost:3306/bus_ticket_reservation_system";
    private static String username = "root";
    private static String password = "ksmr123";
    private static Connection connection;

    public static Connection getConnection() throws SQLException {

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connected");
        } catch (Exception e) {

            System.out.println("Not Connected");
            e.printStackTrace();
        }
        return connection;
    }


}
