package com.stackhire.jobportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.stackhire.jobportal.model.JobPost;
import com.stackhire.jobportal.repos.JobRepo;

@Service
public class JobService {
	@Autowired
	private JobRepo repo;

	public void addJob(JobPost jobpost) {
		repo.addJobPost(jobpost);
	}

	public List<JobPost> searchJobs(String keyword) {
		return repo.searchJobs(keyword);
	}

	public List<JobPost> returnAllJobPosts() {
		return repo.returnAllJobPosts();
	}

}
