<%@ page import="com.example.seat_guru_oop.ConnectDB" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- ======= Styles ====== -->
    <link rel="stylesheet" href="./UserDashbord/assets/css/style.css">
    <link rel="stylesheet" href="./UserDashbord/assets/css/user_profile.css">
</head>

</head>


<body>


    <!-- =============== Navigation ================ -->
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon">
                            <ion-icon name="logo-apple"></ion-icon>
                        </span>
                        <span class="title"></span>
                    </a>
                </li>

                <li>
                    <a href="../Admin Dashbord - Employee/Home.html">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
                        <span class="title">Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="UserProfile.jsp">
                        <span class="icon">
                            <!-- add user icon -->
                            <ion-icon name="person-add-outline"></ion-icon>
                        </span>
                        <span class="title">User Profile</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon">
                            <!-- add messages icon -->
                            <ion-icon name="mail-outline"></ion-icon>
                        </span>
                        <span class="title">Messages</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <span class="icon">
                            <!-- add message icon -->
                            <ion-icon name="log-out-outline"></ion-icon>
                        </span>
                        <span class="title">Sign Out</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- ========================= Main ==================== -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>

                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>

                <div class="user">
                    <img src="../../../../../admin%20form/UserDashbord/assets/imgs/customer01.jpg" alt="">
                </div>
            </div>
            <!-- ================ Order Details List ================= -->
            <div class="details">
                <div class="recentOrders">
                    <div class="cardHeader">
                        <h2>Recent Reservation</h2>
                        
                    </div>

                    <table>
                        <thead>
                            <tr>
                                <td>Bus_Id</td>
                                <td>Booked Date</td>
                                <td>Booked Date</td>
                                <td>Delete</td>
                            </tr>
                        </thead>

                        <tbody>
                        <%

                            try {
                                ConnectDB connectDB = new ConnectDB();
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection connection = connectDB.getConnection();

                                PreparedStatement ps = connection.prepareStatement("SELECT * FROM bus_ticket_reservation_system.booked where booked.UserID = ?;");
                                ps.setInt(1, (Integer) session.getAttribute("UserId"));
                                ResultSet rs = ps.executeQuery();

                                String BusId = null;
                                String Date_Booked = null;
                                String ReservationID = null;




                                while (rs.next()) {


                                    BusId = rs.getString("BusID");
                                    Date_Booked = rs.getString("Date");
                                    ReservationID = rs.getString("Reservation_ID");




                        %>

                        <tr>
                            <td><a href="#"> <%=ReservationID%></a></td>
                            <td><a href="#"><%=BusId%></a> </td>
                            <td><a href="#"> <%=Date_Booked%></a></td>
                            <td><a href="deletersv-servlet?ReservationID=<%=ReservationID%>">Delete</a></td>
                        </tr>

                        <%
                                }

                            } catch (Exception e) {
                                System.out.println(e);
                            }

                        %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- =========== Scripts =========  -->
    <script src="../../../../../admin%20form/UserDashbord/assets/js/main.js"></script>

    <!-- ====== ionicons ======= -->
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>