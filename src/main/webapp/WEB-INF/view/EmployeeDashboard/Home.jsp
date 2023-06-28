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
  </head>
  <body data-bs-theme="dark">
    <div class="wrapper">
      <%@include file="./Navbar.jsp" %>
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
                  Dashboard
                </h2>
              </div>
              <!-- Page title actions -->
            
            </div>
          </div>
        </div>
        <div class="page-body">
          <div class="container-xl">
            <div class="row">
              <div class="col-lg-8 col-12">
                <div class="row">
                  <div class="col-lg-4">
                    <div class="card">
                      <div class="card-body mt-3 p-2 text-center">
                        <div class="h1 m-0">${tokenlistSize}</div>
                        <div class="text-muted mb-3">Token Created</div>
                      </div>
                    </div>
                  </div>
                  <!-- <div class="col-lg-4">
                    <div class="card">
                      <div class="card-body p-2 mt-3 text-center">
                        <div class="h1 m-0">${attendenceSize}</div>
                        <div class="text-muted mb-3">Attendence</div>
                      </div>
                    </div>
                  </div> -->
                </div>
                
               
              </div>
            </div>

            <c:if test="${tokenlistSize != 0}">
            <div class="row mt-3">
              <div class="col-lg-12">
                <h5 class="mb-2 mt-2">Latest Tokens</h5>
                <div class="card">
                  <div class="table-responsive">
                    <table class="table table-vcenter table-mobile-md card-table shadow">
                      <thead>
                        <tr>
                          <th>Token Id</th>
                          <th>Token Type</th>
                          <th>Token Status</th>
                          <th>Created At</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${tokenlist}" var="tokenlist">
                        <tr>
                          <td data-label="Name" >
                                <div class="font-weight-medium">${tokenlist.getToken_id()}</div>
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
                        </tr>
                    </c:forEach>   
             
                      </tbody>
                    </table>
                  </div>
               
                </div>
              </div>
            </div>
          </c:if>
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
  </body>
</html>