
package com.deepak.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.deepak.model.Student;
import com.deepak.service.StudentService;

@RestController
public class StudentController 
{
	@Autowired
	private StudentService stdservice;
	
	@PostMapping("/req1")
	public Student save(@RequestBody Student studentModel,Model m)
	{
		Student s1=stdservice.saveStudent(studentModel);
		return s1;
		
		
	}
	
	@PutMapping("/update/{id}")
	public Student updateStudent(@RequestBody Student studentModel,@PathVariable Integer id)
	{
	/*	Student s2=stdservice.getStudent(id);
		Student s3=new Student();
		s3.setId(id);
		s3.setName(studentModel.getName());
		s3.setHindi(studentModel.getHindi());
		s3.setTelugu(studentModel.getTelugu());
		s3.setEnglish(studentModel.getEnglish());
		s3.setMaths(studentModel.getMaths());
		s3.setScience(studentModel.getScience());
		s3.setSocial(studentModel.getSocial());
		s3.setTotal_marks(studentModel.getTotal_marks());
		s3.setAverage(studentModel.getAverage());
		s3.setGrade(studentModel.getGrade());
		
		Student st=stdservice.updateStudent(s3);
		return st;  */
		
		return stdservice.updateStudent(studentModel, id);
	}
	
	@GetMapping("/get/{id}")
	public Student findById(@PathVariable Integer id)
	{
		Student s4=stdservice.getStudent(id);
		/*Student s5=new Student();
		if(s4!=null)
		{
			BeanUtils.copyProperties(s4, s5);
		}*/
		return s4;
		
	}
	@GetMapping("/getAll")
	public List<Student> findAll()
	{
		List<Student> s6=stdservice.getAllStudent();
		/*List<Student> s7=new ArrayList<>();
		Student s8=null;
		for(Student entity:s6)
		{
			Student s9=new Student();
			BeanUtils.copyProperties(entity, s9);
			s7.add(s9);
		}*/
		return s6;
	}
	 @DeleteMapping("/delete/{id}")
		public void deleteStudent(@PathVariable Integer id)
		{
			stdservice.deleteStudent(id);
		}
	
	

}
