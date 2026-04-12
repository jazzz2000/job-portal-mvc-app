package com.stackhire.jobportal.repos;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.stackhire.jobportal.model.JobPost;

@Repository
public class JobRepo {

	@Autowired
	private JdbcTemplate jdbcTemplate;

	public void addJobPost(JobPost job) {
		String sql = "INSERT INTO job_post VALUES (?, ?, ?, ?, ?)";

		jdbcTemplate.update(sql, job.getPostId(), job.getPostProfile(), job.getPostDesc(), job.getReqExperience(),
				String.join(",", job.getPostTechStack()));
	}

	public List<JobPost> returnAllJobPosts() {
		String sql = "SELECT * FROM job_post";

		return jdbcTemplate.query(sql,
				(rs, rowNum) -> new JobPost(rs.getInt("post_id"), rs.getString("post_profile"),
						rs.getString("post_desc"), rs.getInt("req_experience"),
						Arrays.asList(rs.getString("post_tech_stack").split(","))));
	}

	public List<JobPost> searchJobs(String keyword) {
		String sql = "SELECT * FROM job_post WHERE " + "post_profile LIKE ? OR " + "post_desc LIKE ? OR "
				+ "post_tech_stack LIKE ?";

		String searchKeyword = "%" + keyword + "%";

		return jdbcTemplate.query(sql, new Object[] { searchKeyword, searchKeyword, searchKeyword },
				(rs, rowNum) -> new JobPost(rs.getInt("post_id"), rs.getString("post_profile"),
						rs.getString("post_desc"), rs.getInt("req_experience"),
						Arrays.asList(rs.getString("post_tech_stack").split(","))));
	}

	public JobPost getJobById(int id) {
		String sql = "SELECT * FROM job_post WHERE post_id = ?";

		return jdbcTemplate.queryForObject(sql, new Object[] { id },
				(rs, rowNum) -> new JobPost(rs.getInt("post_id"), rs.getString("post_profile"),
						rs.getString("post_desc"), rs.getInt("req_experience"),
						Arrays.asList(rs.getString("post_tech_stack").split(","))));
	}

	public void updateJob(JobPost job) {
		String sql = "UPDATE job_post SET post_profile=?, post_desc=?, req_experience=?, post_tech_stack=? WHERE post_id=?";

		jdbcTemplate.update(sql, job.getPostProfile(), job.getPostDesc(), job.getReqExperience(),
				String.join(",", job.getPostTechStack()), job.getPostId());
	}

	public void deleteJob(int id) {
		String sql = "DELETE FROM job_post WHERE post_id=?";
		jdbcTemplate.update(sql, id);
	}
}