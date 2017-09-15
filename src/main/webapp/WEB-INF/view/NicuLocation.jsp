<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>WiFiplus | Blog</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="resources/css/style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="resources/css/coin-slider.css" />
    <script type="text/javascript" src="resources/js/cufon-yui.js"></script>
    <script type="text/javascript" src="resources/js/cufon-aller.js"></script>
    <script type="text/javascript" src="resources/js/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="resources/js/script.js"></script>
    <script type="text/javascript" src="resources/js/coin-slider.min.js"></script>
</head>
<body>

<h1>Location 0000000000000000000000000000000000</h1>
<div class="main">
    <div class="header">
        <div class="header_resize">
            <div class="logo">
                <h1><a href="index.html">WiFi<span>plus</span> <small>Company Slogan Here</small></a></h1>
            </div>
            <div class="clr"></div>
            <div class="menu_nav">
                <ul>

                    <li><span>
                      <form action="GoNicuHome" method="get">
                    <button style="color: #FFF;font-style: italic;font-weight: bold;border-radius: 10%;background-color:#000;height: 50px;border: none;width:130px"> Home Page  </button>
                    </form>
                    </span></li>

                    <li>  <span>
                        <form action="GoNicuState" method="get">
                            <button style="color: #FFF;font-style: italic;font-weight: bold;border-radius: 10%;background-color:#000;height: 50px;border: none;width:130px"> Nicu State  </button>
                        </form>
                    </span>
                        </span> </li>

                    <li><span>
                        <form action="GoAddNicu" method="get">
                            <button style="color: #FFF;font-style: italic;font-weight: bold;border-radius: 10%;background-color:#000;height: 50px;border: none;width:130px"> Add Nicu  </button>
                        </form>
                    </span></li>

                    <li class="active"><span>
                         <form action="GoNicuLocation" method="get">
                             <button style="color: #FFF;font-style: italic;font-weight: bold;border-radius: 10%;background-color:#000;height: 50px;border: none;width:130px"> Nicus Location  </button>
                         </form>
                    </span></li>

                    <li><span>
                         <form action="Logout" method="get">
                             <button style="color: #FFF;font-style: italic;font-weight: bold;border-radius: 10%;background-color:#000;height: 50px;border: none;width:130px"> Log Me Out  </button>
                         </form>
                    </span></li>

                </ul>
            </div>
                   </div>
    </div>
    </div>

<br>
<br><br>
<h2 style="color: #d43f3a;font-style: italic;font-weight: bold"> Update Nicu From Busy To Empty ... </h2>
<form action="UpdateNicu" method="post">
    <label> Nicu Id </label>
    <input name="NicuIdd"/>

    <button> Update ... </button>


    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
</form>


<h2 style="color: #d43f3a;font-style: italic;font-weight: bold"> Delete Nicu ... </h2>
<form action="DeleteNicu" method="post">
    <label> Nicu Id </label>
    <input name="NicuIddd"/>


    <input type="hidden" name="${_csrf.parameterName}"
           value="${_csrf.token}"/>
    <button> Delete ... </button>
</form>

</body>

    </html>
