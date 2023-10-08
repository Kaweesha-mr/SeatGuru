        <%@ page import="com.example.seat_guru_oop.ConnectDB" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
        <%@ page import="java.sql.SQLException" %>
        <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="./Bookings/style.css">
</head>
<body>

<!-- !navigation Bar -->
<header>
  <div class="nav-bar">
    <a href="" class="logo">Fashion Treak Garments</a>
    <div class="navigation">
      <div class="nav-items">
        <a href="../Landing/Landing.html"> Home</a>
        <a href="./ContactUs.html"> Contact Us</a>
        <a href="./about us/aboutUs.html"> About Us</a>
        <!-- make this button blue ane make it red when hover -->
        <a href="../Login Register Page/index.html"><button type="button" class="btn btn-dark btnlogin">Login</button></a>

      </div>
    </div>
  </div>
</header>


<div class="card-container">

  <div class="right">
    <div class="form-container tickets">

      <!-- create a form with select seats option with dropdown menu -->

      <form action="" method="get" class="tickForm">

        <h1>Chose Ticket</h1>


        <%
          ConnectDB connectDB = new ConnectDB();



          String id = request.getCookies()[0].getValue();

          String TicketPrice = null;
          try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = connectDB.getConnection();

            String sql = "SELECT * FROM bus_ticket_reservation_system.bus,bus_ticket_reservation_system.bus_route where bus.BusID=bus_route.BusID and bus.BusID = ?;;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);

            ResultSet resultSet = statement.executeQuery();

            TicketPrice = resultSet.getString("TicketP");
            System.out.println(TicketPrice);


          }
          catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
          }

        %>

        <label for="">No Seats</label>
        <input type="number" name="seats" id="seats" class="price count" ticketPrice="<%=TicketPrice%>"/>
        <label>Amount</label>

        <input type="text" name="amount" id="seats" class="value" value="0.00" readonly />
        <button type="submit" >Book Now</button>
        <button type="reset">Reset</button>
      </form>
    </div>
  </div>

</div>

<!-- !navigation Bar ended-->





<section class="footer-container">

  <footer>
    <div class="footer-content">
      <h3>Sri Lanka Institute of Information Technology</h3>
      <ul class="socials">
        <li><a href="#"> <i class="fa fa-facebook"></i> </a></li>
        <li><a href="#"> <i class="fa fa-twitter"></i> </a></li>
        <li><a href="#"> <i class="fa fa-google-plus"></i> </a></li>
        <li><a href="#"> <i class="fa fa-youtube"></i> </a></li>
        <li><a href="#"> <i class="fa fa-linkedin"></i> </a></li>
      </ul>
    </div>

    <div class="footer-bottem">
      <p>copyright &copy;2020 Kaweesha Marasinghe. Designed by MLB_14.02_02</p>
    </div>

  </footer>

  <script>
    const seats = document.querySelector(".count");
    const price = document.querySelector(".price");
    const value = document.querySelector(".value");


    seats.addEventListener("change", function () {
      console.log(price.getAttribute("ticketPrice"));
      console.log(seats.value);
    });




  </script>

</body>

</html>