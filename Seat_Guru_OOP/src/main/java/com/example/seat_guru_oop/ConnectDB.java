package com.example.seat_guru_oop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectDB {
    private String dburl = "jdbc:mysql://localhost:3306/bus_ticket_reservation_system";
    private String dbuname = "root";
    private String dbpassword = "ksmr123";

    public Connection getConnection() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(dburl, dbuname, dbpassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }

    public void register (User Usr) throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = getConnection();

        String sql  = "insert into bus_ticket_reservation_system.user (NIC, FName, LName, Email,Password) values (?,?,?,?,?);";

        int isSuccess = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, Usr.getNIC());
            ps.setString(2, Usr.getFName());
            ps.setString(3, Usr.getLName());
            ps.setString(4, Usr.getEmail());
            ps.setString(5, Usr.getPassword());
            int rs = ps.executeUpdate();

            if (rs == 1){
                System.out.println("Success");
            }else {
                System.out.println("unSuccess");
            }
        } catch (SQLException e) {

            System.out.println(e);


        }

    }



    public void login(int nic, String password) throws ClassNotFoundException {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = getConnection();

        String sql = "Select NIC,Password from user where = NIC="+nic;


        /*store them*/


    }
}
