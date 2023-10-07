<%@ page import="com.example.seat_guru_oop.ConnectDB" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Garment And Management System</title>

  <!-- !external resouces that are got to style the landing page and login,register popup -->
  <link rel="stylesheet" href="./css/swiper-bundle.min.css">
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" />

  <!-- boot starp include -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">




  <!-- !styles for main landing page -->
  <link rel="stylesheet" href="./Landing/css/Slider_style.css">
  <link rel="stylesheet" href="./Landing/css/Cards.css">
  <link rel="stylesheet" href="./Landing/css/counting.css">
  <link rel="stylesheet" href="./Landing/css/feedback.css">
  <link rel="stylesheet" href="./Landing/css/footer.css">
  <link rel="stylesheet" href="./Landing/css/form.css">
  <link rel="stylesheet" href="./Landing/css/reslut.css">

  <!-- font-awesome libarary for icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <style>
    .checked {
      color: orange;
    }
  </style>


</head>

<body>
  <!-- !navigation Bar -->
  <header>
    <div class="nav-bar">
      <a href="" class="logo">
        <ion-icon name="bus-outline" class="logo"></ion-icon>
        SeatGuru</a>
      <div class="navigation">
        <div class="nav-items">
          <a href="../Landing/Landing.html"> Home</a>
          <a href="./ContactUs.html"> Contact Us</a>
          <a href="./about us/aboutUs.html"> About Us</a>
          <!-- make this button blue ane make it red when hover -->
          <a href="../Login Register Page/index.html"><button type="button"
              class="btn btn-dark btnlogin">Login</button></a>
        </div>
      </div>
    </div>
  </header>


  <!-- !navigation Bar ended-->

  <main>

    <%
      try {
        int busID = 0;
        ConnectDB connectDB = new ConnectDB();
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = connectDB.getConnection();

        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
          for (Cookie cookie : cookies) {
            if (cookie.getName().equals("Busid")) {
              busID = Integer.parseInt(cookie.getValue());
            }
          }
        }

        System.out.println(busID);
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
          ps = connection.prepareStatement("SELECT Name,Type,Bus_Reg_No,Dep,Arr,bus_route.To,bus_route.From,bus_route.TicketP FROM bus,bus_route where bus_route.BusID=bus.BusID AND bus.BusID =?;");
          ps.setInt(1, busID);
          rs = ps.executeQuery();
        } catch (SQLException e) {

            System.out.println(e);
        }

        assert rs != null;
        if (!rs.next()) {

          System.out.println("ResultSet in empty in Java");

        } else {
          String name = rs.getString("Name");
            String type = rs.getString("Type");
            String busRegNo = rs.getString("Bus_Reg_No");
            String dep = rs.getString("Dep");
            String arr = rs.getString("Arr");
            String to = rs.getString("To");
            String from = rs.getString("From");
            String ticketP = rs.getString("TicketP");


        }


      } catch (SQLException | ClassNotFoundException e) {
        System.out.println(e);
      }
    %>

    <div class="container">
      <div class="table-title">
        <div class="form-group">
          <label><i class="fas fa-subway"></i>
            <span class="train-proceed">
                             Train Info
                          </span>
          </label>
          <div class="table-title-route" id="oneway_stations">
            <span><span class="s-station">TO</span></span>
            <span><i class="fas fa-chevron-right"></i></span>
            <span><span class="e-station">Colombo Fort</span></span>
            <span><img src="images/icons/train_2.svg" style="float: right" height="60"></span>
          </div>
          <small style="margin-bottom: 8px;" class="form-text text-muted" id="oneway_date">Date
            - 2023-10-17</small>
          <span style="font-size: 14px; font-weight: 400;">
                          <span style="margin-right: 10px;">Select a train and proceed</span>
                             <i class="fas fa-chevron-right"></i>
                      </span>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <table class="table table-dark table-hover">
            <thead>
            <tr>
              <th scope="col">Bus Name</th>
              <th scope="col">From</th>
              <th scope="col">To</th>
              <th scope="col">Ticket Price</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <th scope="row">Kandy Express</th>
              <td>Kandy</td>
              <td>Colombo</td>
              <td>Rs. 500</td>
            </tr>
            <tr>
              <th scope="row">Kandy Express</th>
              <td>Kandy</td>
              <td>Colombo</td>
              <td>Rs. 500</td>
            </tr>
            <tr>
              <th scope="row">Kandy Express</th>
              <td>Kandy</td>
              <td>Colombo</td>
              <td>Rs. 500</td>
            </tr>

            <tr>
              <th scope="row">Kandy Express</th>
              <td>Kandy</td>
              <td>Colombo</td>
              <td>Rs. 500</td>
            </tr>

            <tr>
              <th scope="row">Kandy Express</th>
              <td>Kandy</td>
              <td>Colombo</td>
              <td>Rs. 500</td>
            </tr>

            </tbody>
          </table>
        </div>
      </div>
      </div>

  </main>

  


  <!-- !footer starts here -->

  <section class="footer-container">

    <footer>
      <div class="footer-content">
        <h3>Sri Lanka Institute of Information Technology</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat voluptatum, necessitatibus eveniet
          provident ducimus dignissimos veniam nisi consequatur dolore eligendi reiciendis tempora quod aspernatur
          explicabo iste quae impedit, officia sit.</p>
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

    <!-- !footer ends here -->


  </section>


  <!-- <script src="./JS/Form.js"></script> -->

  <!-- !counting cards js connected -->
  <script src="./JS/couting.js"></script>

  <!-- !swiper.js library is added  -->
  <script src="./JS/swiper-bundle.min.js"></script>

  <!-- !iconicons icons pack js is added here -->
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</body>

<script>

  let checkbox = document.getElementById('toggle');
  let pickReturn = document.getElementById('pickReturn');

  checkbox.addEventListener('change', function () {
    if (this.checked) {
      pickReturn.style.display = "block";
    } else {
      pickReturn.style.display = "none";
    }
  });



</script>

<script src="./JS/table.js"></script>
<!-- !Swiper JS -->
<script src="js/swiper-bundle.min.js"></script>
<!-- !JavaScript -->
<script src="./JS/feedback.js"></script>



</html>