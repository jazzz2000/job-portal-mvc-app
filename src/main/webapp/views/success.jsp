<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.stackhire.jobportal.model.JobPost"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Job Post Details — StackHire</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon"
	href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>⚡</text></svg>">
</head>
<body>

	<!-- Navbar same as home.jsp -->
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="home">⚡ StackHire</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon" style="filter: invert(1)"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="viewalljobs">All
							Jobs</a></li>
					<li class="nav-item"><a class="nav-link" href="addjob">Post
							Job</a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://mail.google.com/mail/?view=cm&fs=1&to=pavuluri.kumarjaswanth2000@gmail.com"
						target="_blank"> Contact </a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Hero section -->
	<div class="page-hero">
		<h1>
			Job <span class="highlight">Posted Successfully</span>
		</h1>
		<p>Review the job details below</p>
	</div>

	<!-- Job details card -->
	<div class="container mt-page mb-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-body">

						<h2 class="section-title">Job Details</h2>

						<h4 class="mb-3">${jobPost.postProfile}</h4>

						<p>
							<strong>Job ID:</strong> ${jobPost.postId}
						</p>

						<p>
							<strong>Description:</strong> ${jobPost.postDesc}
						</p>

						<p>
							<strong>Experience Required:</strong> ${jobPost.reqExperience}
							years
						</p>

						<p>
							<strong>Tech Stack Required:</strong>
						</p>

						<div class="mb-3">
							<c:forEach var="tech" items="${jobPost.postTechStack}">
								<span class="tech-badge">${tech}</span>
							</c:forEach>
						</div>

						<a href="viewalljobs" class="btn btn-warning mt-3"> View All
							Jobs </a> <a href="home" class="btn btn-primary mt-3 ms-2"> Back
							to Home </a>

					</div>
				</div>
			</div>
		</div>
	</div>

	<footer class="site-footer">
		© 2026 StackHire &middot; <a
			href="https://mail.google.com/mail/?view=cm&fs=1&to=pavuluri.kumarjaswanth2000@gmail.com"
			target="_blank"> stackhire.com </a>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>