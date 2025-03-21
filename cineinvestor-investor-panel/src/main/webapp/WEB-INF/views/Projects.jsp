<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Project Overview</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
body {
	background: #87CEEB; /* Sky Blue */
	color: white;
	font-family: 'Poppins', sans-serif;
	text-align: center;
	overflow-x: hidden;
	padding-top: 80px;
}

.navbar {
	background: rgba(0, 0, 0, 0.8);
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}

.container {
	margin-top: 50px;
}

.project-card {
	background: #ffb6c1; /* Light Pink */
	border-radius: 15px;
	padding: 20px;
	width: 300px;
	text-align: center;
	backdrop-filter: blur(10px);
	box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
	transition: transform 0.2s ease-in-out, box-shadow 0.2s ease-in-out,
		background 0.2s ease-in-out;
	color: black;
	cursor: pointer; /* Makes it feel like a button */
	display: inline-block;
	font-weight: bold;
	border: none;
}

.project-card:hover {
	transform: scale(1.05);
	box-shadow: 0px 8px 20px rgba(255, 255, 255, 0.3);
	background: #ff8ea1; /* Slightly darker pink for hover effect */
}

.project-card:active {
	transform: scale(0.98); /* Slight press-down effect */
	box-shadow: 0px 4px 12px rgba(255, 255, 255, 0.2);
}

.project-card img {
	width: 100px;
	height: 100px;
	border-radius: 10px;
	object-fit: cover;
}

.animated-fade-in {
	animation: fadeIn 1.5s ease-in-out;
}

@
keyframes fadeIn {from { opacity:0;
	transform: translateY(20px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>

</head>
<body>

	<%@ include file="header.jsp"%>
	<!-- Including header without extra HTML tags -->

	<div class="container">

		<div class="row justify-content-center mt-4">
			<div class="col-md-4 mb-4">
				<div class="project-card"
					onclick="redirectTo('https://cinevestor.in/come-in-cdk-film-project-overview')">
					
					<h4>CDK Film Project</h4>
					<p>Join the journey into the world of cinema.</p>
					<p>Explore project</p>
				</div>
			</div>
			<div class="col-md-4 mb-4">
				<div class="project-card"
					onclick="redirectTo('')">
					
					<h4>Upcoming project</h4>
					<p>Join the journey into the world of cinema.</p>
					<p>Explore project</p>
				</div>
			</div>
			
		</div>
	</div>

	<script>
	function redirectTo(url) {
	    window.open(url, '_blank');
	}

    </script>
</body>
</html>
