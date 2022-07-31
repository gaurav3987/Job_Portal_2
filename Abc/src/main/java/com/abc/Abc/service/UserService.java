package com.abc.Abc.service;

import java.util.List;

import com.abc.Abc.dto.AppliedJob;
import com.abc.Abc.dto.Jobs;
import com.abc.Abc.dto.Users;

public interface UserService {
	public void AddUserDetails(Users usr);
	public List<Users> showAllUser();
	public List<Users> getByKeyword(String keyword);
	public List<Users> getAllUsers();
	public Users showUser(String userNamee);
	public void deleteData(int userId);
	public Users SearchUser(int d);
	public Users viewProfile(String username);
	public String addJobs(Jobs job);
	public List<Jobs> showJobs();
	public void addAppliedUser(AppliedJob applyjob);
	}
