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

	@GetMapping( "/")
	public String home() {
		return "home";
	}
	@GetMapping("/home")
	public String homePage()
	{
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
		service.addJob(jobPost);
		model.addAttribute("jobPost", jobPost);
		return "success";
	}

}
