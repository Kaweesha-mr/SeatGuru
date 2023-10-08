<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="static java.sql.DriverManager.getConnection" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="com.example.seat_guru_oop.ConnectDB" %>

<%--
  Created by IntelliJ IDEA.
  User: Kaweesha-Mr
  Date: 6/10/2023
  Time: 10:20 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- add a icon library -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <!-- ======= Styles ====== -->
  <link rel="stylesheet" href="./UserDashbord/assets/css/style.css">
  <link rel="stylesheet" href="./UserDashbord/assets/css/user_profile.css">
</head>

<body>

<% if (session == null || session.getAttribute("UserId") == null) {

  response.sendRedirect("login.jsp");
}

%>

<%
  String username = "";
  String email = "";
  String firstName = "";
  String lastName = "";
  String address = "";
  String city = "";
  String country = "";
  String aboutMe = "";
  int postalCode = 0;
  try {

    ConnectDB connectDB = new ConnectDB();
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection = connectDB.getConnection();

    assert session != null;
    int NIC = (int) session.getAttribute("UserId");
    System.out.println(NIC);
    PreparedStatement ps = connection.prepareStatement("select * from bus_ticket_reservation_system.user where NIC =?");
    ps.setInt(1, NIC);

    ResultSet rs = ps.executeQuery();

    if (!rs.next()) {

      System.out.println("ResultSet in empty in Java");

    } else {
      username = rs.getString("NIC");
      email = rs.getString("Email");
      firstName = rs.getString("FName");
      lastName = rs.getString("LName");
      address = rs.getString("Address");
      city = rs.getString("City");
      country = rs.getString("Country");
      postalCode = rs.getInt("PostalCode");
      aboutMe = rs.getString("ABoutMe");
    }



  } catch (SQLException | ClassNotFoundException e) {
    System.out.println(e);
  }
%>
<!-- =============== Navigation ================ -->
<div class="container">
  <div class="navigation">
    <ul>
      <li>
        <a href="#">
                        <span class="icon">
                            <ion-icon name="logo-apple"></ion-icon>
                        </span>
          <span class="title">Resevate</span>
        </a>
      </li>

      <li>
        <a href="#">
                        <span class="icon">
                            <ion-icon name="home-outline"></ion-icon>
                        </span>
          <span class="title">Dashboard</span>
        </a>
      </li>
      <li>
        <a href="#">
                        <span class="icon">
                            <!-- add user profile icon -->
                            <ion-icon name="person-outline"></ion-icon>
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
        <a href="logout">
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
          User Profile
        </label>
      </div>

      <div class="user">
        <img src="UserDashbord/assets/imgs/customer01.jpg" alt="">
      </div>
    </div>


    <!-- !create user profile from here -->


    <div class="card-body">
      <form class="main-form" action="update-servlet" method="get">
        <div class="buttons_edit_delete" id="btnSet1">
          <button id="editBtn" class="btn btn-icon btn-3 btn-primary edit" type="button">
                                <span class="btn-inner--icon">
                                    <!-- add edit icon -->
                                    <ion-icon name="create-outline"></ion-icon>
                                </span>
            <span class="btn-inner--text"> Edit Profile
            </span>
          </button>


          <button class="btn btn-icon btn-3 btn-danger delete" type="button" id="delete" >
                            <span class="btn-inner--icon">
                                <!-- add remove icon -->
                                <ion-icon name="trash-outline"></ion-icon>
                            </span>
            <span class="btn-inner--text">Delete Account</span>
          </button>
        </div>
        <h4 class="heading-small text-muted mb-4">User information</h4>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-username">Username</label>
                  <input type="text" id="input-username" class="form-control form-control-alternative" placeholder="Username" value="<%=username%>" disabled>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group">
                  <label class="form-control-label" for="input-email">Email address</label>
                  <input type="email" id="input-email" class="form-control form-control-alternative" name="Email" placeholder="<%=email%>>m" disabled>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-first-name">First name</label>
                  <input name="FName" type="text" id="input-first-name" class="form-control form-control-alternative" placeholder="First name" value="<%=firstName%>" disabled>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-last-name">Last name</label>
                  <input name="LName" type="text" id="input-last-name" class="form-control form-control-alternative" placeholder="Last name" value="<%=lastName%>" disabled>
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <!-- Address -->
          <h4 class="heading-small text-muted mb-4">Contact information</h4>
          <div class="pl-lg-4">
            <div class="row">
              <div class="col-md-12">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-address">Address</label>
                  <input id="input-address" name="Address" class="form-control form-control-alternative" placeholder="Home Address" value="<%=address%>" type="text" disabled>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-city">City</label>
                  <input type="text" id="input-city" name="City" class="form-control form-control-alternative" placeholder="City" value="<%=city%>" disabled>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group focused">
                  <label class="form-control-label" for="input-country">Country</label>
                  <input type="text" name="Country" id="input-country" class="form-control form-control-alternative" placeholder="Country" value="<%=country%>" disabled>
                </div>
              </div>
              <div class="col-lg-4">
                <div class="form-group">
                  <label class="form-control-label" for="input-country">Postal code</label>
                  <input type="number" id="input-postal-code" name="PostalCode" class="form-control form-control-alternative" placeholder="Postal Code" value="<%=postalCode%>" disabled>
                </div>
              </div>
            </div>
          </div>
          <hr class="my-4">
          <!-- Description -->
          <h4 class="heading-small text-muted mb-4">About me</h4>
          <div class="pl-lg-4">
            <div class="form-group focused">
              <label>About Me</label>
              <textarea  rows="4" name="AboutMe" class="form-control form-control-alternative" value="<%=aboutMe%>" placeholder="A few words about you ..." disabled ></textarea>
            </div>
          </div>
          <div class="save" id="btnSet2">
            <button type="submit" class="btn btn-success mt-4 savebtn" id="save">Save</button>
            <button type="button" class="btn btn-danger mt-4 Cancel" id="Cancel">Cancel</button>
          </div>
      </form>

      <!-- create yes no prompt popup  -->
      <div class="popup">
        <div class="title">
          <i class="fas fa-exclamation"></i>
          Are you sure?
        </div>
        <div class="buttons">
          <button class="no" id="No">No</button>
          <button class="yes" id="yes" ><a href="delete-servlet">Yes</a></button>
        </div>
      </div>
    </div>

    <!-- !End user profile from here -->
  </div>
</div>

  <!-- =========== Scripts =========  -->
  <script src="UserDashbord/assets/js/main.js"></script>

  <!-- ====== ionicons ======= -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>

</html>
