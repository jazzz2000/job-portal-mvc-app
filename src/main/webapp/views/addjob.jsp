<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Post a Job — StackHire</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">
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
					<li class="nav-item"><a class="nav-link" href="home">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="viewalljobs">All
							Jobs</a></li>
					<li class="nav-item"><a class="nav-link active" href="addjob">Post
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
			Post a <span class="highlight">New Job</span>
		</h1>
		<p>Fill in the details below to reach top tech talent</p>
	</div>

	<div class="container mt-page mb-5" style="max-width: 720px;">
		<div class="card">
			<div class="card-body">
				<span class="section-title">Job Details</span>

				<form:form action="handleForm" method="post"
					modelAttribute="jobPost">
					<div class="row g-3">

						<div class="col-md-6">
							<label for="postId" class="form-label">Post ID</label> <input
								type="text" class="form-control" id="postId" name="postId"
								placeholder="e.g. JOB-001" required>
						</div>

						<div class="col-md-6">
							<label for="postProfile" class="form-label">Job Title /
								Profile</label> <input type="text" class="form-control" id="postProfile"
								name="postProfile" placeholder="e.g. Senior Java Developer"
								required>
						</div>

						<div class="col-12">
							<label for="postDesc" class="form-label">Job Description</label>
							<textarea class="form-control" id="postDesc" name="postDesc"
								rows="3" placeholder="Describe the role and responsibilities..."
								required></textarea>
						</div>

						<div class="col-md-6">
							<label for="reqExperience" class="form-label">Required
								Experience (years)</label> <input type="number" class="form-control"
								id="reqExperience" name="reqExperience" placeholder="e.g. 3"
								min="0" required>
						</div>

						<div class="col-md-6">
							<label class="form-label">Tech Stack</label>

							<div class="tech-chip-group">

								<input type="checkbox" id="java" name="postTechStack"
									value="Java" hidden> <label for="java"
									class="tech-chip">Java</label> <input type="checkbox"
									id="javascript" name="postTechStack" value="JavaScript" hidden>
								<label for="javascript" class="tech-chip">JavaScript</label> <input
									type="checkbox" id="typescript" name="postTechStack"
									value="TypeScript" hidden> <label for="typescript"
									class="tech-chip">TypeScript</label> <input type="checkbox"
									id="python" name="postTechStack" value="Python" hidden>
								<label for="python" class="tech-chip">Python</label> <input
									type="checkbox" id="go" name="postTechStack" value="Go" hidden>
								<label for="go" class="tech-chip">Go</label> <input
									type="checkbox" id="kotlin" name="postTechStack" value="Kotlin"
									hidden> <label for="kotlin" class="tech-chip">Kotlin</label>

								<input type="checkbox" id="react" name="postTechStack"
									value="React" hidden> <label for="react"
									class="tech-chip">React</label> <input type="checkbox"
									id="angular" name="postTechStack" value="Angular" hidden>
								<label for="angular" class="tech-chip">Angular</label> <input
									type="checkbox" id="springboot" name="postTechStack"
									value="Spring Boot" hidden> <label for="springboot"
									class="tech-chip">Spring Boot</label> <input type="checkbox"
									id="nodejs" name="postTechStack" value="Node.js" hidden>
								<label for="nodejs" class="tech-chip">Node.js</label> <input
									type="checkbox" id="docker" name="postTechStack" value="Docker"
									hidden> <label for="docker" class="tech-chip">Docker</label>

								<input type="checkbox" id="kubernetes" name="postTechStack"
									value="Kubernetes" hidden> <label for="kubernetes"
									class="tech-chip">Kubernetes</label> <input type="checkbox"
									id="aws" name="postTechStack" value="AWS" hidden> <label
									for="aws" class="tech-chip">AWS</label> <input type="checkbox"
									id="azure" name="postTechStack" value="Azure" hidden> <label
									for="azure" class="tech-chip">Azure</label> <input
									type="checkbox" id="gcp" name="postTechStack"
									value="Google Cloud" hidden> <label for="gcp"
									class="tech-chip">Google Cloud</label>

							</div>

							<div class="form-text mt-2"
								style="font-size: .75rem; color: #9ca3af;">Select one or
								more technologies</div>
						</div>

						<div class="col-12">
							<div class="form-actions">
								<button type="submit" class="btn btn-primary action-btn">
									Post Job</button>

								<a href="home" class="btn btn-outline-secondary action-btn">
									Cancel </a>
							</div>
						</div>
					</div>
				</form:form>
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
		crossorigin="anonymous"></script>
</body>
</html>