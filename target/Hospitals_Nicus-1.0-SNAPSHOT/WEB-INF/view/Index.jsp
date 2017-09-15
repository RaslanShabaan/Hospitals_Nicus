<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>WiFiplus</title>
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


<h1> Welcome  :)  <sec:authentication property="name" /> </h1>


<div class="main">
    <div class="header">
        <div class="header_resize">
            <div class="logo">
                <h1><a href="index.html">WiFi<span>plus</span> <small>Company Slogan Here</small></a></h1>
            </div>
            <div class="clr"></div>
            <div class="menu_nav">
                <ul>

                    <li class="active"><span>
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
                <div class="slider">
                    <div id="coin-slider"> <a href="#"><img src="resources/images/n5.jpg" width="660" height="360" alt="" /><span><big>Sed condimentum justo sit amet urna ornare euismod.</big><br />
            Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="resources/images/10.jpg" width="660" height="360" alt="" /><span><big>Amet urna ornare euismodSed condimentum.</big><br />
            Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> <a href="#"><img src="resources/images/9.jpg" width="660" height="360" alt="" /><span><big>Sed condimentum justo sit amet urna ornare euismod.</big><br />
            Tusce nec iaculis risus hasellus nec sem sed tellus malesuada porttitor. Mauris scelerisque feugiat ante in vulputate. Nam sit amet ullamcorper tortor. Phasellus posuere facilisis cursus. Nunc est lorem, dictum at scelerisque sit amet, faucibus et est. Proin mattis ipsum quis arcu aliquam molestie.</span></a> </div>
                    <div class="clr"></div>
                </div>
                <div class="clr"></div>
                <div class="article">
                    <h2><span>Excellent Solution</span> For Your Business</h2>
                    <p class="infopost">Posted <span class="date">on 11 sep 2018</span> by <a href="#">Admin</a> &nbsp;&nbsp;|&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="#" class="com">Comments <span>11</span></a></p>
                    <div class="clr"></div>
                    <div class="img"><img src="resources/images/1.jpg" width="198" height="188" alt="" class="fl" /></div>
                    <div class="post_content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. <a href="#">Suspendisse bibendum. Cras id urna.</a> Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
                        <p><strong>Aenean consequat porttitor adipiscing. Nam pellentesque justo ut tortor congue lobortis. Donec venenatis sagittis fringilla.</strong> Etiam nec libero magna, et dictum velit. Proin mauris mauris, mattis eu elementum eget, commodo in nulla. Mauris posuere venenatis pretium. Maecenas a dui sed lorem aliquam dictum. Nunc urna leo, imperdiet eu bibendum ac, pretium ac massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Quisque condimentum luctus ullamcorper.</p>
                        <p class="spec"><a href="#" class="rm">&raquo; Read more</a></p>
                    </div>
                    <div class="clr"></div>
                </div>
                <div class="article">
                    <h2><span>We'll Make Sure Template</span> Works For You</h2>
                    <p class="infopost">Posted <span class="date">on 29 aug 2016</span> by <a href="#">Admin</a> &nbsp;&nbsp;|&nbsp;&nbsp; Filed under <a href="#">templates</a>, <a href="#">internet</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a href="#" class="com">Comments <span>7</span></a></p>
                    <div class="clr"></div>
                    <div class="img"><img src="resources/images/2.jpg" width="198" height="188" alt="" class="fl" /></div>
                    <div class="post_content">
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</a> Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam.</p>
                        <p><strong>Aenean consequat porttitor adipiscing. Nam pellentesque justo ut tortor congue lobortis. Donec venenatis sagittis fringilla.</strong> Etiam nec libero magna, et dictum velit. Proin mauris mauris, mattis eu elementum eget, commodo in nulla. Mauris posuere venenatis pretium. Maecenas a dui sed lorem aliquam dictum. Nunc urna leo, imperdiet eu bibendum ac, pretium ac massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla facilisi. Quisque condimentum luctus ullamcorper.</p>
                        <p class="spec"><a href="#" class="rm">&raquo; Read more</a></p>
                    </div>
                    <div class="clr"></div>
                </div>
                <p class="pages"><small>Page 1 of 2</small> <span>1</span> <a href="#">2</a> <a href="#">&raquo;</a></p>
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
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>

</body>
</html>
