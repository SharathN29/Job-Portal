<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>Find Jobs</title>
</head>
<body>
	<div
		class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 border-bottom shadow-sm"
		style="background-color: #f64b3c">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			fill="none" stroke="currentColor" stroke-linecap="round"
			stroke-linejoin="round" stroke-width="2" class="d-block" role="img"
			viewBox="0 0 24 24" focusable="false">
			<title>Product</title><circle cx="12" cy="12" r="10" />
			<path
				d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94" /></svg>
		<h5 class="my-0 mr-md-auto font-weight-normal"
			style="padding-left: 20px">Job Portal</h5>

		<nav class="my-2 my-md-0 mr-md-3">
			<a class="p-2 text-dark" href="CandidateHome.jsp">Home</a> <a
				class="p-2 text-dark" href="CandFindJobs.jsp">Find Job</a> <a
				class="p-2 text-dark" href="CandAppliedJobs.jsp">Applied Jobs</a>
		</nav>
		<form action="LogOut">
			<input type="submit" class="btn btn-outline-dark" value="Log Out">
			<!--  <a class="btn btn-outline-primary" href="#">Log Out</a> -->
		</form>
	</div>

	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<h3 class="display-4">Current Open Positions</h3>
	</div>
	
		<div class="px-3 py-3 pt-md-5 pb-md-4 mx-auto">
			<form action="CandJobApplication" method="post">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Full Name</label> <input type="text"
							class="form-control" id="fullname">
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Email</label> <input type="email"
							class="form-control" id="email">
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress">Address</label> <input type="text"
						class="form-control" id="address1" placeholder="1234 Main St">
				</div>
				<div class="form-group">
					<label for="inputAddress2">Address 2</label> <input type="text"
						class="form-control" id="address2"
						placeholder="Apartment, studio, or floor">
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label> <input type="text"
							class="form-control" id="city ">
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">State</label> <select id="inputState"
							class="form-control">
							<option selected>Choose...</option>
							<option value="AL">Alabama</option>
							<option value="AK">Alaska</option>
							<option value="AZ">Arizona</option>
							<option value="AR">Arkansas</option>
							<option value="CA">California</option>
							<option value="CO">Colorado</option>
							<option value="CT">Connecticut</option>
							<option value="DE">Delaware</option>
							<option value="DC">District Of Columbia</option>
							<option value="FL">Florida</option>
							<option value="GA">Georgia</option>
							<option value="HI">Hawaii</option>
							<option value="ID">Idaho</option>
							<option value="IL">Illinois</option>
							<option value="IN">Indiana</option>
							<option value="IA">Iowa</option>
							<option value="KS">Kansas</option>
							<option value="KY">Kentucky</option>
							<option value="LA">Louisiana</option>
							<option value="ME">Maine</option>
							<option value="MD">Maryland</option>
							<option value="MA">Massachusetts</option>
							<option value="MI">Michigan</option>
							<option value="MN">Minnesota</option>
							<option value="MS">Mississippi</option>
							<option value="MO">Missouri</option>
							<option value="MT">Montana</option>
							<option value="NE">Nebraska</option>
							<option value="NV">Nevada</option>
							<option value="NH">New Hampshire</option>
							<option value="NJ">New Jersey</option>
							<option value="NM">New Mexico</option>
							<option value="NY">New York</option>
							<option value="NC">North Carolina</option>
							<option value="ND">North Dakota</option>
							<option value="OH">Ohio</option>
							<option value="OK">Oklahoma</option>
							<option value="OR">Oregon</option>
							<option value="PA">Pennsylvania</option>
							<option value="RI">Rhode Island</option>
							<option value="SC">South Carolina</option>
							<option value="SD">South Dakota</option>
							<option value="TN">Tennessee</option>
							<option value="TX">Texas</option>
							<option value="UT">Utah</option>
							<option value="VT">Vermont</option>
							<option value="VA">Virginia</option>
							<option value="WA">Washington</option>
							<option value="WV">West Virginia</option>
							<option value="WI">Wisconsin</option>
							<option value="WY">Wyoming</option>
						</select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">Zip</label> <input type="text"
							class="form-control" id="inputZip">
					</div>
				</div>
				<div class="custom-file">
				  <input type="file" class="custom-file-input" id="customFile">
				  <label class="custom-file-label" for="customFile">Choose file</label>
				</div>
				<button type="submit" class="btn btn-primary">Sign in</button>
			</form>

		</div>



		<div class="container">
			<footer class="pt-4 my-md-5 pt-md-5 border-top">
				<div class="row">
					<div class="col-12 col-md">
						<img class="mb-2"
							src="{{ site.baseurl }}/docs/{{ site.docs_version }}/assets/brand/bootstrap-solid.svg"
							alt="" width="24" height="24"> <small
							class="d-block mb-3 text-muted text-center">&copy;
							2020-www.jobportal.com</small>
					</div>
				</div>
			</footer>
		</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
			integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
			integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
			integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
			crossorigin="anonymous"></script>
</body>
</html>