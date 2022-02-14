<%@page import="java.io.PrintWriter"%>
<%@page import="com.example.model.StudentModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>

	<div class="container col-md-6 justify-content-center">


		<form action="/save" method="post">
			<h2>Edit Registration Form</h2>
			<div class="mb-3">
				<label for="name" class="form-label">Name</label> <input type="text"
					class="form-control" id="naem" placeholder="Type your name"
					name="name" value="${student.name}"> <input type="hidden"
					class="form-control" id="id" name="id" value="${student.id}">
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email</label> <input
					type="email" class="form-control" id="email"
					placeholder="Type your email" name="email" value="${student.email}">
			</div>

			<div class="mb-3">
				<label>Location</label> <select class="form-control" name="location">
					<option>${student.location}</option>
					<option value="Dhaka">Dhaka</option>
					<option value="Khulna">Khulna</option>
					<option value="Bogura">Bogura</option>
				</select>

			</div>


			<div>

				Gender
				<div class="form-check-inline">
					<input class="form-check-input" type="radio" name="gender"
						id="male" value="Male" ${student.gender == "Male"?"checked":""}><label
						class="form-check-label" for="male"> Male </label>
				</div>
				<div class="form-check-inline">
					<input class="form-check-input" type="radio" name="gender"
						id="female" value="Female"
						${student.gender == "Female"?"checked":""}> <label
						class="form-check-label" for="female"> Female </label>
				</div>

			</div>



			<div>
				Skill :
				<div class="form-check-inline">
					<input class="form-check-input" type="checkbox" value="Html"
						id="html" name="skill" ${student.skill.contains("Html")?"checked":""}> 
						<label class="form-check-label"
						for="html">Html </label>
				</div>
				<div class="form-check-inline">
					<input class="form-check-input" type="checkbox" value="Java"
						id="java" name="skill" ${student.skill.contains("Java")?"checked":""}> 
						<label class="form-check-label"
						for="java"> Java </label>
				</div>
				<div class="form-check-inline">
					<input class="form-check-input" type="checkbox" value="Php"
						id="php" name="skill" ${student.skill.contains("Php")?"checked":""}> 
						<label class="form-check-label"
						for="php"> Php </label>
				</div>


			</div>


			<div>
				<label>Address :</label>
				<textarea rows="" cols="" class="form-control" name="address"
					placeholder="Type Your Address">${student.address}</textarea>

			</div>



			<div class="mt-3">
				<button class="btn btn-primary" type="submit">Update</button>

			</div>

		</form>

		<a href="/show">Student List</a>



	</div>





</body>
</html>