package com.example.demo.Repo;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Field1;

@Repository
public interface Field1Repo extends JpaRepository<Field1, Long>{

@Query("select f from Field1 f where f.username=:username and f.date_site=:date_site")
Field1 find(String username,String date_site);
	

}
