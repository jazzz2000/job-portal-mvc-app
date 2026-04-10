<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home — StackHire</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	__integrity__="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	__crossorigin__="anonymous">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

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
					<li class="nav-item"><a class="nav-link active" href="home">Home</a></li>
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

	<div class="page-hero">
		<h1>
			Find Your <span class="highlight">Dream Job</span>
		</h1>
		<p>StackHire — where top tech talent meets great opportunities</p>
	</div>
	
	<div class="container mt-4">
    <form action="searchJobs" method="get" class="d-flex justify-content-center">
        <input type="text" name="keyword" class="form-control w-50"
               placeholder="Search by role, skill, tech stack">
        <button type="submit" class="btn btn-primary ms-2">Search</button>
    </form>
</div>

	<div class="container mt-page mb-5">
		<div class="oval-box-container">

			<div class="oval-box" onclick="window.location='viewalljobs'">
				<div style="font-size: 2rem; margin-bottom: 0.5rem">📋</div>
				<h2>Browse All Jobs</h2>
				<p>Explore current openings</p>
				<a href="viewalljobs" class="btn btn-warning mt-2">View All Jobs</a>
			</div>

			<div class="oval-box" onclick="window.location='addjob'">
				<div style="font-size: 2rem; margin-bottom: 0.5rem">✍️</div>
				<h2>Post a Job</h2>
				<p>Reach top tech talent</p>
				<a href="addjob" class="btn btn-primary mt-2">Add Job</a>
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
		__integrity__="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		__crossorigin__="anonymous"></script>
</body>
</html>