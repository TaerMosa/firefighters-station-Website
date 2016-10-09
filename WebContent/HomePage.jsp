<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html >
<% 
	String fname = (String) session.getAttribute("fname");
	String myType = (String) session.getAttribute("myType");
	if (fname == null)
		fname = "guest";
	if (myType == null)
		myType = "guest";
	%>
<html>
<head>
<title>Home Page</title>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// Set the interval to be 1.5 seconds
		var t = setInterval(function() {
			$("#carousel ul").animate({
				marginLeft :-800
			},2000, function() {
				$(this).find("li:last").after($(this).find("li:first"));
				$(this).css({
					marginLeft : 0
				});
			})
		},2000);
	});
</script>
   <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyASLzZIr1yDOY65IRtWzNvgUJCET7XHdeI">
    </script>
    <script type="text/javascript">
      function initialize() {
        var mapOptions = {
          center: { lat: 31.046051, lng: 34.851612},
          zoom: 8
        };
        var map = new google.maps.Map(document.getElementById('map-canvas'),
            mapOptions);
        var Hevron = new google.maps.LatLng(31.532569 , 35.099826);
        var Rishon = new google.maps.LatLng(31.970427 , 34.792964);
        var Ashdod = new google.maps.LatLng(31.804381 , 34.655314);
        var Jerusalem = new google.maps.LatLng( 31.768319 , 35.21371);
        var BeerSheva = new google.maps.LatLng(31.252973  ,  34.791462);
        var Marker1 = new google.maps.Marker({
            position:Hevron,
            map: map,
            animation:google.maps.Animation.BOUNCE
        });
        var Marker2 = new google.maps.Marker({
            position:Rishon,
            map: map,
            animation:google.maps.Animation.BOUNCE
        });
        var Marker3 = new google.maps.Marker({
            position:Ashdod,
            map: map,
            animation:google.maps.Animation.BOUNCE
        });
        var Marker4 = new google.maps.Marker({
            position:Jerusalem,
            map: map,
            animation:google.maps.Animation.BOUNCE
        });
        var Marker5 = new google.maps.Marker({
            position:BeerSheva,
            map: map,
            animation:google.maps.Animation.BOUNCE
        });
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
   
<style type="text/css">
#main{
	width:300pxpx;
	height: 320px;

}

#carousel {
	width: 800px;
	height: 400px;
	overflow: hidden;
}

#carousel ul {
	list-style: none;
	width: 3600px;
	height: 400px;
}

#carousel ul li {
	float: left;
	width: 800px;
	height: 400px;
}

#carousel ul li img {
	width: 700px;
	height: 250px;
}
table {
	width: 1200px;
	height: 570px;
}

h1 {
	color: red;
	margin-top: -100px;
	margin-left: 340px;
}

h4 {
	color: white;
}

h5 {
	color: yellow;
	margin-left: 10px;
	margin-top: -40px;
}

a {
	margin-left: 10px;
	color: white;
	font-style: italic;
}

img[name=Banner1] {
	margin-top: 10px;
	margin-left: 13px;
	width: 170px;
	height: 140px;
}

img[name=Banner2] {
	margin-left: 13px;
	width: 170px;
	height: 140px;
}

img[name=Banner3] {
	margin-left: 13px;
	width: 170px;
	height: 140px;
}

img[name=fireflag] {
	margin-top: 5px;
	margin-right: 40px;
	width: 150px;
	height: 150px;
	width: 250px;
}

img[name=img7] {
	margin-left: 600px;
	margin-top: 5px;
	height: 150px;
	width: 150px;
}


img[name=MenInFire] {
	margin-top: 10px;
	margin-left: 10px;
}

img[name=serachIcon] {
	margin-top: 10px;
}

img[name=twit] {
	margin-left: -550px;
	width: 50px;
	height: 50px;
	width: 50px;
}

img[name=face] {
	width: 50px;
	height: 50px;
}

img[name=mail] {
	width: 50px;
	height: 50px;
}

img[name=in] {
	width: 50px;
	height: 50px;
}

p {
	margin-left: 300px;
	width: 450px;
	height: 150px;
	color: white;
	font-style: oblique;
	margin-top: -170px;
}

