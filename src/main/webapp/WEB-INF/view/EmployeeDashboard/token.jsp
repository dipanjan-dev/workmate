<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${not empty userInfo}">
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Dashboard</title>
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
                 Tokens
                </h2>
              </div>
              <!-- Page title actions -->
              <div class="col-auto ms-auto d-print-none">
                <div class="btn-list">
                  <a href="/add-employee" class="btn btn-primary d-none d-sm-inline-block"  data-bs-toggle="modal" data-bs-target="#modal-report">
                    Create New Token
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <!-- <p>${tokenlistSize} Token Has Been Submited</p> -->
            <div class="card">
              <div class="table-responsive">
                <table class="table table-vcenter table-mobile-md card-table shadow">
                  <thead>
                    <tr>
                      <th>Token Id</th>
                      <th>Token Number</th>
                      <th>Token Type</th>
                      <th>Token Status</th>
                      <th>Created At</th>
                      <th class="w-1"></th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${tokenlist}" var="tokenlist">
                    <tr>
                      <td data-label="Name" >
                            <div class="font-weight-medium">${tokenlist.getToken_id()}</div>
                      </td>
                      <td data-label="Title" >
                        <div>${tokenlist.getToken_Number()}</div>
                      </td>
                      <td data-label="Title" >
                        <div>${tokenlist.getTokenType()}</div>
                      </td>
                      <td class="text-muted" data-label="Role" >
                        <div>
                          <span class="badge bg-warning">${tokenlist.getStatus()}</span></div>
                      </td>
                      <td class="text-muted" data-label="Role" >
                        <div>${tokenlist.getCreatedAt()}</div>
                      </td>
                      <td>
                        <div class="btn-list flex-nowrap">
                          <a href="view/token/${tokenlist.getToken_Number()}" class="btn">
                            View Details
                          </a>
                          <a href="delete/token/${tokenlist.getToken_Number()}" class="btn btn-outline-danger">
                            Withdrawal
                          </a>
                        </div>
                      </td>
                    </tr>
                </c:forEach>   
         
                  </tbody>
                </table>
              </div>
           
            </div>
          </div>
        </div>



        
      </div>
    </div>

    <div class="modal modal-blur fade" id="modal-report" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <form class="modal-content"  method="POST" action="/employee/token-create"  modelAttribute="Token">
          <div class="modal-header">
            <h5 class="modal-title">Create New Token</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">  
            <div class="mb-3">
              <input type="text" class="form-control"  name="Name" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getName()}">
              <input type="text" class="form-control"  name="Email" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getEmail()}">
              <input type="text" class="form-control"  name="Contact" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getContact()}">
              <input type="text" class="form-control"  name="UserId" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getUserId()}">
              <input type="text" class="form-control"  name="EmployeeType" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getEmployeeType()}">
              <input type="text" class="form-control"  name="Department" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getDepartment()}">
              <input type="text" class="form-control"  name="EmployeeRole" placeholder="Full Name" autocomplete="off" hidden value="${userInfo.getEmployeeRole()}">
            </div>
            <div class="mb-3">
                <label class="form-label">Issue Type</label>
                <select class="form-select" name="TokenType">
                  <option selected value="Personal Access Token">Personal Access Token</option>
                  <option value="Security Token">Security Token</option>
                  <option value="Payment Token">Payment Token</option>
                  <option value="Asset Token">Asset Token</option>
                  <option value="Issue Raise Token">Issue Raise Token</option>
                </select>
              </div>
              <div class="mb-3">
                <label class="form-label">Message</label>
                <textarea name="Message" id="" class="form-control" rows="4"></textarea>
              </div>     
          </div>
          <div class="modal-footer">
            <a href="#" class="btn btn-link link-secondary" data-bs-dismiss="modal">
              Cancel
            </a>
            <button type="submit" class="btn btn-primary ms-auto">
              Create New Token
            </button>
          </div>
        </form>
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