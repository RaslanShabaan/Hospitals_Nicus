<%@ page import="java.util.ArrayList" %>
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

<h1>State 000000000000000000000000000000000000000000</h1>
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

                    <li class="active">  <span>
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

                    <li><span>
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
            <div class="clr"></div>
        </div>
    </div>
    <div class="content">
        <div class="content_resize">
            <div class="mainbar">

                <div class="article">


                    <div class="comment"> <a href="#"><img src="resources/images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>

                    <table border=1 style="width: 80% ">
                        <tr style="padding: 20px;color: #d43f3a;font-weight: bold;font-style: italic;font-size:18px">
                            <td>Nicu Id </td>
                            <td>Nicu Cost </td>
                            <td>Nicu Desc </td>
                            <td>Nicu Status </td>
                        </tr>

                        <%
                            HttpSession d=request.getSession();
                            ArrayList v= (ArrayList) d.getAttribute("arrayy");
                            int count=v.size()/4;
                            int o=0;
                            for (int t=0;t<count;t++)
                            {

                        %>

                        <tr  style="padding: 20px;color: #000;font-weight: bold;font-style: italic;font-size:15px">
                            <td>   <%= v.get(o+1)%> </td>
                            <td>   <%= v.get(o+2)%> </td>
                            <td>   <%= v.get(o)%></td>
                            <td>   <%= v.get(o+3)%> </td>
                        </tr>

                        <%
                                o=o+4;
                            }

                        %>


                    </table>
<h2 style="color:#d43f3a;font-weight: bold;font-style: italic"> Nicus Count Is : <%= count%></h2>

                    </div>
                </div>


            </div>
            <div class="sidebar">
                <div class="searchform">
                    <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
                        <input name="button_search" src="resources/images/search.gif" class="button_search" type="image" />
                    </form>
                </div>

            </div>

            <div class="clr"></div>
        </div>
    </div>
    <div class="fbg">
        <div class="fbg_resize">
            <div class="col c1">
                <h2><span>Image</span> Gallery</h2>
                <a href="#"><img src="resources/images/gal1.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="resources/images/gal2.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="resources/images/gal3.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="resources/images/gal4.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="resources/images/gal5.jpg" width="75" height="75" alt="" class="gal" /></a> <a href="#"><img src="resources/images/gal6.jpg" width="75" height="75" alt="" class="gal" /></a> </div>
            <div class="col c2">
                <h2><span>Services</span> Overview</h2>
                <p>Curabitur sed urna id nunc pulvinar semper. Nunc sit amet tortor sit amet lacus sagittis posuere cursus vitae nunc.Etiam venenatis, turpis at eleifend porta, nisl nulla bibendum justo.</p>
                <ul class="fbg_ul">
                    <li><a href="#">Lorem ipsum dolor labore et dolore.</a></li>
                    <li><a href="#">Excepteur officia deserunt.</a></li>
                    <li><a href="#">Integer tellus ipsum tempor sed.</a></li>
                </ul>
            </div>
            <div class="col c3">
                <h2><span>Contact</span> Us</h2>
                <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui.</p>
                <p class="contact_info"> <span>Address:</span> 1458 TemplateAccess, USA<br />
                    <span>Telephone:</span> +123-1234-5678<br />
                    <span>FAX:</span> +458-4578<br />
                    <span>Others:</span> +301 - 0125 - 01258<br />
                    <span>E-mail:</span> <a href="#">mail@yoursitename.com</a> </p>
            </div>
            <div class="clr"></div>
        </div>
    </div>
    <div class="footer">
        <div class="footer_resize">
            <p class="lf">&copy; Copyright <a href="#">MyWebSite</a>.</p>
            <p class="rf">Design by Dream <a href="http://www.dreamtemplate.com/">Web Templates</a></p>
            <div style="clear:both;"></div>
        </div>
    </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
