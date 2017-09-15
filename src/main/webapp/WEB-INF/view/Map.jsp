<!DOCTYPE HTML>
<html>
<head>



    <form action="/Back" method="get"style="margin-top:2%;width: 40%;margin-left: 30%">

    <button style=" font-size: 15px;font-weight: bold;width: 40%;margin-left: 35%;padding: 3%;color: #fff;background-color: #000"> Back To Login Page :) </button>

    </form>
    <title>NICUs</title>

    <style>

        #map {
            height:60%;
        }

        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
        }
    </style>

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

	<!--Reso-->
<h3 id="reso" style="margin-top:100px"> Location ..... </h3>
<div id="floating-panel">
    <br><br>
    <b><hr>First choose from start MyLocation and choose closer NICU <hr></b>
    <b>Your location "A"</b>
    <select id="start">
        <option value=""> My Location </option>
    </select>
    <b>"B" is NICUs have space </b>
    <select id="end">
        <option value="30.6355657,31.0924768">ستشفى بركة السبع العام</option>
        <option value="30.4419813,30.9630092">مستشفى سرس الليان المركزى"</option>
        <option value="30.2958669,30.9911439">مستشفى اشمون العام</option>
        <option value="30.472076,30.9295633">مستشفى منوف العام</option>
        <option value="30.6844904,30.9524721">مستشفى تلا المركزى</option>
        <option value="30.5526188,31.1411875">مستشفى قويسنا المركزى</option>
        <option value="30.082741,31.354556">مستشفى الجمعية الشرعية للاطفال المبتسرين وحديثى</option>
        <option value="30.1269646,31.3227974">مستشفى تبارك للاطفال</option>
        <option value="30.0970265,31.3122287">مستشفى الجنزورى التخصصى</option>
        <option value="31.1911269,29.9398336">مركز الاسكندرية لجراحات الأطفال</option>
        <option value="31.2299698,29.9543735">مستشفى اجيال</option>


        <!--
      <option value="31.3543,27.2373">Marsa matroh </option>
      -->
    </select>
</div>
<div id="map"></div>
&nbsp;
<div id="warnings-panel"></div>

<script>
    var x;
    var y;
    var v;
    function initMap() {

        //......../
        var map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: -34.397, lng: 150.644},
            zoom: 6
        });
        var infoWindow = new google.maps.InfoWindow({map: map});

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                /// Why ///
                infoWindow.setPosition(pos);
                x=pos.lat;
                y=pos.lng;
                v =x+','+y;

                document.getElementById('reso').innerHTML=v;

                infoWindow.setContent('Location Found ...');
                //infoWindow.setContent('Location found.');
                map.setCenter(pos);
            }, function() {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }


        //.........../
        var markerArray = [];
        // 31.2001° N, 29.9187° E
        // Instantiate a directions service.
        var directionsService = new google.maps.DirectionsService;

        // Create a map and center it on Manhattan.
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 13,

            center: {lat: 30.7865, lng: 31.0004}
        });

        // Create a renderer for directions and bind it to the map.
        var directionsDisplay = new google.maps.DirectionsRenderer({map: map});

        // Instantiate an info window to hold step text.
        var stepDisplay = new google.maps.InfoWindow;

        // Display the route between the initial start and end selections.
        calculateAndDisplayRoute(
                directionsDisplay, directionsService, markerArray, stepDisplay, map);
        // Listen to change events from the start and end lists.

        var onChangeHandler = function() {
            calculateAndDisplayRoute(
                    directionsDisplay, directionsService, markerArray, stepDisplay, map);
        };
        document.getElementById('start').addEventListener('change', onChangeHandler);
        document.getElementById('end').addEventListener('change', onChangeHandler);
    }

    function calculateAndDisplayRoute(directionsDisplay, directionsService,
                                      markerArray, stepDisplay, map) {
        // First, remove any existing markers from the map.
        for (var i = 0; i < markerArray.length; i++) {
            markerArray[i].setMap(null);
        }

        // Retrieve the start and end locations and create a DirectionsRequest using
        // WALKING directions.
        //////////////////////////////////////////////////////////////////////////////////////////////////
        var Loc=document.getElementById('reso').innerHTML;
        directionsService.route({
            ///////  origin: document.getElementById('start').value,

            origin: document.getElementById('start').value=Loc,
            destination: document.getElementById('end').value,

            travelMode: 'WALKING'
        }, function(response, status) {
            // Route the directions and pass the response to a function to create
            // markers for each step.
            if (status === 'OK') {
                document.getElementById('warnings-panel').innerHTML =
                        '<b>' + response.routes[0].warnings + '</b>';
                directionsDisplay.setDirections(response);
                showSteps(response, markerArray, stepDisplay, map);
            } else {
                window.alert('Directions request failed due to ' + status);
            }
        });
    }


    function attachInstructionText(stepDisplay, marker, text, map) {
        google.maps.event.addListener(marker, 'click', function() {
            // Open an info window when the marker is clicked on, containing the text
            // of the step.
            stepDisplay.setContent(text);
            stepDisplay.open(map, marker);
        });
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                'Error: The Geolocation service failed.' :
                'Error: Your browser doesn\'t support geolocation.');
    }

</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCmYO5bQQyAO-vbVT_Z1O_nzI4tfSeiBF0&callback=initMap">
</script>
                        <script>
    $(document).ready(function(){
        // Add smooth scrolling to all links in navbar + footer link
        $(".navbar a, footer a[href='#myPage']").on('click', function(event) {

            // Store hash
            var hash = this.hash;

            // Using jQuery's animate() method to add smooth page scroll
            // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 900, function(){

                // Add hash (#) to URL when done scrolling (default click behavior)
                window.location.hash = hash;
            });
        });
    })
</script>
<!-- /js for smooth navigation -->
<!-- js for sliding animations -->
<script>
    $(window).scroll(function() {
        $(".slideanim").each(function(){
            var pos = $(this).offset().top;

            var winTop = $(window).scrollTop();
            if (pos < winTop + 600) {
                $(this).addClass("slide");
            }
        });
    });
</script>
<!-- /js for sliding animations -->
<!-- /js files -->

</body>
</html>