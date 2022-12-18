package com.deepak.service;

import java.util.List;



import com.deepak.model.Student;


public interface StudentService
{
	public Student saveStudent(Student student);
	public Student updateStudent(Student student);
	public void deleteStudent(Integer id);
	public Student getStudent(Integer id);
	public List<Student>getAllStudent();

}
