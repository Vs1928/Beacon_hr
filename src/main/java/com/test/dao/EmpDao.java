package com.test.dao;

import java.util.List;

import com.test.entity.Empdetails;

public interface EmpDao {
	
	public int saveEmpdetails(Empdetails empdetails);
	
	public Empdetails getEmpdetailsbyID (int id);
	
	public List<Empdetails> getAllEmpdetails();
	
	public void update(Empdetails empdetails);
	
	public void deleteEmpdetails(int id);
	

}
