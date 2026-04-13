package com.stackhire.jobportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.stackhire.jobportal.model.JobPost;
import com.stackhire.jobportal.service.JobService;

@Controller
public class HomeController {
	@Autowired
	private JobService service;

	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/home")
	public String homePage() {
		return "home";
	}

	@GetMapping("/viewalljobs")
	public String viewalljobs(Model model) {
		List<JobPost> jobPosts = service.returnAllJobPosts();
		model.addAttribute("jobPosts", jobPosts);

		return "viewalljobs";
	}

	@GetMapping("/addjob")
	public String addJob() {
		return "addjob";
	}

	@GetMapping("/searchJobs")
	public String searchJobs(@RequestParam("keyword") String keyword, Model model) {
		List<JobPost> jobPosts = service.searchJobs(keyword);
		model.addAttribute("jobPosts", jobPosts);
		return "viewalljobs";
	}

	@PostMapping("/handleForm")
	public String handleForm(@ModelAttribute JobPost jobPost, Model model) {
		if (service.existsById(jobPost.getPostId())) {
			model.addAttribute("errorMessage",
					"⚠️ Job ID " + jobPost.getPostId() + " already exists. Please use a different ID.");
			model.addAttribute("jobPost", jobPost);
			return "addjob";
		}
		service.addJob(jobPost);
		model.addAttribute("jobPost", jobPost);
		return "success";
	}

	@GetMapping("/editJob")
	public String editJob(@RequestParam("id") int id, Model model) {
		JobPost jobPost = service.getJobById(id);
		model.addAttribute("jobPost", jobPost);
		return "editjob";
	}

	@PostMapping("/updateJob")
	public String updateJob(@ModelAttribute JobPost jobPost) {
		service.updateJob(jobPost);
		return "redirect:/viewalljobs";
	}

	@GetMapping("/deleteJob")
	public String deleteJob(@RequestParam("id") int id) {
		service.deleteJob(id);
		return "redirect:/viewalljobs";
	}

}
