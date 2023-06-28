<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty userInfo}">
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>${tokendetails.getToken_Number()} - ${tokendetails.getToken_id()} - ${tokendetails.getName()} - ${tokendetails.getUserId()}</title>
    <!-- CSS files -->
    <link href="../../../dist/css/tabler.min.css" rel="stylesheet"/>
    <link href="../../../dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href="../../../dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href="../../../dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href="../../../dist/css/demo.min.css" rel="stylesheet"/>
  </head>
  <body >
    <div class="wrapper">
      <header class="navbar navbar-expand-md navbar-light d-print-none">
        <div class="container-xl">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
            <span class="navbar-toggler-icon"></span>
          </button>
          <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
            <a href="#">
              <img src="../../../static/logo.svg" width="110" height="32" alt="Tabler" class="navbar-brand-image">
            </a>
          </h1>
          <div class="navbar-nav flex-row order-md-last">
     
            <div class="nav-item dropdown">
              <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown" aria-label="Open user menu">
                <span class="avatar avatar-sm">${userInfo.getName().charAt(0)}</span>
                <div class="d-none d-xl-block ps-2">
                  <div class="fw-bold">${userInfo.getName()}</div>
                </div>
              </a>
              <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <a href="/employee/settings" class="dropdown-item">Settings</a>
                <a href="/logout" class="dropdown-item">Logout</a>
              </div>
            </div>
          </div>
        </div>
      </header>
      <div class="navbar-expand-md">
        <div class="collapse navbar-collapse" id="navbar-menu">
          <div class="navbar navbar-light">
            <div class="container-xl">
              <ul class="navbar-nav">
                <li class="nav-item ">
                  <a class="nav-link" href="/employee/index" >
                    <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                 
                            <path d="M3 3h7v7H3z"></path>
                            <path d="M14 3h7v7h-7z"></path>
                            <path d="M14 14h7v7h-7z"></path>
                            <path d="M3 14h7v7H3z"></path>
                          </svg>

                    </span>
                    <span class="nav-link-title">
                      Dashboard
                    </span>
                  </a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="/employee/token" >
                    <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                      <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <path d="M14 2v6h6"></path>
                            <path d="M16 13H8"></path>
                            <path d="M16 17H8"></path>
                            <path d="M10 9H8"></path>
                          </svg>
                      </svg>
                    </span>
                    <span class="nav-link-title">
                      Token
                    </span>
                  </a>
                </li>
           
                  <li class="nav-item">
                    <a class="nav-link" href="/attendence" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                              <path d="M16.875 3.75H19.5a.75.75 0 0 1 .75.75v2.625"></path>
                              <path d="M16.875 20.25H19.5a.75.75 0 0 0 .75-.75v-2.625"></path>
                              <path d="M7.125 20.25H4.5a.75.75 0 0 1-.75-.75v-2.625"></path>
                              <path d="M7.125 3.75H4.5a.75.75 0 0 0-.75.75v2.625"></path>
                              <path d="M12 13.5a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"></path>
                              <path d="M7.5 15.75a5.626 5.626 0 0 1 9 0"></path>
                            </svg>

                      </span>
                      <span class="nav-link-title">
                        Attendence
                      </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="/employee/profile" >
                      <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                        <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">

                            <path d="M12 15a6 6 0 1 0 0-12 6 6 0 0 0 0 12Z"></path>
                            <path d="M2.906 20.25a10.5 10.5 0 0 1 18.188 0"></path>
                          </svg>
                      </span>
                      <span class="nav-link-title">
                        Profile
                      </span>
                    </a>
                  </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="page-wrapper">
        <div class="container-xl">
          <!-- Page title -->
          <div class="page-header d-print-none">
            <div class="row align-items-center">
              <div class="col">
                <!-- Page pre-title -->
                <div class="page-pretitle">
                  Overview
                </div>
                <h2 class="page-title">
                  ${tokendetails.getToken_Number()}
                </h2>
            </div>
        </div>
      </div>
      <div class="d-flex mt-3 mb-3 justify-content-between  d-print-none">
        <div class="back-btn">
            <a href="/employee/token" class="btn btn-outline-secondary">Back</a>
        </div>
        <div class="print">
            <button class="btn" onclick="window.print()">Print</button>
        </div>
      </div>

          <div class="card pt-5 pb-4">
            <div class="container">
            <div class="row">
                <div class="col-lg-2 col-4">
                    <label class="form-label">Token Id</label>
                    <p>${tokendetails.getToken_id()}</p>
                </div>
                <div class="col-lg-2 col-4">
                    <label class="form-label">Token Number</label>
                    <p>${tokendetails.getToken_Number()}</p>
                </div>
                <div class="col-lg-3 col-4">
                    <label class="form-label">Token Type</label>
                    <p>${tokendetails.getTokenType()}</p>
                </div>
                <div class="col-lg-3 col-6">
                    <label class="form-label">Created At</label>
                    <p>${tokendetails.getCreatedAt()}</p>
                </div>
                <div class="col-lg-2 col-6">
                    <label class="form-label">Status</label>
                    <%@include file="../TokenStatusView.jsp" %>


                </div>
                <div class="col-lg-12">
                    <label class="form-label">Issue</label>
                    <span>${tokendetails.getMessage()}</span>
                    
                </div>
                <div class="col-lg-12">
                    <div class="hr-text">Employee Information</div>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Id</label>
                    <p>${tokendetails.getUserId()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Name</label>
                    <p>${tokendetails.getName()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Role</label>
                    <p>${tokendetails.getEmployeeRole()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Department</label>
                    <p>${tokendetails.getDepartment()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Email</label>
                    <p>${tokendetails.getEmail()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Contact Number</label>
                    <p>${tokendetails.getContact()}</p>
                </div>
                <div class="col-lg-3">
                    <label class="form-label">Employee Type</label>
                    <p>${tokendetails.getEmployeeType()}</p>
                </div>
            </div>
        </div>
          </div>
        </div>
        

      </div>
    </div>

  </c:if>

  <c:if test="${empty userInfo}">
    <c:redirect url="/login"/> 
  </c:if>
    <!-- Libs JS -->
    <script src="../../../dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <!-- Tabler Core -->
    <script src="../../../dist/js/tabler.min.js"></script>
  </body>
</html>