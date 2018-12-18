package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Field3;

@Repository
public interface Field3Repo extends JpaRepository<Field3, Long> {

	@Query("select f from Field3 f where f.username=:username and f.date_site=:date_site")
	Field3 find(String username,String date_site);
}
