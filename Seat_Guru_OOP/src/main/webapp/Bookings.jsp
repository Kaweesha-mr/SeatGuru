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

<% if (session == null || session.getAttribute("UserId") == null) {

  response.sendRedirect("./login.jsp");
}
  else{

%>

<jsp:include page="./NavigationBar.jsp" />


<div class="card-container">

  <div class="right">
    <div class="form-container tickets">

      <!-- create a form with select seats option with dropdown menu -->




        <%
          ConnectDB connectDB = new ConnectDB();



          String id = request.getCookies()[0].getValue();

          String TicketPrice = null;
          try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = connectDB.getConnection();

            String sql = "SELECT * FROM bus_ticket_reservation_system.bus,bus_ticket_reservation_system.bus_route where bus.BusID=bus_route.BusID and bus.BusID = ?;";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, id);

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
              TicketPrice = resultSet.getString("TicketP");
            }

          }
          catch (SQLException | ClassNotFoundException e) {
            System.out.println(e);
          }




        %>

      <form action="bookingUpdate" method="get" class="tickForm">

        <h1>Chose Ticket</h1>

        <label>No Seats</label>
        <input type="number" name="seats" id="seats" class="price count" ticketPrice="<%=TicketPrice%>"/>
        <label>Amount</label>
        <input type="text" name="amount" id="seats" class="value" value="0.00" readonly />
        <input type="text" name="id" style="display: none" value="<%=id%>">
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

    let count =   document.querySelector('.count');
    let value =   document.querySelector('.value');

    count.addEventListener('change',()=>{
      value.value = count.value * count.getAttribute('ticketPrice');
    })


    let sessionAvlble = <% if(session == null || session.getAttribute("UserId") == null){%> false <%}else{%> true <%}%>

    if(sessionAvlble){
      document.querySelector('#login').style.display = 'none';
      document.querySelector('#logout').style.display = 'block';
    }
    else{
      document.querySelector('#login').style.display = 'block';
      document.querySelector('#logout').style.display = 'none';
    }






  </script>

</body>
</html>
        <%}%>