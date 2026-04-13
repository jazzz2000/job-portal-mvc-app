<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>All Jobs — StackHire</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon"
	href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>⚡</text></svg>">
</head>
<body>

	<!-- Navbar -->
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
					<li class="nav-item"><a class="nav-link" href="home">Home</a>
					</li>
					<li class="nav-item"><a class="nav-link active"
						href="viewalljobs">All Jobs</a></li>
					<li class="nav-item"><a class="nav-link" href="addjob">Post
							Job</a></li>
					<li class="nav-item"><a class="nav-link"
						href="https://mail.google.com/mail/?view=cm&fs=1&to=pavuluri.kumarjaswanth2000@gmail.com"
						target="_blank">Contact</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Hero Section -->
	<div class="page-hero">
		<h1>
			Explore <span class="highlight">Available Jobs</span>
		</h1>
		<p>Find the right opportunity for your next career move</p>
	</div>

	<!-- Job List -->
	<div class="container mt-page mb-5">
		<span class="section-title">Current Openings</span>

		<ab:forEach var="jobPost" items="${jobPosts}">

			<div class="job-card">

				<div class="job-avatar">${jobPost.postProfile.substring(0,1)}
				</div>

				<div class="job-left">
					<h5>${jobPost.postProfile}</h5>
					<p>
						<strong>Job ID:</strong> ${jobPost.postId}
					</p>

					<p>
						<strong>Description:</strong> ${jobPost.postDesc}
					</p>

					<span class="job-exp-badge"> ${jobPost.reqExperience} Years
						Experience </span>

					<div class="mt-2">
						<strong style="font-size: 0.8rem;">Tech Stack:</strong><br>

						<ab:forEach var="tech" items="${jobPost.postTechStack}">
							<span class="tech-badge">${tech}</span>
						</ab:forEach>
					</div>
				</div>
				<div class="job-right">
					<a href="editJob?id=${jobPost.postId}"
						class="icon-btn edit-btn me-2" title="Edit Job"> <i
						class="bi bi-pencil-square"></i>
					</a> <a href="deleteJob?id=${jobPost.postId}"
						class="icon-btn delete-btn" title="Delete Job"
						onclick="return confirm('Are you sure you want to delete this job?')">
						<i class="bi bi-trash"></i>
					</a>
				</div>
			</div>
		</ab:forEach>
	</div>

	<!-- Footer -->
	<footer class="site-footer">
		© 2026 StackHire &middot; <a
			href="https://mail.google.com/mail/?view=cm&fs=1&to=pavuluri.kumarjaswanth2000@gmail.com"
			target="_blank">stackhire.com</a>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>

</body>
</html>