# ⚡ StackHire — Job Portal MVC App

A simple job portal web application built with **Spring Boot MVC**, **JSP**, and **MySQL**.
Employers can post jobs and candidates can browse openings by role, skill, or tech stack.

---

## ✨ Features

- 🏠 Beautiful responsive home page UI
- ➕ Add / post new jobs
- 📋 View all available jobs
- 🔍 Search jobs by role, description, and tech stack
- 🗄️ MySQL database integration
- 🏗️ MVC architecture

---

## 🛠️ Tech Stack

| Layer      | Technology                              |
|------------|-----------------------------------------|
| Backend    | Java 21, Spring Boot 3.4.4, Spring MVC  |
| Frontend   | JSP, JSTL, CSS                          |
| Database   | MySQL                                   |
| Build Tool | Maven (WAR packaging)                   |
| Other      | Lombok, Tomcat Jasper                   |

---

## 📁 Project Structure

```
src/main/java/com/stackhire/jobportal/
├── controller/
│   └── HomeController.java
├── model/
│   └── JobPost.java
├── repos/
│   └── JobRepo.java
├── service/
│   └── JobService.java
└── JobAppApplication.java

src/main/webapp/
├── views/
│   ├── home.jsp
│   ├── viewalljobs.jsp
│   ├── addjob.jsp
│   └── success.jsp
└── style.css
```

---

## 📌 Pages

| URL            | Description      |
|----------------|------------------|
| `/home`        | Landing page     |
| `/viewalljobs` | Browse all jobs  |
| `/addjob`      | Post a new job   |


## 🎯 About This Project

This is a learning-based project built to understand how a real-world 
web application works using Spring Boot MVC.

**Key concepts practiced:**

- MVC architecture and request flow
- CRUD operations with MySQL
- Database connectivity using Spring JDBC
- Controller → Service → Repository layer structure
- Real project structure used in industry

> This is not a production-level application — it is built purely 
> for learning and understanding Spring Boot fundamentals.