input[type=Button] {
	color: white;
	background-color: purple;
	height: 30px;
	width: 150px;
}

td[id=Footer] {
	background-color: black;
	border-radius: 30px;
	
}

td[id=right] {
	background-color: black;
	
}

td[id=Left] {
	background-color: black;
	
}

td[id=middle] {
	background-color: black;
	
	
}
</style>
</head>
<body >
 
	<table>	


	<tr>
			<!-- ============ HEADER SECTION ============== -->
			<td id="Head" colspan="3" style="height: 100px; "><img
				name="fireflag" src="pic/fireflag.jpg"> <img name="img7"
				src="pic/7.jpg"> <br> <br>
				<h1>Israel Fire and Rescue Services</h1>
				<form method="get" action="Login.jsp">

<p>welcome:<%=fname%> </p></form>
				</td>
		</tr>
		<!-- ============ NAVIGATION BAR SECTION ============== -->
		<tr>
			<td id="Bar" colspan="4" valign="middle" height="30"><input
				type="button" value="About"> <input type="button"
				value="Reform"> <input type="button" value="What We Do">
				<input type="button" value="Tools & Technology"> <input
				type="button" value="Aerial Firefighting"> <input
				type="button" value="News & Resources"> <input type="text"
				value="Search"> <img name="serachIcon" width="30"
				height="30" src="pic/searchIcon.jpg"></td>
		</tr>

		<tr>
			<!-- ============ LEFT COLUMN (MENU) ============== -->
			<td id="Left" width="10%" valign="top"><br> <a
				href="Login.jsp">LogIn</a><br> <br>
				<h4>-------------------------------------</h4> <a
				href="NewUser.jsp">Create Account</a><br> <br>
				<h4>-------------------------------------</h4> <a
				href="Events catalog page.jsp">Events Catalog</a><br> <br>
				<h4>-------------------------------------</h4> <a
				href="Adding an event page.jsp">Add Event</a><br> <br>
				<h4>-------------------------------------</h4> <a
				href="Event Management page.jsp">Event Management</a><br> <br>
				<h4>-------------------------------------</h4>
				<a href="HomePage.jsp">Contact Us</a></td>
			<!-- ============ MIDDLE COLUMN (CONTENT) ============== -->
	
			<td id="middle" width="40%" valign="top">
	<div id="main">
		<div id="carousel">
			<ul>
				<li><img src="pic/Wide Aerial-Firefighting.jpg" style="border-radius: 30px;  "></li>
				<li><img src="pic/Wide Fire Technology.jpg" style="border-radius: 30px;  " ></li>
				<li><img src="pic/Wide fire.jpg" style="border-radius: 30px;  "></li>
				
			</ul>
		</div>
	</div>
				 <img src="pic/MenInFire.jpg"name="MenInFire">

				<p>The delegation follows a visit made by the Israel Minister of
					Public Security, Yitzhak Aharonovitch, to Greece in June of last
					year. During the visit it was decided that the two countries would
					work more closely together in firefighting operations. Later, a
					high-ranking Greek delegation, led by the Greek Fire Commissioner,
					visited Israel, and following that, an Israeli delegation, led by
					Fire Commissioner Shahar Ayalon, visited Greece to observe a
					national exercise.</p> <br>
					
			</td>
			<!-- ============ Right COLUMN (MENU) ============== -->
			<td id="right" width="10%" valign="top">
			<div id="map-canvas" style="width: 220px;height: 560px;"></div>
			</td>

		</tr>

		<!-- ============ FOOTER SECTION ============== -->
		<tr>
			<td id="Footer" colspan="3" align="center"><a
				href="http://www.twitter.com"> <img name="twit"
					src="pic/twitter.jpg"></a> <a href="http://www.facebook.com">
					<img name="face" src="pic/facebook.jpg">
			</a> <a href="http://www.gmail.com"> <img src="pic/@.jpg" name="mail"></a>
				<a href="http://www.linkedin.com"> <img name="in"
					src="pic/in.jpg"></a>
				<h5>@Ta2erMosa\NisreenBasela\ Copyrights</h5></td>
		</tr>
	</table>
</body>
</html>