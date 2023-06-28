<%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>${userInfo.getName()} | ${userInfo.getUserId()} </title>
    <!-- CSS files -->
    <link href=".././dist/css/tabler.min.css" rel="stylesheet"/>
    <link href=".././dist/css/tabler-flags.min.css" rel="stylesheet"/>
    <link href=".././dist/css/tabler-payments.min.css" rel="stylesheet"/>
    <link href=".././dist/css/tabler-vendors.min.css" rel="stylesheet"/>
    <link href=".././dist/css/demo.min.css" rel="stylesheet"/>
    <style>
      .id-card-holder {
			width: 225px;
		    padding: 4px;
		    margin: 0 auto;
		    background-color: #1f1f1f;
		    border-radius: 5px;
		    position: relative;
        box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
		}
.id-card-holder:after {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    border-radius: 0 5px 5px 0;
		}
.id-card-holder:before {
		    content: '';
		    width: 7px;
		    display: block;
		    background-color: #0a0a0a;
		    height: 100px;
		    position: absolute;
		    top: 105px;
		    left: 222px;
		    border-radius: 5px 0 0 5px;
		}
.id-card {
			
			background-color: #fff;
			padding: 10px;
			border-radius: 10px;
			text-align: center;

		}
.id-card img {
			margin: 0 auto;
		}
    .id-card .header img {
			width: 100px;
    		margin-top: 15px;
		}
    .id-card .photo img {
			width: 80px;
    		margin-top: 15px;
		}
    .id-card h2 {
			font-size: 15px;
			margin: 5px 0;
		}
    .id-card h3 {
			font-size: 12px;
			margin: 2.5px 0;
			font-weight: 300;
		}
.qr-code img {
			width: 50px;
		} 
    .id-card p {
			font-size: 5px;
			margin: 2px;
		}
.id-card-hook {
			background-color: black;
		    width: 70px;
		    margin: 0 auto;
		    height: 15px;
		    border-radius: 5px 5px 0 0;
		}
.id-card-hook:after {
			content: '';
		    background-color: white;
		    width: 47px;
		    height: 6px;
		    display: block;
		    margin: 0px auto;
		    position: relative;
		    top: 6px;
		    border-radius: 4px;
		}
.id-card-tag-strip {
			width: 45px;
		    height: 40px;
		    background-color: #054A91;
		    margin: 0 auto;
		    border-radius: 5px;
		    position: relative;
		    top: 9px;
		    z-index: 1;
		    border: 1px solid #054A91;
		}



    </style>
  </head>
  <body >
    <div class="wrapper">
      <header class="navbar navbar-expand-md navbar-light d-print-none">
        <div class="container-xl">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-menu">
            <span class="navbar-toggler-icon"></span>
          </button>
          <h1 class="navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3">
            <a>
              <img src=".././static/logo.svg"  height="20" alt="Tabler"  class="navbar-brand-image">
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
                <li class="nav-item">
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
                  <li class="nav-item active">
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
                  Profile
                </h2>
              </div>
              <!-- Page title actions -->
            
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row">
              <div class="col-lg-6 col-12">
                <div class="col-auto">
                    <span class="avatar avatar-lg me-2 mb-3">${userInfo.getName().charAt(0)}</span>
                  </div>
                  <div class="col">
                    <h1 class="fw-bold">${userInfo.getName()}</h1>
                    <div class="my-2">${userInfo.getUserId()}</div>
                    <hr>
                    <div class="text-muted">
                        <ul style="list-style: none; padding-left: 0 !important;">
                      <li class="mb-2"><strong>UID : </strong> ${userInfo.getId()}</li>
                      <li class="mb-2"><strong>Employee Type : </strong> ${userInfo.getEmployeeType()}</li>
                      <li class="mb-2"><strong>Joining Date : </strong> ${userInfo.getJoiningDate()}</li>
                      <li class="mb-2"><strong>Email Address : </strong> ${userInfo.getEmail()}</li>
                      <li class="mb-2"><strong>Contact Number : </strong> ${userInfo.getContact()}</li>
                      <li class="mb-2"><strong>Department : </strong> ${userInfo.getDepartment()}</li>
                      <li class="mb-2"><strong>Post : </strong> ${userInfo.getEmployeeRole()}</li>
                      <li class="mb-2"><strong>Date Of Birth : </strong> ${userInfo.getDob()}</li>
                      <li class="mb-2"><strong>Address : </strong> ${userInfo.getAddress()}</li>
                      <li class="mb-2"><strong>Account Created At : </strong> ${userInfo.getCreatedAT()}</li>
                    </ul>
                    </div>
                  </div>
               
              </div>
              <div class="col-lg-6">
                <div class="id-card-tag"></div>
	<div class="id-card-tag-strip"></div>
	<div class="id-card-hook"></div>
	<div class="id-card-holder">
		<div class="id-card user-select-none">
      <img src=".././static/logo.svg"  height="10" alt="">
			<div class="header mt-3">
			  <span class="avatar avatar-lg me-2 mb-3">${userInfo.getName().charAt(0)}</span>
			</div>
			
			<h2 class="user-select-none">${userInfo.getName()}</h2>
		
			<h3 class="user-select-none">${userInfo.getEmployeeRole()}</h3>
      <h3 class="user-select-none">${userInfo.getUserId()}</h3>
      <!-- <div class="qr-code">
        <div class="photo">
          <img src="https://i.imgur.com/5WmGvAG.png">
        </div>
			</div> -->
      <div id="qrcode" class="mt-3 mb-4 user-select-none"></div>
     
      <!-- <hr>
			<p><strong>NIIT University</strong> Neemrana, NH-8 Delhi-Jaipur highway <p>
			<p>District Alwar, Rajasthan <strong>301705</strong></p>
			<p>Ph: 01494-660600, 7073222393</p> -->

		</div>
	</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  <c:if test="${empty userInfo}">
    <c:redirect url="/login"/> 
  </c:if>
    <!-- Libs JS -->
    <script src=".././dist/libs/apexcharts/dist/apexcharts.min.js"></script>
    <!-- Tabler Core -->
    <script src=".././dist/js/tabler.min.js"></script>
    <script src=".././dist/js/qrcode.min.js"></script>
    <script type="text/javascript">


var id = "${userInfo.getUserId()}";
var name = "${userInfo.getName()}";
var role = "${userInfo.getEmployeeRole()}";
var verifyed = true;
console.log(name ,"sdas ")
  var qrcode = new QRCode(document.getElementById("qrcode"), {
    text: id+' | '+name +' | '+role +' | Verified Account',
    width: 90,
    height: 90,
    colorDark: "#000000",
    colorLight: "#ffffff",
    correctLevel: QRCode.CorrectLevel.H
  });
      </script>
    
  </body>
</html>