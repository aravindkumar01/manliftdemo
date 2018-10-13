package com.example.demo.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Entitty.Field2;

@Repository
public interface Field2Repo extends JpaRepository<Field2, Long>{

}
