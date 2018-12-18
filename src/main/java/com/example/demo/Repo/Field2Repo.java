package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Field2;

@Repository
public interface Field2Repo extends JpaRepository<Field2, Long>{

	List<Field2> findByUsername(String username);
	
	@Query("select f from Field2 f where f.username=:username and f.date_site=:date_site")
	Field2 find(String username,String date_site);
}
