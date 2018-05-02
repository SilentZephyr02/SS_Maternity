<!DOCTYPE html>
<html lang="en">
	<head>
    <% base_tag %>
		$MetaTags
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		
		<style>
			.no-padding {padding:0px}
			.active-col {background-color: #90ee90;}
			.nav-colour {background-color: #42b254;}
			.sky-colour {background-color:#00abc7;}
			body{background-color:#90ee90}
			img.sticky {
				position: -webkit-sticky;
				position: sticky;
				top: 0;
			}
			footer{background-color:#42b254}

			@media screen and (min-width: 768px){
				.carousel {
					margin: 1rem;
				}
				.carousel-inner {
					height: auto;
				}

				.carousel-control-prev {
					margin-left: -80px;
				}
				.carousel-control-next {
					margin-right: -80px;
				}	
			}
				.carousel-caption {
					color:black;
					position: relative;
					left: auto;
					right: auto;
				}
				.carousel-indicators {
					position: static;
				}
        </style>
	</head>
	<body>
		<% include Header %>			
		<% include NavBar %>
		<div class="container">
			<div class="row">
				<div class="col-lg-2 d-none d-lg-block no-padding">
					<img src="./images/image-side2.png" class="float-right sticky">
				</div>
				<!--Content-->
				<div class="col-lg-8 active-col">
					<br>
					<h1>$Title</h1>
						$Layout	
						</div>
				<!--Content-End-->
				<div class="col-lg-2 d-none d-lg-block no-padding">
					<img src="./images/image-side2.png" class="float-left sticky">
				</div>
			</div>
		</div>
		<% include Footer %>
	</body>
</html>