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
                        <path d="M18.9 7a8 8 0 0 1 1.1 5v1a6 6 0 0 0 .8 3"></path>
                        <path d="M8 11a4 4 0 0 1 8 0v1a10 10 0 0 0 2 6"></path>
                        <path d="M12 11v2a14 14 0 0 0 2.5 8"></path>
                        <path d="M8 15a18 18 0 0 0 1.8 6"></path>
                        <path d="M4.9 18.998a22 22 0 0 1-.9-7v-1a8 8 0 0 1 12-6.95"></path>
                        </svg>

                  </span>
                  <span class="nav-link-title">
                    Attendence
                  </span>
                </a>
              </li> 
              <li class="nav-item">
                <a class="nav-link" href="/attendence" >
                  <span class="nav-link-icon d-md-none d-lg-inline-block"><!-- Download SVG icon from http://tabler-icons.io/i/home -->
             
                    <svg xmlns="http://www.w3.org/2000/svg" class="icon" width="24" height="24" viewBox="0 0 24 24" stroke-width="2" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                        <path d="M15 11.086h5a2 2 0 0 1 0 4H5l-3-6h3l2 2h3l-2-7h3l4 7Z"></path>
                        <path d="M3 21h18"></path>
                        </svg>

                  </span>
                  <span class="nav-link-title">
                    Leaves
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