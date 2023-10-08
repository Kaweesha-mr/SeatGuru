        <% String Dep = null;
          String Arr = null;%>
<%@ page import="com.example.seat_guru_oop.ConnectDB" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.seat_guru_oop.BusRoute" %>
<%--add jstl--%>


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
    <div class="row">
    <div class="col-md-12 col-sm-12 mx-auto border-land">
      <div class="table-title">
        <div class="form-group" style="margin-bottom: 1rem;
    display: flex;
    flex-wrap: nowrap;
    flex-direction: column;
    align-content: space-between;
    /* justify-content: space-around; */
    /* align-items: center; */
    padding-left: 2em;
    font-size: 2rem;
    padding-top: 2rem;
    padding-bottom: 1rem;">
          <label><i class="fas fa-subway"></i>
            <span class="train-proceed">
                             Train Info
                          </span>
          </label>
          <div class="table-title-route" id="oneway_stations">
            <span><span class="s-station"><%=Dep%></span></span>
            <span><i class="fas fa-chevron-right"></i></span>
            <span><span class="e-station"><%=Arr%></span></span>
          </div>
          <small style="margin-bottom: 8px;" class="form-text text-muted" id="oneway_date">Date
            - 2023-10-17</small>
          <span style="font-size: 14px; font-weight: 400;">
                          <span style="margin-right: 10px;">Select a train and proceed</span>
                             <i class="fas fa-chevron-right"></i>
                      </span>
        </div>
      </div>


<%--    create table in botstrap--%>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h4>Bus Routes</h4>
          <div class="table-responsive">
            <table id="mytable" class="table table-bordred table-striped">
              <thead>
                <th>Bus Name</th>
                <th>Bus Type</th>
                <th>Reg_Num</th>
                <th>Dep</th>
                <th>Arr</th>
                <th>Select Bus</th>
              </thead>
              <tbody>
<%

  try {
    ArrayList<BusRoute> originalArrayList = (ArrayList<BusRoute>) request.getAttribute("busRoutes");

    ConnectDB connectDB = new ConnectDB();
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection connection = connectDB.getConnection();

    for (BusRoute route : originalArrayList) {

      PreparedStatement ps = connection.prepareStatement("SELECT * FROM bus_ticket_reservation_system.bus,bus_ticket_reservation_system.bus_route where bus.BusID=bus_route.BusID and bus.BusID = ?;");
      ps.setInt(1, route.getId());
      ResultSet rs = ps.executeQuery();

      String busName = null;
      String busType = null;
      String Reg_num = null;
      Dep = null;
      Arr = null;



      while (rs.next()) {
        busName = rs.getString("Name");
        busType = rs.getString("Type");
        Reg_num = rs.getString("Bus_Reg_No");
        Dep = rs.getString("Dep");
        Arr = rs.getString("Arr");

      }

%>

<tr>
                <td><a href="#"><%=busName%></a> </td>
                <td><a href="#"> <%=busType%></a></td>
                <td><a href="#"><%=Reg_num%></a> </td>
                <td><a href="#"><%=Dep%></a> </td>
                <td><A href="#"><%=Arr%></A> </td>
                <td><A href="BookTicket?id=<%=route.getId()%>"> <button>Select</button></A></td>
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




  </main>

  


  <!-- !footer starts here -->

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