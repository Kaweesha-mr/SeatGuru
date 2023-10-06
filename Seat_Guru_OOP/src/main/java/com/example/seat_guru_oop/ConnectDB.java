package com.example.seat_guru_oop;

import jakarta.servlet.RequestDispatcher;

import java.sql.*;

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



    public int login(int nic, String password) throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = getConnection();

        PreparedStatement ps = connection.prepareStatement("select NIC,Password from bus_ticket_reservation_system.user where NIC = ? and Password = ?");
        ps.setInt(1, nic);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();

        if(rs.next()){

            int NIC = rs.getInt("NIC");

            String Password = rs.getString("Password");

            if(Password.equals(password)){
                System.out.println("value 1 returned");
                return 1;
            }else{
                System.out.println("value 0 returned");
                return 0;
            }
        }else{
            System.out.println("query empty");
            return 0;
        }

    }
}
