

<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <title>Weather Demo Register</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/normalize.min.css">
    <link rel="stylesheet" href="resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/css/animate.css">
    <link rel="stylesheet" href="resources/css/templatemo_misc.css">
    <link rel="stylesheet" href="resources/css/templatemo_style.css">


    <meta name="keywords" content="html registration form, html registration form free download, html registration form template">
    <meta name="description" content="This is a free HTML Registration Form Template created by SliceMaker Soft. You can free download this HTML registration form template and then edit it for your own use.">

    <link rel="stylesheet" type="text/css" href="http://www.w3cplus.com/demo/css3/base.css" media="all" />
    <style type="text/css" >

        .login{
            width: 330px;
            margin: 40px auto 0;
            text-align: center;
        }
        .login h2{
            font:italic 32px/40px "Impact";
            letter-spacing:1px;
            color:rgba(0,0,0,0);
            background: -webkit-linear-gradient(top,#ffcf6b,#ffc54c 10%,#ffb320 40%,#c16e05);
            background: -moz-linear-gradient(top,#ffcf6b,#ffc54c 10%,#ffb320 40%,#c16e05);
            background: linear-gradient(top,#ffcf6b,#ffc54c 10%,#ffb320 40%,#c16e05);
            -webkit-background-clip:text;
            /*-webkit-text-stroke: 2px #000;*/
        }
        .login p{
            color:#070606;
            font-size:28px;
            font-style:italic;
            font-weight:bold;
            text-shadow:1px 1px 0 rgba(255,255,255,.2),-1px -1px 0 rgba(255,255,255,.2);
        }
        .control-round{
            position:relative;
            list-style:none;
            height:5px;
            border:1px solid #222222;
            background:#101010;
            margin:50px 0 40px;
        }
        .control-round label{
            position:absolute;
            top:-18px;
            font-family:"Impact";
            width:36px;
            color:#151515;
            line-height:36px;
            text-shadow:-1px -1px 1px #666,1px 1px 1px #666;
            border-radius:18px;
            border:1px solid #686868;
            box-shadow:0 0 2px 2px rgba(0,0,0,.2);
            background:-webkit-linear-gradient(top,#656565,#393939);
            background:-moz-linear-gradient(top,#656565,#393939);
            background:linear-gradient(top,#656565,#393939);
        }
        .control-round label.active{
            text-shadow:0 1px 0 #f5b738;
            border:1px solid #c4883b;
            background:-webkit-linear-gradient(top,#f6ae1b,#b46001);
            background:-moz-linear-gradient(top,#f6ae1b,#b46001);
            background:linear-gradient(top,#f6ae1b,#b46001);
        }
        .control-round label.active:after,
        .control-round label.active:before{
            position:absolute;
            display:block;
            content:"";
            border-style:solid;
            left:50%;
            top:40px;
        }
        .control-round label.active:after{
            margin:5px 0 0 -6px;
            border-width:6px;
            border-color:#dc8e0f transparent transparent transparent;
            z-index:3;
        }
        .control-round label.active:before{
            margin:4px 0 0 -7px;
            border-width:7px;
            border-color:#000 transparent transparent transparent;
            z-index:2;
        }
        .control-round label:nth-child(1){
            left:0;
        }
        .control-round label:nth-child(2){
            left:50%;
            margin-left:-18px;
        }
        .control-round label:nth-child(3){
            right:0;
        }
        .control-group{
            position:relative;
            margin:20px 0;
        }
        .control-group:after{
            position:absolute;
            display:block;
            top:10px;
            left:12px;
            width:25px;
            color:rgba(255,255,255,.6);
            text-align:center;
            font-size:16px;
            content: "\21";
            font-family: 'icomoon';
            font-style: normal;
            speak: none;
            font-weight: normal;
            -webkit-font-smoothing: antialiased;
        }
        .control-group:nth-child(2):after{
            content: "\22";
        }
        .control-group input{
            padding-left:40px;
            width:100%;
            height:44px;
            border-radius:22px;
            border:1px solid #2b2b2b;
            box-shadow:inset 0 0 10px rgba(0,0,0,1);
            background:#151515;
            -webkit-transition: border linear 0.2s, box-shadow linear 0.2s;
            -moz-transition: border linear 0.2s, box-shadow linear 0.2s;
            -o-transition: border linear 0.2s, box-shadow linear 0.2s;
            -ms-transition: border linear 0.2s, box-shadow linear 0.2s;
            transition: border linear 0.2s, box-shadow linear 0.2s;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -o-box-sizing: border-box;
            -ms-box-sizing: border-box;
            box-sizing: border-box;
        }
        .control-group input:focus{
            box-shadow: inset 0 1px 3px rgba(255,255,255,0.1), 0 0 8px rgba(255,255,255, 0.6);
        }
        .form-actions{
            text-align:right;
        }
        .form-actions .btn{
            position:relative;
            padding:0 20px;
            margin-left:5px;
            height:35px;
            line-height:35px;
            color:#000;
            text-shadow:0 1px 0 #7f7f7f;
            border-radius:17px;
            border:1px solid #4f4f4f;
            box-shadow:0 0 3px #000;
            background:-webkit-linear-gradient(top,#666666,#414141);
            background:-moz-linear-gradient(top,#666666,#414141);
            background:linear-gradient(top,#666666,#414141);
        }
        .form-actions .btn:hover{
            background:-webkit-linear-gradient(top,#757575,#4e4e4e);
            background:-moz-linear-gradient(top,#757575,#4e4e4e);
            background:linear-gradient(top,#757575,#4e4e4e);
        }
        .form-actions .btn:active{
            top:1px;
            border:1px solid #111;
            box-shadow:0 1px 1px #111 inset;
            background:-webkit-linear-gradient(top,#4e4e4e,#4e4e4e);
            background:-moz-linear-gradient(top,#4e4e4e,#4e4e4e);
            background:linear-gradient(top,#4e4e4e,#4e4e4e);
        }
        .form-actions .btn[type=submit]{
            border:1px solid #c36e0e;
            text-shadow:0 1px 0 #f4a922;
            background:-webkit-linear-gradient(top,#f6ab15,#b46001);
            background:-moz-linear-gradient(top,#f6ab15,#b46001);
            background:linear-gradient(top,#f6ab15,#b46001);
        }
        .form-actions .btn[type=submit]:hover{
            background:-webkit-linear-gradient(top,#ffc145,#c26905);
            background:-moz-linear-gradient(top,#ffc145,#c26905);
            background:linear-gradient(top,#ffc145,#c26905);
        }
        .form-actions .btn[type=submit]:active{
            border:1px solid #492700;
            box-shadow:0 1px 2px #492700 inset;
            background:-webkit-linear-gradient(top,#c16e05,#c16e05);
            background:-moz-linear-gradient(top,#c16e05,#c16e05);
            background:linear-gradient(top,#c16e05,#c16e05);
        }
        @font-face {
            font-family: 'icomoon';
            src:url('/resources/fonts/icomoon.eot');
            src:url('/resources/fonts/icomoon.eot?#iefix') format('embedded-opentype'),
            url('/resources/fonts/icomoon.svg#icomoon') format('svg'),
            url('/resources/fonts/icomoon.woff') format('woff'),
            url('/resources/fonts/icomoon.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }
    </style>
    <script src="js/vendor/modernizr-2.6.2.min.js"></script>
    <!-- templatemo 410 circle -->
</head>

<script type="text/javascript">
    window.onload=function(){
        var oForm=document.getElementById('form-control');
        var aLabel=oForm.getElementsByTagName('label');
        var aInput=oForm.getElementsByTagName('input')

        for(var i=0;i<aLabel.length;i++){
            aInput[i].index=i;
            aLabel[i].onclick=function(){
                for(var i=0;i<aLabel.length;i++){
                    aLabel[i].className='';
                }
                this.className='active';
            }
            aInput[i].onclick=function(){
                for(var i=0;i<aLabel.length;i++){
                    aLabel[i].className='';
                }
                aLabel[this.index].className='active';
            }
        }
    }
</script>
</head>
<body>

<div class="page">

    <section class="demo">

        <div class="login" class="clearfix">
            <h2>Web Site Form Registration</h2>
            <p>with steps</p>
            <form method="post" name="Spring_Form" action="/Register" id="form-control" onsubmit="return Security()">

                <div class="control-round" id="control-round">
                    <label for="Hospital_Name" class="active">1</label>
                    <label for="Hospital_Address" style="margin-left:-90px">2</label>
                    <label for="Hospital_Phone" style="margin-right:150px">3</label>
                    <label for="Hospital_Email" style="margin-left:56px">4</label>
                    <label for="Hospital_Password" style="margin-left:128px">5</label>

                </div>

                <div class="control-group">
                    <input  type="text"  name="Hospital_Name" id="Hospital_Name"  placeholder=" Hospital_Name ">

                </div>
                <select id="start" name="Hospital_Gov" style="width: 100%">
                    <option> Hospital Government </option>
                    <option value="Garbeya">Garbeya</option>
                    <option value="Cairo">Cairo</option>
                    <option value="Menofia">Menofia</option>
                    <option value="Giza">Giza</option>
                    <option value="Others">Others</option>
                </select>
                <br>

                <div class="control-group">
                    <input  type="text"  name="Hospital_Address" id="Hospital_Address" placeholder=" Hospital_Address ">
                </div>

                <div class="control-group">
                    <input  type="text"  name="Hospital_Phone" id="Hospital_Phone" placeholder=" Hospital_Phone ">
                </div>

                <div class="control-group">
                    <input  type="email"  name="Hospital_Email" id="Hospital_Email" placeholder=" Hospital_Email ">
                </div>
                <div class="control-group">
                    <input  type="password"  name="Hospital_Password" id="Hospital_Password" placeholder="Hospital_Password">
                </div>

                <input type="hidden" name="${_csrf.parameterName}"
                       value="${_csrf.token}"/>

                <div class="form-actions">

                    <input name="submit" type="submit"
                           value="Register Me In "/>

                </div>

            </form>
        </div>

    </section>
</div>

<!-- -->
<script>
   function Security(){

           var text=/^[A-Za-z0-9,@.]+$/;
           // UserName Validation //
           if (document.Spring_Form.Hospital_Name.value.length <1) {
               alert("Hospital Name Is Requred.");
               return false;
           }
           if(document.Spring_Form.Hospital_Name.value.length >20) {
               alert("Hospital Name Is InValid Too Long .");
               return false;
           }

           if( document.Spring_Form.Hospital_Name.value.match(text)) {

           }else{
               alert("Not A Text Hospital_Name");
               return false;
           }

       if (document.Spring_Form.Hospital_Address.value.length <1) {
           alert("Hospital Address Is Requred.");
           return false;
       }
       if(document.Spring_Form.Hospital_Address.value.length >20) {
           alert("Hospital Address Is InValid Too Long .");
           return false;
       }

       if( document.Spring_Form.Hospital_Address.value.match(text)) {

       }else{
           alert("Not A Text  Hospital_Address");
           return false;
       }



       if (document.Spring_Form.Hospital_Email.value.length <1) {
           alert("Hospital Email Is Requred.");
           return false;
       }
       if(document.Spring_Form.Hospital_Email.value.length >30) {
           alert("Hospital Email Is InValid Too Long .");
           return false;
       }

       if( document.Spring_Form.Hospital_Email.value.match(text)) {

       }else{
           alert("Not A Text  Hospital_Email");
           return false;
       }

       // UserPassWord Validation //
           if (document.Spring_Form.Hospital_Password.value.length < 1) {
               alert("Hospital PassWord Is Requred .");
               return false;
           }
       // Phone  Validation //
       if (document.Spring_Form.Hospital_Phone.value.length <1 ) {
           alert("Hospital Phone Is Requred .");
           return false;
       }if (document.Spring_Form.Hospital_Phone.value.length != 11 ) {
           alert("Not A Phone Number .");
           return false;
       }if (isNaN(document.Spring_Form.Hospital_Phone.value) ) {
           alert("Not A Phone Number .");
           return false;
       }


       else {
           return true;

       }

       }

</script>

<!-- -->
<!-- BEGIN Tynt Script -->
<script type="text/javascript">
    if(document.location.protocol=='http:'){
        var Tynt=Tynt||[];Tynt.push('afjwTwseyr47yaacwqm_6r');
        (function(){var s=document.createElement('script');s.async="async";s.type="text/javascript";s.src='http://tcr.tynt.com/ti.js';var h=document.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);})();
    }
</script>
<!-- END Tynt Script -->
<!-- AddThis Button BEGIN -->
<div class="addthis_toolbox addthis_floating_style addthis_32x32_style" style="left:50px;top:50px;">
    <a class="addthis_button_preferred_1"></a>
    <a class="addthis_button_preferred_2"></a>
    <a class="addthis_button_preferred_3"></a>
    <a class="addthis_button_preferred_4"></a>
    <a class="addthis_button_compact"></a>
</div>
<script type="text/javascript">var addthis_config = {"data_track_addressbar":true};</script>
<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5196611067e334e6"></script>
<!-- AddThis Button END -->
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-37338819-1']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>


<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
<script>window.jQuery || document.write('<script src="resources/js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
<script src="resources/js/jquery.easing-1.3.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/js/plugins.js"></script>
<script src="resources/js/main.js"></script>
<script type="text/javascript">

    jQuery(function ($) {

        $.supersized({

            // Functionality
            slide_interval: 3000, // Length between transitions
            transition: 1, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
            transition_speed: 700, // Speed of transition

            // Components
            slide_links: 'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')
            slides: [ // Slideshow Images
                {
                    image: 'resources/images/templatemo-slide-1.jpg'
                }, {
                    image: 'resources/images/templatemo-slide-2.jpg'
                }, {
                    image: 'resources/images/templatemo-slide-3.jpg'
                }, {
                    image: 'resources/images/templatemo-slide-4.jpg'
                }
            ]

        });
    });

</script>

<!-- Google Map -->
<script src="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="resources/js/vendor/jquery.gmap3.min.js"></script>
<!-- Google Map Init-->
<script type="text/javascript">
    function templatemo_map() {
        $('.google-map').gmap3({
            marker:{
                address: '16.8496189,96.1288854'
            },
            map:{
                options:{
                    zoom: 15,
                    scrollwheel: false,
                    streetViewControl : true
                }
            }
        });
    }
</script>
</body>
</html>