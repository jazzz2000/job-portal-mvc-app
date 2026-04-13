<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Edit Job — StackHire</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="style.css">
<link rel="icon"
	href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><text y='.9em' font-size='90'>⚡</text></svg>">
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg">
		<div class="container">
			<a class="navbar-brand" href="home">⚡ StackHire</a>
		</div>
	</nav>

	<!-- Hero -->
	<div class="page-hero">
		<h1>
			Update <span class="highlight">Job Post</span>
		</h1>
		<p>Edit the job details below</p>
	</div>

	<!-- Form -->
	<div class="container mt-page mb-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card p-4">

					<form action="updateJob" method="post">

						<!-- hidden ID -->
						<input type="hidden" name="postId" value="${jobPost.postId}" />

						<div class="mb-3">
							<label class="form-label">Job Profile</label> <input type="text"
								class="form-control" name="postProfile"
								value="${jobPost.postProfile}" required>
						</div>

						<div class="mb-3">
							<label class="form-label">Description</label>
							<textarea class="form-control" name="postDesc" rows="4" required>${jobPost.postDesc}</textarea>
						</div>

						<div class="mb-3">
							<label class="form-label">Experience Required</label> <input
								type="number" class="form-control" name="reqExperience"
								value="${jobPost.reqExperience}" required>
						</div>

						<div class="mb-3">
							<label class="form-label">Tech Stack</label>
							<div class="tech-chip-group">

								<input type="checkbox" id="java" name="postTechStack"
									value="Java"hidden
            ${jobPost.postTechStack.contains('Java') ? 'checked' : ''}>
								<label for="java" class="tech-chip">Java</label> <input
									type="checkbox" id="python" name="postTechStack" value="Python"hidden
            ${jobPost.postTechStack.contains('Python') ? 'checked' : ''}>
								<label for="python" class="tech-chip">Python</label> <input
									type="checkbox" id="springboot" name="postTechStack"
									value="Spring Boot"hidden
            ${jobPost.postTechStack.contains('SpringBoot') ? 'checked' : ''}>
								<label for="springboot" class="tech-chip">Spring Boot</label> <input
									type="checkbox" id="react" name="postTechStack" value="React"hidden
            ${jobPost.postTechStack.contains('React') ? 'checked' : ''}>
								<label for="react" class="tech-chip">React</label> <input
									type="checkbox" id="aws" name="postTechStack" value="AWS"hidden
            ${jobPost.postTechStack.contains('AWS') ? 'checked' : ''}>
								<label for="aws" class="tech-chip">AWS</label> <input
									type="checkbox" id="docker" name="postTechStack" value="Docker"hidden
            ${jobPost.postTechStack.contains('Docker') ? 'checked' : ''}>
								<label for="docker" class="tech-chip">Docker</label>

							</div>
						</div>

						<button type="submit" class="btn btn-primary">Update Job
						</button>

						<a href="viewalljobs" class="btn btn-warning ms-2"> Cancel </a>

					</form>

				</div>
			</div>
		</div>
	</div>

	<footer class="site-footer"> © 2026 StackHire </footer>

</body>
</html>