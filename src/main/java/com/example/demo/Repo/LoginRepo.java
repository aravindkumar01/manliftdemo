package com.example.demo.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Login;

@Repository

public interface LoginRepo extends JpaRepository< Login, Long>{

	List<Login> findByUsernameAndPassword(String username,String password);
	
}
