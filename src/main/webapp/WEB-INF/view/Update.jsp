<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${not empty userInfo}">
        <!doctype html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover" />
            <meta http-equiv="X-UA-Compatible" content="ie=edge" />
            <title>Dashboard</title>
            <!-- CSS files -->
            <link href=".././dist/css/tabler.min.css" rel="stylesheet" />
            <link href=".././dist/css/tabler-flags.min.css" rel="stylesheet" />
            <link href=".././dist/css/tabler-payments.min.css" rel="stylesheet" />
            <link href=".././dist/css/tabler-vendors.min.css" rel="stylesheet" />
            <link href=".././dist/css/demo.min.css" rel="stylesheet" />
        </head>

        <body>
            <div class="wrapper">
                <header class="navbar navbar-expand-md navbar-light d-print-none">
                    <div class="container-xl">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbar-menu">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
                            <a href=".">
                                <img src="./static/logo.svg" width="110" height="32" alt="Tabler"
                                    class="navbar-brand-image">
                            </a>
                        </h1>
                        <div class="navbar-nav flex-row order-md-last">

                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link d-flex lh-1 text-reset p-0" data-bs-toggle="dropdown"
                                    aria-label="Open user menu">
                                    <span class="avatar avatar-sm">${userInfo.getName().charAt(0)}</span>
                                    <div class="d-none d-xl-block ps-2">
                                        <div class="fw-bold">${userInfo.getName()}</div>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                    <a href="#" class="dropdown-item">Set status</a>
                                    <a href="#" class="dropdown-item">Profile & account</a>
                                    <a href="#" class="dropdown-item">Feedback</a>
                                    <div class="dropdown-divider"></div>
                                    <a href="#" class="dropdown-item">Settings</a>
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
                                    <li class="nav-item">
                                        <a class="nav-link" href="/index">
                                            <span
                                                class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                    height="24" viewBox="0 0 24 24" stroke-width="2"
                                                    stroke="currentColor" fill="none" stroke-linecap="round"
                                                    stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <polyline points="5 12 3 12 12 3 21 12 19 12" />
                                                    <path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" />
                                                    <path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" />
                                                </svg>
                                            </span>
                                            <span class="nav-link-title">
                                                Home
                                            </span>
                                        </a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="/all-employee">
                                            <span
                                                class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                    height="24" viewBox="0 0 24 24" stroke-width="2"
                                                    stroke="currentColor" fill="none" stroke-linecap="round"
                                                    stroke-linejoin="round">

                                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                                    <path d="M9 3a4 4 0 1 0 0 8 4 4 0 1 0 0-8z"></path>
                                                    <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                                    <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                                                </svg>
                                            </span>
                                            <span class="nav-link-title">
                                                All Employee
                                            </span>
                                        </a>
                                    </li>
                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#navbar-base"
                                            data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button"
                                            aria-expanded="false">
                                            <span
                                                class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                                                <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24"
                                                    height="24" viewBox="0 0 24 24" stroke-width="2"
                                                    stroke="currentColor" fill="none" stroke-linecap="round"
                                                    stroke-linejoin="round">
                                                    <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                                    <polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" />
                                                    <line x1="12" y1="12" x2="20" y2="7.5" />
                                                    <line x1="12" y1="12" x2="12" y2="21" />
                                                    <line x1="12" y1="12" x2="4" y2="7.5" />
                                                    <line x1="16" y1="5.25" x2="8" y2="9.75" />
                                                </svg>
                                            </span>
                                            <span class="nav-link-title">
                                                Company
                                            </span>
                                        </a>
                                        <div class="dropdown-menu">
                                            <div class="dropdown-menu-columns">
                                                <div class="dropdown-menu-column">
                                                    <a class="dropdown-item" href="./empty.html">
                                                        View All User
                                                    </a>
                                                    <a class="dropdown-item" href="./accordion.html">
                                                        Send Email
                                                    </a>
                                                    <a class="dropdown-item" href="./blank.html">
                                                        Modify Users
                                                    </a>

                                                </div>

                                            </div>
                                        </div>
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
                                        Update User Information
                                    </h2>
                                </div>
                                <!-- Page title actions -->
                            </div>
                        </div>
                    </div>
                    <div class="page-body">
                        <div class="container-xl">
                            <div class="row">
                                <div class="col-lg-8" style="border-right: 1px solid #f0f0f0;">
                                    <form method="POST" action="/updated/user-inform" modelAttribute="Users">
                                        <input type="text" class="form-control" value="${userdata.getId()}" hidden name="Id">
                                        <input type="text" class="form-control" value="${userdata.getUserId()}" hidden name="UserId">
                                        <input type="text" class="form-control" value="${userdata.getCreatedAT()}" hidden name="CreatedAT">
                                        <input type="text" class="form-control" value="${userdata.getPassword()}" hidden name="Password">
                                        <div class="modal-body">
                                            <div class="mb-3">
                                                <label class="form-label">Employee Id</label>
                                                <p>${userdata.getUserId()}</p>
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Name</label>
                                                <input type="text" class="form-control" value="${userdata.getName()}"
                                                    name="Name">
                                            </div>
                                            <div class="mb-3">
                                                <label class="form-label">Email Address</label>
                                                <input type="email" class="form-control" value="${userdata.getEmail()}"
                                                    name="Email">
                                            </div>
                                            <label class="form-label">User type</label>
                                            <div class="mb-3">
                                                <select class="form-select" name="UserType">
        
                                                    <c:if test="${userdata.getUserType()=='Admin'}">
                                                        <option value="Admin" selected>Admin</option>
                                                        <option value="Employee">Employee</option>
                                                        <option value="Super">Super Admin</option>
                                                      </c:if>
                                                      <c:if test="${userdata.getUserType()=='Employee'}">
                                                        <option value="Admin">Admin</option>
                                                        <option value="Employee" selected>Employee</option>
                                                        <option value="Super">Super Admin</option>
                                                      </c:if>
                                                      <c:if test="${userdata.getUserType()=='Super'}">
                                                        <option value="Admin">Admin</option>
                                                        <option value="Employee">Employee</option>
                                                        <option value="Super" selected>Super Admin</option>
                                                      </c:if>
                                                      <c:if test="${userdata.getUserType()== null}">
                                                        <option value="Admin">Admin</option>
                                                        <option value="Employee">Employee</option>
                                                        <option value="Super">Super Admin</option>
                                                      </c:if>
        
                                                </select>
                                              </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="submit" class="btn btn-primary ms-auto">
                                                Update User information
                                            </button>
                                        </div>
                                    </form>
                                </div>
                                <div class="col-lg-4">
                                    <ul style="list-style: none;">
                                        <li class="mb-3"><strong> User Information </strong></li>
                                        <li class="mb-2"><strong>Personal Id : </strong>${userdata.getId()} </li>
                                        <li class="mb-2"><strong>Name : </strong>${userdata.getName()} </li>
                                        <li class="mb-2"><strong>Email Address : </strong>${userdata.getEmail()} </li>
                                        <li class="mb-2"><strong>Employee Id : </strong>${userdata.getUserId()} </li>
                                        <li class="mb-2"><strong>Password : </strong>********* </li>
                                        <li class="mb-2"><strong>Account Created At : </strong> ${userdata.getCreatedAT()} </li>
                                        <li class="mb-2"><strong>Account Type : </strong> ${userdata.getUserType()} </li>
                                    </ul>
                                    <hr>
                                    <p class="m-2 ">Data update protection refers to the measures taken to prevent unauthorized changes or modifications to data. This can include implementing access controls and permissions, tracking changes to data, ensuring data integrity, and using encryption to protect data both at rest and in transit. </p>
                                </div>

                            </div>

                           
                        </div>
                    </div>
                </div>
            </div>

    </c:if>
    <c:if test="${empty userInfo}">
        <c:redirect url="/login" />
    </c:if>
    <!-- Libs JS -->
    <script src=".././dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <!-- Tabler Core -->
    <script src=".././dist/js/tabler.min.js"></script>
    </body>

    </html>