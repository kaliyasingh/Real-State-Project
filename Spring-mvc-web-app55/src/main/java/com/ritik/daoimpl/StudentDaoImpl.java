package com.ritik.daoimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.ritik.dao.StudentDao;
import com.ritik.pojo.Student;

@Component
public class StudentDaoImpl implements StudentDao {
	
	private JdbcTemplate jTemplate;
	
   @Autowired
	public void setjTemplate(JdbcTemplate jTemplate) {
		this.jTemplate = jTemplate;
	}

	@Override
	public boolean addStudent(Student sd) {
		int count = jTemplate.update("insert into student values(?,?,?)",
				    new Object[] {sd.getRollno(),sd.getName(),sd.getMarks()});
		if(count>0)
			return true;
		else
			return false;
	}

	@Override
	public boolean updateStudent(Student sd) {
		int count = jTemplate.update("update student set name = ?, marks = ?, where rollno = ?",
			    new Object[] {sd.getName(),sd.getMarks(),sd.getRollno()});
	    if(count>0)
	    	return true;
    	else
		    return false;
    }

	@Override
	public boolean deletetudent(Student sd) {
		int count = jTemplate.update("delete from student where rollno = ?",
				  sd.getRollno());
	    if(count>0)
	    	return true;
    	else
		    return false;
	}

	@Override
	public List<Student> getAllStudent() {
	List<Student>lst = jTemplate.query("select * from student",
			new BeanPropertyRowMapper<Student>(Student.class));	
	      return lst;
	
	}

	@Override
	public Student searchStudent(Student sd) {
		Student sd1 = jTemplate.queryForObject("select * from student where rollno = ?",
				 new BeanPropertyRowMapper<Student>(Student.class),sd.getRollno());
		return sd1;
	}

}
