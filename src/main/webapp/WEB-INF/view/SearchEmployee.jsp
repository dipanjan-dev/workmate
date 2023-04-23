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
            <style>
                .search-box{
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    margin-top: 50px;
                }
                .search-box .search-bar{
                    padding: 10px 20px;
                    background-color: #FDFFFC;
                    box-shadow: rgba(0, 0, 0, 0.16) 0px 10px 36px 0px, rgba(0, 0, 0, 0.06) 0px 0px 0px 1px;
                    width: 600px;
                    display: flex;
                    flex: 1 1;
                }
                .search-bar input{
                    padding: 10px 20px;
                    width: 100%;
                    background: transparent;
                    outline: none;
                    border: none;
                }
                .search-bar button{
                    border: 0;
                    outline: none;
                    padding: 10px 50px;
                }
            </style>
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
                              <a class="nav-link" href="/index" >
                                <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="5 12 3 12 12 3 21 12 19 12" /><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7" /><path d="M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6" /></svg>
                                </span>
                                <span class="nav-link-title">
                                  Home
                                </span>
                              </a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="/all-employee" >
                                <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                   
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
                            <li class="nav-item active">
                              <a class="nav-link" href="/search-employee" >
                                <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                            
                                      <path d="M11 3a8 8 0 1 0 0 16 8 8 0 1 0 0-16z"></path>
                                      <path d="m21 21-4.35-4.35"></path>
                                    </svg>
                                </span>
                                <span class="nav-link-title">
                                  Search Employee
                                </span>
                              </a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" href="/all-token" >
                                <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
                                  <svg version="1.1" id="_x32_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" 
                                  viewBox="0 0 512 512"  xml:space="preserve">
                               <style type="text/css">
                                 .st0{fill:currentColor;}
                               </style>
                               <g>
                                 <path class="st0" d="M193.845,405.991c-6.248,0-11.324,5.062-11.324,11.318c0,6.255,5.077,11.325,11.324,11.325
                                   c6.256,0,11.325-5.07,11.325-11.325C205.17,411.053,200.101,405.991,193.845,405.991z"/>
                                 <path class="st0" d="M193.845,363.678c-6.248,0-11.324,5.069-11.324,11.325c0,6.248,5.077,11.318,11.324,11.318
                                   c6.256,0,11.325-5.07,11.325-11.318C205.17,368.746,200.101,363.678,193.845,363.678z"/>
                                 <path class="st0" d="M491.425,227.51H205.17h-2.075h-20.575h-79.706H82.241v20.567v211.537v20.575h20.574h79.706h20.575h2.075
                                   h286.254H512v-20.575V248.077V227.51H491.425z M491.425,459.614H205.17c0-6.255-5.069-11.318-11.325-11.318
                                   c-6.248,0-11.324,5.062-11.324,11.318h-79.706V248.077h79.706c0,6.255,5.077,11.318,11.324,11.318
                                   c6.256,0,11.325-5.062,11.325-11.318h286.254V459.614z"/>
                                 <path class="st0" d="M193.845,321.372c-6.248,0-11.324,5.069-11.324,11.324c0,6.248,5.077,11.318,11.324,11.318
                                   c6.256,0,11.325-5.07,11.325-11.318C205.17,326.441,200.101,321.372,193.845,321.372z"/>
                                 <path class="st0" d="M193.845,279.065c-6.248,0-11.324,5.062-11.324,11.318c0,6.256,5.077,11.325,11.324,11.325
                                   c6.256,0,11.325-5.069,11.325-11.325C205.17,284.127,200.101,279.065,193.845,279.065z"/>
                                 <polygon class="st0" points="117.846,196.225 369.458,59.702 449.357,206.934 472.755,206.934 387.535,49.881 377.73,31.811 
                                   359.638,41.61 108.048,178.148 106.224,179.133 88.14,188.939 18.084,226.961 0,236.774 9.813,254.859 61.673,350.425 
                                   61.673,307.289 27.898,245.046 61.673,226.709 	"/>
                               </g>
                               </svg>
                                </span>
                                <span class="nav-link-title">
                                  Tokens
                                </span>
                              </a>
                            </li>
                            <li class="nav-item dropdown">
                              <a class="nav-link dropdown-toggle" href="#navbar-base" data-bs-toggle="dropdown" data-bs-auto-close="outside" role="button" aria-expanded="false" >
                                <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/package -->
                                  <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round"><path stroke="none" d="M0 0h24v24H0z" fill="none"/><polyline points="12 3 20 7.5 20 16.5 12 21 4 16.5 4 7.5 12 3" /><line x1="12" y1="12" x2="20" y2="7.5" /><line x1="12" y1="12" x2="12" y2="21" /><line x1="12" y1="12" x2="4" y2="7.5" /><line x1="16" y1="5.25" x2="8" y2="9.75" /></svg>
                                </span>
                                <span class="nav-link-title">
                                  Company
                                </span>
                              </a>
                              <div class="dropdown-menu">
                                <div class="dropdown-menu-columns">
                                  <div class="dropdown-menu-column">
                                    <a class="dropdown-item" href="./empty.html" >
                                      View All User
                                    </a>
                                    <a class="dropdown-item" href="./accordion.html" >
                                        Send Email
                                    </a>
                                    <a class="dropdown-item" href="./blank.html" >
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
                    <div class="search-box">
                    <form action="/search-employee" method="POST">
                        <div class="search-bar">
                        <input type="text" name="searchEmployee" placeholder="Search By Name or Employee ID" id="" autocomplete="off">
                        <button type="submit">Search</button>
                        </div>
                    </form>
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