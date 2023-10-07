<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Garment And Management System</title>

    <!-- !external resouces that are got to style the landing page and login,register popup -->
    <link rel="stylesheet" href="Landing/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.0/css/font-awesome.css" />

    <!-- boot starp include -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">


    <link rel="stylesheet" href="./Landing/css/Search.css">
    <link rel="stylesheet" href="./Landing/css/footer.css">
    <link rel="stylesheet" href="./Landing/css/Slider_style.css">
    <link rel="stylesheet" href="./Landing/css/Cards.css">
<%--    connect style on jstl--%>

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

<header>
    <div class="nav-bar">
        <a href="" class="logo">
            <ion-icon name="bus-outline" class="logo"></ion-icon>
            SeatGuru</a>
        <div class="navigation">
            <div class="nav-items">
                <a href="Landing/Landing.html"> Home</a>
                <a href="./ContactUs.html"> Contact Us</a>
                <a href="./about us/aboutUs.html"> About Us</a>
                <!-- make this button blue ane make it red when hover -->
                <a href="../Login Register Page/index.html"><button type="button"
                                                                    class="btn btn-dark btnlogin">Login</button></a>
            </div>
        </div>
    </div>
</header>


<main>



    <div class="form_container">

        <!-- create a for with 2 dropdown menus to and from including date and no of passanger-->

        <form method="get" action="search">

        <%--@declare id="passanger"--%><%--@declare id="from"--%><%--@declare id="date"--%>
            <%--@declare id="to"--%><label for="To">To</label>
            <select name="TO" id="">
            <option value="Colombo">Colombo</option>
            <option value="Kandy">Kandy</option>
            <option value="Galle">Galle</option>
            <option value="Matara">Matara</option>
            <option value="Jaffna">Jaffna</option>
                <option value="Kurunegala">Kurunegala</option>
            </select>

        <label for="FROM">From</label>
        <select name="FROM" id="">
            <option value="Colombo">Colombo</option>
            <option value="Kandy">Kandy</option>
            <option value="Galle">Galle</option>
            <option value="Matara">Matara</option>
            <option value="Jaffna">Jaffna</option>
            <option value="Kurunegala">Kurunegala</option>
        </select>


        <label for="date">Date</label>
        <input type="date" name="date" id="">

        <label for="passanger">No of Passanger</label>
        <input type="number" name="passanger" id="" min="1" max="10" >

        <button type="submit" class="btn btn-primary">Search</button>
        <button type="reset" class="btn btn-danger">Reset</button>
        </form>

    </div>

</main>

<section class="py-5" id="gallery">
    <div class="container">
        <h1 class="display-4">Gallery</h1>
        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(0)">
                    <img src="gallery/gallery-1.jpg" class="card-img-top" alt="image 1">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(1)">
                    <img src="gallery/gallery-2.jpg" class="card-img-top" alt="image 1" style="cursor: pointer;">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(2)">
                    <img src="gallery/gallery-3.jpg" class="card-img-top" alt="image 1">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(3)">
                    <img src="gallery/gallery-4.jpg" class="card-img-top" alt="image 1">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(4)">
                    <img src="gallery/gallery-5.jpg" class="card-img-top" alt="image 1">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-4">
                <div class="card" style="margin-bottom: 30px;" onclick="lightbox(5)">
                    <img src="gallery/gallery-6.jpg" class="card-img-top" alt="image 1">
                    <div class="card-body">
                        <p class="card-text"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="py-5" id="history">
        <div class="container">
            <h1 class="display-4">History</h1>
            <p class="lead" style="text-align: justify; text-justify: inter-word">
                Rail was introduced in Sri Lanka in 1864 to transport coffee from plantations in the hill country district
                of Kandy to the port city of Colombo
                on its way to Europe and the world market. The coffee blight of 1871 destroyed many a fine plantation and
                tea replaced coffee.
                With the development of tea plantations in the 1880s, the joint-stock companies swallowed up the former
                individual proprietorship of the coffee era.
                Under corporate ownership and management control by companies, the process of production of tea became more
                sophisticated and needed more and more
                railways built to the Kandyan highlands. To send tea to Colombo and to transport labour, machinery, manure,
                rice, and foodstuff, etc to Kandy,
                another 100 miles of railways were constructed in the tea planting districts to serve the expanding tea
                domain.<br><br>

                To serve the coconut plantations flourishing in the west, southwest and northwest coastal areas of the
                country, and the wet inland
                rubber plantations below the tea belt, railway lines were built in the wake of these agricultural
                developments.
                Thereafter, the need for cheap and safe travel in order to open up the hinterland of the country led to the
                expansion of the railway.<br><br>

                An extension of the Main Line to Kandy was made north to the ancient city of Anuradhapura, going further
                north to Kankesanturai and west to
                Talaimannar to connect the island with South India by ferry, to bring Indian labour for the tea and rubber
                plantations, and also import rice and
                other food stuffs not indigenously produced in sufficient quantities.<br><br>

                Towards the east, there was little economic justification to lay a line to the dry zone in that direction,
                but it became strategically
                worthwhile to lay a line to the natural harbour of Trincomalee and also connect it to the provincial capital
                of Batticaloa.
                These lines were laid with light (21 kg) section rails, as was the narrow gauge section to serve the rubber
                plantations east of Colombo, known as the Kelani Valley Line.<br><br>

                Up country, a similar branch line was laid from Nanu Oya on the Main Line through very difficult terrain to
                serve the tea plantations around
                Nuwara Eliya. Track alignment was defined in this section about 140 years ago, when economic considerations
                were vastly different.
                The railways achieved modal superiority with speeds of 25 to 40 kmph in the hill country and 65 to 80 in the
                low country. Civil engineering criteria was influenced by the economic need to minimize cuts and fills,
                permitting gradients to 2 to 3 % and minimizing bridge lengths. As a result,
                the alignment here is winding with very sharp curves.<br><br>

                In the early days of the railways, the bulk of the freight was carried to the port of Colombo and as the
                port expanded,
                rail lines were laid to serve every pier.
            </p>
        </div>
    </section>

</section>


<!-- !footer starts here -->

<section class="footer-container" style="position: absolute; border: 0">

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
<script src="Landing/JS/couting.js"></script>

<!-- !swiper.js library is added  -->
<script src="Landing/JS/swiper-bundle.min.js"></script>

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
<script src="Landing/JS/feedback.js"></script>



</html>