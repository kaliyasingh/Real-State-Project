package com.ritik.dao;

import java.util.List;

import com.ritik.pojo.Student;

public interface StudentDao {
	
	public boolean addStudent(Student sd);
	public boolean updateStudent(Student sd);
	public boolean deletetudent(Student sd);
    public List<Student> getAllStudent();
    public Student searchStudent(Student sd);


}
