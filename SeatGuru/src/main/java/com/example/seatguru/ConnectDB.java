package com.example.seatguru;

import java.lang.reflect.Member;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectDB {

    private static String url = "jdbc:mysql://localhost:3306/bus_ticket_reservation_system";
    private static String username = "root";
    private static String password = "ksmr123";
    private static String driver = "com.mysql.cj.jdbc.Driver";

    public void loadDriver(String driver){
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    private static Connection connection;

    public static Connection getConnection() throws SQLException {

        try {

            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connected");
        } catch (Exception e) {

            System.out.println("Not Connected");
            e.printStackTrace();
        }
        return connection;
    }

    public int insert (User Usr) throws SQLException {
        loadDriver(driver);
        Connection connection = getConnection();

        String sql  = "insert into user values(?,?,?,?,?)";
        int isSuccess = 0;

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, Usr.getNIC());
            ps.setString(2, Usr.getFName());
            ps.setString(3, Usr.getLName());
            ps.setString(4, Usr.getEmail());
            ps.setString(5, Usr.getPassword());
            int rs = ps.executeUpdate();

            if (rs == 0) {
                isSuccess = 0;
            } else
                isSuccess = 1;


            return isSuccess;



        } catch (SQLException e) {
            System.out.println("Insertion failed");
            throw new RuntimeException(e);
        }

    }


}
