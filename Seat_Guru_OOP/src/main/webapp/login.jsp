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
          <input type="text" placeholder="NIC" name="NIC"/>
        </div>
        <div class="input-field">
          <i class="fas fa-user"></i>
          <input type="text" placeholder="First Name" name="FName"/>
        </div>
        <div class="input-field">
          <i class="fas fa-envelope"></i>
          <input type="text" placeholder="Last Name" name="LName" />
        </div>
        <div class="input-field">
          <i class="fas fa-lock"></i>
          <input type="Email" placeholder="Email" name="Email"/>
        </div>
        <div class="input-field" id="Checkpass1">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Password" name="Password" id="passInp_1"/>
        </div>
        <div class="input-field" id="Checkpass2">
          <i class="fas fa-lock"></i>
          <input type="password" placeholder="Re-Enter Password" />
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

</body>
</html>
