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
  <link rel="stylesheet" href="./css/Slider_style.css">
  <link rel="stylesheet" href="./css/Cards.css">
  <link rel="stylesheet" href="./css/counting.css">
  <link rel="stylesheet" href="./css/feedback.css">
  <link rel="stylesheet" href="./css/footer.css">
  <link rel="stylesheet" href="./css/form.css">

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
          <a href="../Landing.jsp"> Home</a>
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
        <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-oneway" role="tabpanel" aria-labelledby="pills-oneway-tab">
                    <section class="oneway-table" style="padding-bottom: 3rem;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 mx-auto border-land">
                                    <div class="table-title">
                                        <div class="form-group">
                                            <label><i class="fas fa-subway"></i>
                                                <span class="train-proceed">
                                                   Train Info
                                                </span>
                                            </label>
                                            <div class="table-title-route" id="oneway_stations">
                                                <span><span class="s-station">Ahangama</span></span>
                                                <span><i class="fas fa-chevron-right"></i></span>
                                                <span><span class="e-station">Aluthgama</span></span>
                                                <span><img src="images/icons/train_2.svg" style="float: right" height="60"></span>
                                            </div>
                                            <small style="margin-bottom: 8px;" class="form-text text-muted" id="oneway_date">Date
                                                - 2023-09-30</small>
                                            <span style="font-size: 14px; font-weight: 400;">
                                                <span style="margin-right: 10px;">Select a train and proceed</span>
                                                   <i class="fas fa-chevron-right"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="data-table-ble-oneway">
                                        <div id="example_1_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"></div><div class="col-sm-12 col-md-6"></div></div><div class="row"><div class="col-sm-12"><table id="example_1" class="display table table-hover dataTable no-footer dtr-inline" cellspacing="0" width="100%" role="grid">
                                            <thead>
                                            <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Train Name: activate to sort column descending">Train Name</th><th class="sorting" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-label="Departs: activate to sort column ascending">Departs</th><th class="sorting" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-label="Arrives: activate to sort column ascending">Arrives</th><th style="width: 25%" class="sorting" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-label="Class: activate to sort column ascending">Class</th><th class="sorting" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-label="Available: activate to sort column ascending">Available</th><th class="text-right sorting" tabindex="0" aria-controls="example_1" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">Price</th></tr>
                                            </thead>
                                            <tbody>
                                            
                                            <tr class="odd"><td valign="top" colspan="6" class="dataTables_empty">Sorry, you cannot book online as there are no seats available on the date you searched. You may check with <a href="ticketprintinglocations" target="_blank"><b><u>mTicketing service enabled railway station</u></b></a>  or please select another date and search again.  </td></tr></tbody>
                                        </table></div></div><div class="row"><div class="col-sm-12 col-md-5"></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="example_1_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="example_1_previous"><a href="#" aria-controls="example_1" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item next disabled" id="example_1_next"><a href="#" aria-controls="example_1" data-dt-idx="1" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                <div class="tab-pane fade" id="pills-return" role="tabpanel" aria-labelledby="pills-return-tab">
                    <section class="return-table" style="display: none;">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 mx-auto  border-land">
                                    <div class="table-title">
                                        <div class="form-group">
                                            <label><i class="fas fa-subway"></i> Train Info
                                            </label>
                                            <div class="table-title-route" id="returnway_stations">
                                                <span><span class="e-station">Aluthgama</span></span>
                                                <span><i class="fas fa-chevron-right"></i></span>
                                                <span><span class="s-station">Ahangama</span></span>
                                                <span><img src="images/icons/train_2.svg" style="float: right; transform: rotateY(180deg)" height="60"></span>
                                            </div>
                                            <small style="margin-bottom: 8px;" class="form-text text-muted" id="returnway_date">Return Date
                                                - </small>
                                            <span style="font-size: 14px; font-weight: 400;">
                                                <span style="margin-right: 10px;">Select a train and proceed</span>
                                                   <i class="fas fa-chevron-right"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="data-table-ble-return">
                                        <div id="example_2_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer"><div class="row"><div class="col-sm-12 col-md-6"></div><div class="col-sm-12 col-md-6"></div></div><div class="row"><div class="col-sm-12"><table id="example_2" class="display table table-hover dataTable no-footer dtr-inline" cellspacing="0" width="100%" role="grid">
                                            <thead>
                                            <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Train Name: activate to sort column descending">Train Name</th><th class="sorting" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-label="Departs: activate to sort column ascending">Departs</th><th class="sorting" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-label="Arrives: activate to sort column ascending">Arrives</th><th style="width: 25%" class="sorting" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-label="Class: activate to sort column ascending">Class</th><th class="sorting" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-label="Available: activate to sort column ascending">Available</th><th class="sorting" tabindex="0" aria-controls="example_2" rowspan="1" colspan="1" aria-label="Price: activate to sort column ascending">Price</th></tr>
                                            </thead>
                                            <tbody>
                                            
                                            <tr class="odd"><td valign="top" colspan="6" class="dataTables_empty">No data available in table</td></tr></tbody>
                                        </table></div></div><div class="row"><div class="col-sm-12 col-md-5"></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_simple_numbers" id="example_2_paginate"><ul class="pagination"><li class="paginate_button page-item previous disabled" id="example_2_previous"><a href="#" aria-controls="example_2" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item next disabled" id="example_2_next"><a href="#" aria-controls="example_2" data-dt-idx="1" tabindex="0" class="page-link">Next</a></li></ul></div></div></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
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