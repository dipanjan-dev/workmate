<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Sign in</title>
    <!-- CSS files -->
    <link href="./dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="./dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="./dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body  class="bg-primary d-flex flex-column" style="background: linear-gradient(180deg, #FFB7B7 0%, #727272 100%), radial-gradient(60.91% 100% at 50% 0%, #FFD1D1 0%, #260000 100%), linear-gradient(238.72deg, #FFDDDD 0%, #720066 100%), linear-gradient(127.43deg, #00FFFF 0%, #FF4444 100%), radial-gradient(100.22% 100% at 70.57% 0%, #FF0000 0%, #00FFE0 100%), linear-gradient(127.43deg, #B7D500 0%, #3300FF 100%);
  background-blend-mode: screen, overlay, hard-light, color-burn, color-dodge, normal;">
    <nav class="navbar navbar-expand-lg bg-body-tertiary position-absolute">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">
          <img src="<%=request.getContextPath()%>/static/logo.svg" height="15" alt="">
        </a>
      </div>
    </nav>
    <c:if test="${not empty Success}">
      <div class="alert alert-success alert-dismissible fade show position-absolute " style="right: 10px ;top : 20px;" role="alert">
        ${Success}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
      session.invalidate();
      %>
    </c:if>
    <c:if test="${not empty error}">
      <div class="alert alert-danger alert-dismissible fade show position-absolute " style="right: 10px ;top : 20px;" role="alert">
        ${error}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
      <%
      session.invalidate();
      %>
    </c:if>
   
    <div class="page page-center">
      <div class="container py-4">
        <div class="row align-items-center">
          <div class="col-lg-4">
            <form class="card card-md shadow" action="/login" method="POST">
              <div class="card-body">
                <h2 class="card-title text-center mb-4">Login to your account</h2>
                <div class="mb-3">
                  <label class="form-label">Email address or Employee ID</label>
                  <input type="text" name="email" class="form-control" placeholder="Enter email or Employee id" autocomplete="on">
                </div>
                <div class="mb-2">
                  <label class="form-label">
                    Password
                  </label>
                  <div class="input-group input-group-flat">
                    <input type="password" class="form-control"  placeholder="Password" name="password"  autocomplete="on">
                  </div>
                </div>

                <div class="form-footer">
                  <button type="submit" class="btn btn-primary w-100">Sign in</button>
                </div>
              </div>
              <div class="hr-text">or</div>
              <div class="text-center text-muted mt-3 mb-3">
                Don't have account yet? <a href="/create-admin" tabindex="-1">Create Admin</a>
              </div>
            </form>
          </div>
          <div class="col-lg-8">
            <div class="container">
              <h1>Introduction to Workmate: The Ultimate Employee Management App</h1>
              <h3 class="mt-3 fw-light">Workmate is an office employment management app that provides a comprehensive solution for managing employee data in a company. It is designed to help businesses keep track of their employees' information, such as their personal details, work history, leave records, and more.</h3>
            </div>
            </div>
        </div>
      
        
      </div>
    </div>
    <!-- Libs JS -->
    <!-- Tabler Core -->
    <script src="./dist/js/tabler.min.js"></script>
    <script src="./dist/js/demo.min.js"></script>
  </body>
</html>