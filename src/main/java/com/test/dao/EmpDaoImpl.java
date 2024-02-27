package com.test.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.test.entity.Empdetails;

@Repository
public class EmpDaoImpl implements EmpDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int saveEmpdetails(Empdetails empdetails) {
		int i = (int) hibernateTemplate.save(empdetails);
		
		return i;
	}

	
	public Empdetails getEmpdetailsbyID(int id) {
		Empdetails emp = hibernateTemplate.get(Empdetails.class, id);
		return emp;
	}


	public List<Empdetails> getAllEmpdetails() {

		List<Empdetails> list =hibernateTemplate.loadAll(Empdetails.class);
		return list;
	}

	@Transactional
	public void update(Empdetails empdetails) {
		hibernateTemplate.update(empdetails);
		
	}

	@Transactional
	public void deleteEmpdetails(int id) {
		Empdetails emp = hibernateTemplate.get(Empdetails.class, id);
		hibernateTemplate.delete(emp);
		
	}

	
}
