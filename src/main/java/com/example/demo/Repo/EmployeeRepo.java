package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Employee;

@Repository

public interface EmployeeRepo extends JpaRepository<Employee, Long>{
	

List<Employee> findByDoj(String doj);
List<Employee> findByName(String name);


}
