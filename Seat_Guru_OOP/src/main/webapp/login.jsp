<%--
  Created by IntelliJ IDEA.
  User: Kaweesha-Mr
  Date: 5/10/2023
  Time: 10:18 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script
          src="https://kit.fontawesome.com/64d58efce2.js"
          crossorigin="anonymous"
  ></script>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="login/style.css">
    <title>Title</title>
</head>
<body>
<div class="container">
  <div class="forms-container">
    <div class="signin-signup">
      <form action="login-servlet" class="sign-in-form" method="post">
        <h2 class="title">Sign in</h2>
        <div class="input-field">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="Username" name="id" />
        </div>
        <div class="input-field">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Password" name="password" />
        </div>
        <input type="submit" value="Login" class="btn solid" />
        <p class="social-text">Or Sign in with social platforms</p>
        <div class="social-media">
          <a href="#" class="social-icon">
            <i class="fab fa-facebook-f"></i>
          </a>
          <a href="#" class="social-icon">
            <i class="fab fa-twitter"></i>
          </a>
          <a href="#" class="social-icon">
            <i class="fab fa-google"></i>
          </a>
          <a href="#" class="social-icon">
            <i class="fab fa-linkedin-in"></i>
          </a>
        </div>
      </form>
      <form action="hello-servlet" class="sign-up-form" method="post">
        <h2 class="title">Sign up</h2>
        <div class="input-field">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="NIC" name="NIC" id="nic"/>
        </div>
        <div class="input-field">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="First Name" name="FName"/>
        </div>
        <div class="input-field">
          <i class="fas fa-envelope"></i>
          <input type="text" placeholder="Last Name" name="LName" />
        </div>
        <div class="input-field input-email">
          <i class="fas fa-lock"></i>
          <input type="Email" placeholder="Email" name="Email" id="email"/>
        </div>
        <div class="input-field" id="Checkpass1">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Password" name="Password" id="passInp_1"/>
        </div>
        <div class="input-field" id="Checkpass2">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Re-Enter Password"id="passInp_2" />
        </div>
        <input type="submit" class="btn" value="Sign up" />

      </form>
    </div>
  </div>

  <div class="panels-container">
    <div class="panel left-panel">
      <div class="content">
        <h3>New here ?</h3>
        <p>
          Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
          ex ratione. Aliquid!
        </p>
        <button class="btn transparent" id="sign-up-btn">
          Sign up
        </button>
      </div>
      <img src="login/img/log.svg" class="image" alt="" />
    </div>
    <div class="panel right-panel">
      <div class="content">
        <h3>One of us ?</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
          laboriosam ad deleniti.
        </p>
        <button class="btn transparent" id="sign-in-btn">
          Sign in
        </button>
      </div>
      <img src="login/img/register.svg" class="image" alt="" />

    </div>
  </div>
</div>

<%--connect script.js using jstl--%>
<script src="login/app.js"></script>

<script>
    const passInp_1 = document.getElementById("passInp_1");
    const passInp_2 = document.getElementById("passInp_2");
    const Checkpass1 = document.getElementById("Checkpass1");
    const Checkpass2 = document.getElementById("Checkpass2");
    const nic = document.getElementById("nic");
    const email = document.getElementById("email");
    const email_outer = document.getElementsByClassName("input-email");


    passInp_1.addEventListener("keyup", function () {
        if (passInp_1.value.length >= 8) {
            Checkpass1.classList.remove("invalid");
            Checkpass1.classList.add("valid");
        } else {
            Checkpass1.classList.remove("valid");
            Checkpass1.classList.add("invalid");
        }
    });

    passInp_2.addEventListener("keyup", function () {
        if (passInp_1.value == passInp_2.value) {
            Checkpass2.classList.remove("invalid");
            Checkpass2.classList.add("valid");
        } else {
            Checkpass2.classList.remove("valid");
            Checkpass2.classList.add("invalid");
        }
    });

    nic.addEventListener("keyup", function () {
        if (nic.value.length != 10) {
            nic.classList.remove("valid");
            nic.classList.add("invalid");
        } else {
            nic.classList.remove("invalid");
            nic.classList.add("valid");
        }
    });

// validate Email check for ./@
    email.addEventListener("keyup", function () {
        if (email.value.includes("@") && email.value.includes(".")) {
            email_outer.classList.remove("invalid");
            email_outer.classList.add("valid");
        } else {
            email_outer.classList.remove("valid");
            email_outer.classList.add("invalid");
        }
    });

</script>

</body>
</html>
