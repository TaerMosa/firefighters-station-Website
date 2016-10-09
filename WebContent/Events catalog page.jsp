<%@ page language="java" contentType="text/html; charset=windows-1255"
    pageEncoding="windows-1255"%>
<!DOCTYPE html >
<html>
<head>
<title>Events Catalog</title>
<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// Set the interval to be 1.5 seconds
		var t = setInterval(function() {
			$("#carousel ul").animate({
				marginLeft : -800
			}, 1500, function() {
				$(this).find("li:last").after($(this).find("li:first"));
				$(this).css({
					marginLeft : 0
				});
			})
		}, 2500);
	});
</script>


<style type="text/css">
p {
	width:750px;
	border: double;
	color:pink;
}

#main1 {
	margin-left: 200px;
	width: 850px;
	height: 420px;
	background-color:maroon;
}

#main2 {
	margin-left: 200px;
	width: 850px;
	height: 420px;
	background-color: black;
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
border:double;
border-width:10px;
border-style:dotted;
border-color:blue;
	width: 700px;
	height: 350px;
}

img[name=fire] {
	margin-left: -20px;
	width:1300px;
	height: 70px;

} 
img[name=Back]{
width: 90px;
height: 50px;
}
form {
margin-top:-800px;
margin-left: 50px;
}
input {
background-color:fuchsia;
color:white;
width: 100px;
height: 50px;
}
</style>
</head>
<body bgcolor="black">

	<div id="main1">
		<div id="carousel">
			<ul>
				<li><img src="images/1.jpg"></li>
				<li><img src="images/2.jpg"></li>
				<li><img src="images/3.jpg"></li>
				<li><img src="images/4.jpg"></li>
				<li><img src="images/5.jpg"></li>
			</ul>
		</div>
	</div>
	<img name="fire" src="pic/fire.jpg">
	<div id="main2">
		<div id="carousel">
			<ul>
				<li><p >1)Hazardous materials handling and gas leaks:</p>

					<p>Exit the area — Immediately after a hazardous chemical is
						spilled you must exit the area. If the spill occurred in a
						laboratory and access to the fume hood is not blocked by the spill
						and/or hazardous vapors are not present in the area then raise the
						sash on the fume hood and increase the airflow.</p></li>

				<li><p>2)Rescue trapped in traffic accidents:</p>

					<p>Rescue Tools and hydraulic rescue tools are used by
						firefighters and emergency rescue crews to rescue trapped victims
						from collapsed buildings or more commonly road traffic collisions
						(RTC's) also known as road traffic incidents (RTI's). Fire Rescue
						Tools and hydraulic rescue equipment include cutters, spreaders,
						ram jacks and combined rescue tools.</p></li>

				<li><p>3)Rescue trapped in height, depth,
						ignorance,industrial accidents, etc.:</p>

					<p>The rescue of the 33 unfortunate Chilean miners has
						definitely turn into an international media event. All aspects of
						the rescue have been carefully staged to make the entire thing a
						spectacular show inspiring emotions, admiration and national
						pride. For those knowledgeable of Masonic and occult symbolism, it
						is hard not to ponder on the numerological and symbolic facts
						ofthe event.</p></li>

				<li><p>4)Rescue trapped in the elevator and breaking doors
						inan emergency:</p>

					<p>During the 1970s and 1980s, there were several accidents
						involving elevator passengers who manually pried open the car
						doors and attempted to exit an elevator stopped between floors.
						Youngsters living in public housing projects and students in
						college dormitories have been known to pry open the car doors of a
						moving elevator, which immediately stops the hoisting machine and
						sets the brake. This can stall the elevator between floors,
						enabling the passengers to climb on top of the car. "Elevator
						surfing," as it is called, is undoubtedly a thrilling experience,
						riding the top of an elevator traveling at high speeds.
						Unfortunately, some of these "surfers" were decapitated or lost
						limbs when they were crushed between the elevator car, hoistway
						(shaftway), or counterweights.</p></li>

				<li><p>5)Animal Rescue:</p>
					<p>For many years Hampshire's firefighters have responded to
						all kinds of incidents involving animals and have been largely
						successful using their amazing ingenuity and dedication. Large
						animal rescue however is recognised as one of the most dangerous
						activities a firefighter will be engaged in and so to protect
						firefighters and members of the public, specialised training and
						equipment is essential. Hampshire has a predominantly rural
						community and consequently firefighters regularly turn their
						skills to an array of different rescues involving pets, livestock
						and wild animals. The larger species more commonly rescued are
						horses, cattle, pigs, sheep and deer that find themselves trapped
						in machinery, bogs, slurry pits, rivers, pools, ditches or victims
						of cliff falls and road incidents.</p></li>
			</ul>
		</div>
	</div>
	<form>
	<input type="button" value="Add Event"><br><br>
	<input type="button" value="Remove Event"><br><br>
	<a href="HomePage.jsp" ><img name="Back"  src="pic/back.jpg"></a>
	</form>

</body>
</html>