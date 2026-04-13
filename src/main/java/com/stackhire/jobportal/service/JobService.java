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

	public JobPost getJobById(int id) {
		return repo.getJobById(id);
	}

	public void updateJob(JobPost job) {
		repo.updateJob(job);
	}

	public void deleteJob(int id) {
		repo.deleteJob(id);
	}

	public boolean existsById(int id) {
		return repo.existsById(id);
	}
}
